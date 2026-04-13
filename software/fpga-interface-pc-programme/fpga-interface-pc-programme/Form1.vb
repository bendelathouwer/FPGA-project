'port of the test device  == 5000 
'ethernet closes when the form is closed  but we can also close it with the disconnect button
Imports System.Net
Imports System.Net.NetworkInformation
Imports System.Net.Sockets
Imports System.Text
Imports System.IO
Imports System.Threading
Imports System.Threading.Tasks
Imports AForge.Video
Imports AForge.Video.DirectShow
Imports AForge.Imaging.Filters


'here we close the application when the close button is clicked 
Public Class Form1
    'declare some global variables that we will use in the program
    Public Horizonal_matrix_size As Integer '"global" variable for the horizontal size of the led matrix 
    Public Vertical_matrix_size As Integer '"global" variable for the vertical size of the led matrix 
    Public hosetipAddress As String = String.Empty '  for our ip addres 
    Public port As Integer = 0   ' for our port number
    Public textboxInput As String = String.Empty
    Public split() As String
    Public client As TcpClient = Nothing
    Public ns As NetworkStream = Nothing
    Public cts As CancellationTokenSource = Nothing
    Public recvTask As Task = Nothing
    Public videoSource As VideoCaptureDevice
    Public videoSourcePlayer As New AForge.Controls.VideoSourcePlayer

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Find_IP()
    End Sub
    Private Sub close_Click(sender As Object, e As EventArgs) Handles close.Click
        If videoSource IsNot Nothing AndAlso videoSource.IsRunning Then
            videoSource.SignalToStop()
            videoSource.WaitForStop()
        End If

        Application.Exit()

    End Sub
    Private Sub clear_Click(sender As Object, e As EventArgs) Handles clear.Click
        debug.Clear()
    End Sub
    Public Sub Find_IP() ' here we find the local hose 
        Try
            Dim hostIP As String = String.Empty

            For Each ni As NetworkInterface In NetworkInterface.GetAllNetworkInterfaces()
                If ni.OperationalStatus = OperationalStatus.Up _
               AndAlso ni.NetworkInterfaceType <> NetworkInterfaceType.Loopback _
               AndAlso ni.NetworkInterfaceType <> NetworkInterfaceType.Tunnel Then

                    Dim props = ni.GetIPProperties()
                    If props IsNot Nothing AndAlso props.GatewayAddresses IsNot Nothing AndAlso props.GatewayAddresses.Count > 0 Then
                        For Each ua As UnicastIPAddressInformation In props.UnicastAddresses
                            If ua.Address.AddressFamily = AddressFamily.InterNetwork AndAlso Not IPAddress.IsLoopback(ua.Address) Then
                                hostIP = ua.Address.ToString()
                                Exit For
                            End If
                        Next
                    End If
                End If

                If Not String.IsNullOrEmpty(hostIP) Then Exit For
            Next

            If String.IsNullOrEmpty(hostIP) Then
                For Each ip As IPAddress In Dns.GetHostAddresses(Dns.GetHostName())
                    If ip.AddressFamily = AddressFamily.InterNetwork AndAlso Not IPAddress.IsLoopback(ip) Then
                        hostIP = ip.ToString()
                        Exit For
                    End If
                Next
            End If

            local_ip.Text = hostIP
        Catch ex As Exception
            debug.AppendText("Fout bij ophalen host IP-adres: " & ex.Message & vbCrLf)
        End Try
    End Sub

    Private Sub Open_Click(sender As Object, e As EventArgs) Handles Open.Click
        Dim filedialog As New OpenFileDialog
        filedialog.Filter = "Image Files|*.jpg;*.jpeg;*.png;*.bmp;*.gif"
        If filedialog.ShowDialog = DialogResult.OK Then
            PictureBox1.SizeMode = PictureBoxSizeMode.Zoom
            PictureBox1.Image = Image.FromFile(filedialog.FileName)
            debug.AppendText(filedialog.FileName & vbCrLf)
        End If
    End Sub
    Public Sub txtIP_KeyDown(sender As Object, e As KeyEventArgs) Handles IpAdder.KeyDown

        If e.KeyCode = Keys.Enter Then
            textboxInput = IpAdder.Text.ToString()
            split = textboxInput.Split(":"c)
            hosetipAddress = split(0)
            port = split(1) 'when port is not an integer this will throw an exception but we will catch that 

            debug.AppendText("ip address" & hosetipAddress & vbCrLf)
            debug.AppendText("port" & port & vbCrLf)
            e.SuppressKeyPress = True ' voorkomt "ding"-geluid
        End If
    End Sub
    Public Sub Disconnect_Click(sender As Object, e As EventArgs) Handles Disconnect.Click
        EthernetDisconnect()
    End Sub
    Public Sub EthernetDisconnect()
        Try
            ' Stop de receive-loop netjes (als je een CancellationTokenSource gebruikt)
            If cts IsNot Nothing Then
                Try
                    cts.Cancel()
                Catch
                    ' ignore
                End Try
                Try
                    cts.Dispose()
                Catch
                    ' ignore
                End Try
                cts = Nothing
            End If
            ' Sluit netwerkstream en client veilig
            If ns IsNot Nothing Then
                Try
                    ns.Close()
                Catch
                End Try
                ns = Nothing
            End If

            If client IsNot Nothing Then
                Try
                    client.Close()
                Catch
                End Try
                client = Nothing
            End If

            debug.AppendText("Verbinding gesloten" & vbCrLf)
        Catch ex As Exception
            debug.AppendText("Fout bij sluiten verbinding: " & ex.Message & vbCrLf)
        End Try
    End Sub
    Public Sub connecttoclient(ip As String, port As String)
        Try
            Dim portNum As Integer
            If Not Integer.TryParse(port, portNum) Then
                debug.AppendText("Ongeldige poort" & vbCrLf)
                Return
            End If

            If client IsNot Nothing AndAlso client.Connected Then
                debug.AppendText("Al verbonden" & vbCrLf)
                Return
            End If

            client = New TcpClient()
            client.Connect(IPAddress.Parse(ip), portNum)
            ns = client.GetStream()

            ' Stuur eerste bericht (optioneel)
            Dim sendMsg As String = "Hello from client"
            Dim sendData() As Byte = Encoding.UTF8.GetBytes(sendMsg)
            ns.Write(sendData, 0, sendData.Length)

            cts = New CancellationTokenSource()
            Dim token = cts.Token
            recvTask = Task.Run(Sub()
                                    Dim buffer(4095) As Byte
                                    Try
                                        While Not token.IsCancellationRequested AndAlso client IsNot Nothing AndAlso client.Connected
                                            If ns IsNot Nothing AndAlso ns.DataAvailable Then
                                                Dim bytesRead As Integer = ns.Read(buffer, 0, buffer.Length)
                                                If bytesRead = 0 Then Exit While
                                                Dim response As String = Encoding.UTF8.GetString(buffer, 0, bytesRead)
                                                Me.Invoke(Sub() debug.AppendText("Ontvangen: " & response & vbCrLf))
                                            Else
                                                Thread.Sleep(50)
                                            End If
                                        End While
                                    Catch ex As Exception
                                        Me.Invoke(Sub() debug.AppendText("Receive error: " & ex.Message & vbCrLf))
                                    Finally
                                        Me.Invoke(Sub() debug.AppendText("Verbinding verbroken" & vbCrLf))
                                        Try
                                            ns?.Close()
                                            client?.Close()
                                        Catch
                                        End Try
                                        client = Nothing
                                        ns = Nothing
                                        cts = Nothing
                                    End Try
                                End Sub)
        Catch ex As Exception
            debug.AppendText("Fout bij verbinden: " & ex.Message & vbCrLf)
        End Try
    End Sub
    Private Sub Connect_Click(sender As Object, e As EventArgs) Handles Connect.Click
        connecttoclient(hosetipAddress, port)
    End Sub

    Sub Connect_cam_Click(sender As Object, e As EventArgs) Handles Connect_cam.Click
        Dim videoDevices As New FilterInfoCollection(FilterCategory.VideoInputDevice)

        If videoDevices.Count > 0 Then
            videoSource = New VideoCaptureDevice(videoDevices(0).MonikerString)
            AddHandler videoSource.NewFrame, AddressOf Video_NewFrame
            videoSource.Start()
        Else
            DebugCamera.AppendText("Geen webcam gevonden")
        End If
    End Sub
    'maybe find a sutabler way to do this but for now this works and it is not too bad(i think)
    'Also find a libary with a bit more color posebileties because what I have now is a bit basic and it does not look that good but it works for testing the camera feed and the edge detection and stuff like that
    Public Sub Video_NewFrame(sender As Object, eventArgs As NewFrameEventArgs)
        Dim frame As Bitmap = CType(eventArgs.Frame.Clone(), Bitmap)
        Dim sobel As New SobelEdgeDetector()

        If edgedetect.Checked Then
            Dim grayFilter As New Grayscale(0.2125, 0.7154, 0.0721)
            Dim grayImage As Bitmap = grayFilter.Apply(frame)
            Dim edges As Bitmap = sobel.Apply(grayImage)
            CameraFeed.Image = edges
        End If

        If Grayscale.Checked Then
            Dim grayFilter As New Grayscale(0.2125, 0.7154, 0.0721)
            Dim grayImage As Bitmap = grayFilter.Apply(frame)
            CameraFeed.Image = grayImage
        End If

        If Sepia.Checked Then
            Dim frame24 As Bitmap = frame.Clone(New Rectangle(0, 0, frame.Width, frame.Height), Imaging.PixelFormat.Format24bppRgb)
            Dim sepia As New Sepia()
            Dim result As Bitmap = sepia.Apply(frame24)
            CameraFeed.Image = result
        End If

        If Invert.Checked Then
            Dim frame24 As Bitmap = frame.Clone(New Rectangle(0, 0, frame.Width, frame.Height), Imaging.PixelFormat.Format24bppRgb)
            Dim invert As New Invert()
            Dim result As Bitmap = invert.Apply(frame24)
            CameraFeed.Image = result
        End If

        If Normal.Checked Then
            CameraFeed.Image = frame
        End If
    End Sub
    Private Sub Form1_FormClosing(sender As Object, e As FormClosingEventArgs) Handles MyBase.FormClosing
        If videoSource IsNot Nothing AndAlso videoSource.IsRunning Then
            videoSource.SignalToStop()
            videoSource.WaitForStop()

        End If
        Application.Exit()
    End Sub

    Private Sub DisconnectCam_Click(sender As Object, e As EventArgs) Handles DisconnectCam.Click
        If videoSource IsNot Nothing AndAlso videoSource.IsRunning Then
            videoSource.SignalToStop()
            videoSource.WaitForStop()
            DebugCamera.AppendText(" webcam disconnected")
        End If
    End Sub

    Private Sub SendPicture_Click(sender As Object, e As EventArgs) Handles SendPicture.Click

    End Sub

    Private Sub SendCamera_Click(sender As Object, e As EventArgs) Handles SendCamera.Click

    End Sub
End Class