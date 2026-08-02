Imports System.Net
Imports System.Net.NetworkInformation
Imports System.Net.Sockets
Imports System.Text
Imports System.Threading
Imports System.Threading.Tasks
Imports AForge.Video
Imports AForge.Video.DirectShow

Public Class Form1
    Dim screenresx As Integer
    Dim screenresy As Integer
    Dim screensizex As Integer
    Dim screensizey As Integer
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        FindIP()
        ComboBox1.SelectedIndex = 0 ' here we set the default selected index of the ComboBox to 0, which means the first item in the ComboBox will be selected when the form loads.
    End Sub

    Private Sub Load_Click(sender As Object, e As EventArgs) Handles Load.Click
        Dim fileDialog As New OpenFileDialog()
        fileDialog.Filter = "Image Files|*.jpg;*.jpeg;*.png;*.bmp;*.gif"
        If fileDialog.ShowDialog() = DialogResult.OK Then
            PictureBox1.SizeMode = PictureBoxSizeMode.Zoom
            PictureBox1.Image = Image.FromFile(fileDialog.FileName)
        End If
    End Sub
    Public Sub FindIP()
        Try
            ' here we declare the variable with an empty string to store the host IP address.
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

            Local_IP_picture.Text = hostIP
        Catch ex As Exception
            debug.AppendText("Fout bij ophalen host IP-adres: " & ex.Message & vbCrLf)
        End Try
    End Sub
    ' Here we add the logic to enable or disable the user input for the display based
    ' on the fact if we get it from the device or not. If we get it from the device,
    ' we disable the user input and enable the button to get it from the device.
    ' If we don't get it from the device,
    ' we enable the user input and disable the button to get it from the device.
    Private Sub Enable_Get_From_Device_CheckedChanged(sender As Object, e As EventArgs) Handles Enable_Get_From_Device.CheckedChanged
        If Enable_Get_From_Device.Checked Then
            SizeX.ReadOnly = True
            SizeX.BackColor = Color.LightGray
            SizeX.ForeColor = Color.Black
            SizeY.ReadOnly = True
            SizeY.BackColor = Color.LightGray
            SizeY.ForeColor = Color.Black
            ResolutionX.ReadOnly = True
            ResolutionX.BackColor = Color.LightGray
            ResolutionX.ForeColor = Color.Black
            ResolutionY.ReadOnly = True
            ResolutionY.BackColor = Color.LightGray
            ResolutionY.ForeColor = Color.Black
            Get_From_Device.Enabled = True

        Else
            SizeX.ReadOnly = False
            SizeX.BackColor = Color.White
            SizeX.ForeColor = Color.Black
            SizeY.ReadOnly = False
            SizeY.BackColor = Color.White
            SizeY.ForeColor = Color.Black
            ResolutionX.ReadOnly = False
            ResolutionX.BackColor = Color.White
            ResolutionX.ForeColor = Color.Black
            ResolutionY.ReadOnly = False
            ResolutionY.BackColor = Color.White
            ResolutionY.ForeColor = Color.Black
            Get_From_Device.Enabled = False

        End If
    End Sub

    Private Sub Get_From_Device_Click(sender As Object, e As EventArgs) Handles Get_From_Device.Click

    End Sub
End Class
