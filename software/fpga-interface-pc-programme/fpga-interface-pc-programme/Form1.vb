'port of the test device  == 5000 
Imports System.Net
Imports System.Net.NetworkInformation
Imports System.Net.Sockets
Imports System.Text
'here we close the application when the close button is clicked 
Public Class Form1
    Public Horizonal_matrix_size As Integer '"global" variable for the horizontal size of the led matrix 
    Public Vertical_matrix_size As Integer '"global" variable for the vertical size of the led matrix 
    ' Huidige client info
    'Public ipAddress As String = ""
    'Public port As Integer = 0
    Public hosetipAddress As String = String.Empty '  for our ip addres 
    Public port As Integer = 0   ' for our port number
    Public textboxInput As String = String.Empty
    Public split() As String

    Private Sub close_Click(sender As Object, e As EventArgs) Handles close.Click
        Application.Exit()

    End Sub
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Find_IP()
    End Sub
    'here we read the image file and display it in the picture box en eventualy resize that shit 
    Private Sub Open_Click(sender As Object, e As EventArgs) Handles Open.Click
        Dim filedialog As New OpenFileDialog
        filedialog.Filter = "Image Files|*.jpg;*.jpeg;*.png;*.bmp;*.gif"
        If filedialog.ShowDialog = DialogResult.OK Then
            PictureBox1.SizeMode = PictureBoxSizeMode.Zoom
            PictureBox1.Image = Image.FromFile(filedialog.FileName)
            debug.AppendText(filedialog.FileName & vbCrLf)
        End If
    End Sub

    Private Sub Connect_Click(sender As Object, e As EventArgs) Handles Connect.Click
        connecttoclient(hosetipAddress, port)
    End Sub
    'here we read the ip address that we want to connect to and print it in the debug box
    Public Sub txtIP_KeyDown(sender As Object, e As KeyEventArgs) Handles IpAdder.KeyDown

        If e.KeyCode = Keys.Enter Then
            textboxInput = IpAdder.Text.ToString()
            split = textboxInput.Split(":"c)
            hosetipAddress = split(0)
            port = split(1)

            debug.AppendText("ip address" & hosetipAddress & vbCrLf)
            debug.AppendText("port" & port & vbCrLf)
            e.SuppressKeyPress = True ' voorkomt "ding"-geluid
        End If
    End Sub
    ''
    Public Sub recieve_Clientdata()



    End Sub
    Public Sub connecttoclient(ip As String, port As String)
        Try
            Using client As New TcpClient()
                client.Connect(IPAddress.Parse(ip), port)
                Using ns As NetworkStream = client.GetStream()
                    Dim sendMsg As String = "Hello from client"
                    Dim sendData() As Byte = Encoding.UTF8.GetBytes(sendMsg)
                    ns.Write(sendData, 0, sendData.Length)

                    ' Lees reactie (blokkeert tot er data is of timeout)
                    ns.ReadTimeout = 3000 ' ms
                    Dim buffer(1024) As Byte
                    Dim bytesRead As Integer = ns.Read(buffer, 0, buffer.Length)
                    Dim response As String = Encoding.UTF8.GetString(buffer, 0, bytesRead)
                    debug.AppendText("Response: " & response)
                End Using
            End Using
        Catch ex As Exception
            debug.AppendText("Fout bij verbinden/communiceren: " & ex.Message)
        End Try
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
    Public Sub Resize_Image()

    End Sub

    Private Sub clear_Click(sender As Object, e As EventArgs) Handles clear.Click
        debug.Clear()
    End Sub
End Class
