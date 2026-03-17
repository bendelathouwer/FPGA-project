'port of the test device  == 5000 
Imports System.Net
Imports System.Net.Sockets
'here we close the application when the close button is clicked 
Public Class Form1
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
        Dim imagesize As Integer = 0 'init the image size to zero se we can handel in in the import of the picture
        Dim client As TcpClient
        Dim ipString As String = ""
        Try

            Dim ip As IPAddress = IPAddress.Parse(ipString)
            Dim server As New TcpListener(ip, 5000)
            server.Start()
            debug.AppendText("Server started on " & ipString & ":5000" & vbCrLf)
            client = server.AcceptTcpClient()

        Catch ex As Exception
            debug.AppendText("Error: " & ex.Message & vbCrLf)
        End Try



    End Sub
    'here we read the ip address that we want to connect to and print it in the debug box
    Public Sub txtIP_KeyDown(sender As Object, e As KeyEventArgs) Handles IpAdder.KeyDown
        If e.KeyCode = Keys.Enter Then
            ' catch the validation of the ip address here
            Dim ipAddress As String = IpAdder.Text ' ' for our ip addres 
            debug.AppendText(ipAddress & vbCrLf)
            e.SuppressKeyPress = True ' voorkomt "ding"-geluid
        End If
    End Sub
    ''
    Public Sub recieve_Clientdata()
        Dim listener As New TcpListener(IPAddress.Any, 5000) 'port needs to be dynemic, needs changing 

    End Sub
    Public Sub Find_IP()
        Try
            Dim localIP As String = ""
            For Each ip As IPAddress In Dns.GetHostAddresses(Dns.GetHostName())
                If ip.AddressFamily = AddressFamily.InterNetwork AndAlso Not IPAddress.IsLoopback(ip) Then
                    localIP = ip.ToString()
                    Exit For ' Stop bij het eerste bruikbare IP-adres
                End If
            Next
            local_ip.Text = localIP.ToString()
        Catch ex As Exception
            debug.AppendText("Fout bij ophalen IP-adres: " & ex.Message & vbCrLf)
        End Try
    End Sub
    Public Sub Resize_Image()

    End Sub

End Class
