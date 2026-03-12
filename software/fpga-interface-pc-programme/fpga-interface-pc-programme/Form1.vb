
Imports System.IO
Imports System.Net
Imports System.Net.Sockets
Imports System.Runtime.InteropServices.JavaScript.JSType
Imports System.Security.Cryptography
Imports System.Text
'here we close the application when the close button is clicked 
Public Class Form1
    Private Sub close_Click(sender As Object, e As EventArgs) Handles close.Click
        Application.Exit()

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
        Try
            Dim ipString As String = ""
            Dim ip As IPAddress = IPAddress.Parse(ipString)
            Dim server As New TcpListener(ip, 1234)
        Catch ex As Exception
            debug.AppendText("Error: " & ex.Message & vbCrLf)
        End Try



    End Sub
    'here we choose our connection type
    'Public Sub connectionmethod_CheckedChanged(sender As Object, e As EventArgs) Handles connectionmethod.CheckedChanged

    '    Dim ConnectionType As Integer = 0 ' to store what type of connection we want to use 
    '    If connectionmethod.Checked Then
    '        ConnectionType = 1
    '        debug.AppendText("Socket mode is selected " & ConnectionType & vbLf)
    '    Else
    '        ConnectionType = 2
    '        debug.AppendText("TCP-IP mode is selected " & ConnectionType & vbLf)

    '    End If
    'End Sub

    'here we read the ip address that we want to connect to and print it in the debug box
    Public Sub txtIP_KeyDown(sender As Object, e As KeyEventArgs) Handles IpAdder.KeyDown
        If e.KeyCode = Keys.Enter Then
            ' catch the validation of the ip address here
            Dim ipAddress As String = IpAdder.Text ' ' for our ip addres 
            debug.AppendText(ipAddress & vbCrLf)
            e.SuppressKeyPress = True ' voorkomt "ding"-geluid
        End If
    End Sub
End Class
