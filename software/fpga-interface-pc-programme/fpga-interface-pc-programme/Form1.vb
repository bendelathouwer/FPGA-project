
Imports System.IO
Imports System.Net
Imports System.Net.Sockets
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


    End Sub

    Public Sub connectionmethod_CheckedChanged(sender As Object, e As EventArgs) Handles connectionmethod.CheckedChanged

        Dim ConnectionType As Integer = 0 ' to store what type of connection we want to use 
        If connectionmethod.Checked Then
            ConnectionType = 1
            debug.AppendText("Socket mode is selected " & ConnectionType & vbLf)
        Else
            ConnectionType = 2
            debug.AppendText("TCP-IP mode is selected " & ConnectionType & vbLf)

        End If
    End Sub
    Public Sub txtIP_KeyDown(sender As Object, e As KeyEventArgs) Handles IpAdder.KeyDown
        If e.KeyCode = Keys.Enter Then
            Dim ipAddress As String = IpAdder.Text ' ' for our ip addres 
            debug.AppendText(ipAddress & vbCrLf)
            e.SuppressKeyPress = True ' voorkomt "ding"-geluid
        End If
    End Sub
End Class
