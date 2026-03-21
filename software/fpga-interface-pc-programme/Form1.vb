'port of the test device  == 5000 
Imports System.Net
Imports System.Net.Sockets
'here we close the application when the close button is clicked 
Public Class Form1
    ' Matrix grootte
    Public Horizontal_matrix_size As Integer
    Public Vertical_matrix_size As Integer

    ' Huidige client info met dezelfde namen als jij gebruikte
    Private ipAddress As String = ""
    Private port As Integer = 0

    ' Form load
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Find_IP()
    End Sub

    ' Sluit de applicatie
    Private Sub close_Click(sender As Object, e As EventArgs) Handles close.Click
        Application.Exit()
    End Sub

    ' Open afbeelding
    Private Sub Open_Click(sender As Object, e As EventArgs) Handles Open.Click
        Dim filedialog As New OpenFileDialog
        filedialog.Filter = "Image Files|*.jpg;*.jpeg;*.png;*.bmp;*.gif"
        If filedialog.ShowDialog() = DialogResult.OK Then
            PictureBox1.SizeMode = PictureBoxSizeMode.Zoom
            PictureBox1.Image = Image.FromFile(filedialog.FileName)
            debug.AppendText("Bestand geladen: " & filedialog.FileName & vbCrLf)
        End If
    End Sub

    ' Connect knop
    Private Sub Connect_Click(sender As Object, e As EventArgs) Handles Connect.Click
        If ipAddress <> "" And port > 0 Then
            debug.AppendText("Verbinden met " & ipAddress & ":" & port & vbCrLf)
            ' Hier komt later je connectie code
        Else
            debug.AppendText("Geen geldig IP/Port opgegeven." & vbCrLf)
        End If
    End Sub

    ' Lees IP:Port van textbox
    Private Sub txtIP_KeyDown(sender As Object, e As KeyEventArgs) Handles IpAdder.KeyDown
        If e.KeyCode = Keys.Enter Then
            Dim split() As String = IpAdder.Text.Split(":"c)
            If split.Length = 2 Then
                ipAddress = split(0)
                Dim portVal As Integer
                If Integer.TryParse(split(1), portVal) Then
                    port = portVal
                    debug.AppendText("IP address: " & ipAddress & vbCrLf)
                    debug.AppendText("Port: " & port & vbCrLf)
                Else
                    debug.AppendText("Ongeldige poort." & vbCrLf)
                End If
            Else
                debug.AppendText("Gebruik formaat IP:Port" & vbCrLf)
            End If
            e.SuppressKeyPress = True
        End If
    End Sub

    ' Lees lokaal IP
    Public Sub Find_IP()
        Try
            Dim localIP As String = ""
            For Each ip As IPAddress In Dns.GetHostAddresses(Dns.GetHostName())
                ' gebruik IPAddress.IsLoopback, niet ipAddress.IsLoopback
                If ip.AddressFamily = AddressFamily.InterNetwork AndAlso Not ipAddress.IsLoopback(ip) Then
                    localIP = ip.ToString()
                    Exit For ' Stop bij het eerste bruikbare IP-adres
                End If
            Next
            local_ip.Text = localIP
        Catch ex As Exception
            debug.AppendText("Fout bij ophalen IP-adres: " & ex.Message & vbCrLf)
        End Try
    End Sub

    ' Placeholder: toekomstige functie om data van client te ontvangen
    Public Sub recieve_Clientdata()
        ' TODO: implementatie
    End Sub

    ' Placeholder: toekomstige functie om afbeelding te resizen
    Public Sub Resize_Image()
        ' TODO: implementatie
    End Sub

    ' Clear debug
    Private Sub clear_Click(sender As Object, e As EventArgs) Handles clear.Click
        debug.Clear()
    End Sub
End Class