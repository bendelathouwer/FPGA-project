<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        components = New ComponentModel.Container()
        TabControl1 = New TabControl()
        TabPage1 = New TabPage()
        Label4 = New Label()
        Label3 = New Label()
        Disconnect = New Button()
        Test = New Button()
        Label2 = New Label()
        local_ip = New Label()
        Label1 = New Label()
        IpAdder = New TextBox()
        PictureBox1 = New PictureBox()
        debug = New RichTextBox()
        clear = New Button()
        close = New Button()
        Button4 = New Button()
        Connect = New Button()
        Open = New Button()
        TabPage2 = New TabPage()
        Sepia = New RadioButton()
        Normal = New RadioButton()
        Grayscale = New RadioButton()
        edgedetect = New RadioButton()
        CameraFeed = New PictureBox()
        DebugCamera = New RichTextBox()
        Connect_cam = New Button()
        Timer1 = New Timer(components)
        Invert = New RadioButton()
        TabControl1.SuspendLayout()
        TabPage1.SuspendLayout()
        CType(PictureBox1, ComponentModel.ISupportInitialize).BeginInit()
        TabPage2.SuspendLayout()
        CType(CameraFeed, ComponentModel.ISupportInitialize).BeginInit()
        SuspendLayout()
        ' 
        ' TabControl1
        ' 
        TabControl1.Controls.Add(TabPage1)
        TabControl1.Controls.Add(TabPage2)
        TabControl1.Location = New Point(0, 2)
        TabControl1.Name = "TabControl1"
        TabControl1.SelectedIndex = 0
        TabControl1.Size = New Size(835, 494)
        TabControl1.TabIndex = 0
        ' 
        ' TabPage1
        ' 
        TabPage1.Controls.Add(Label4)
        TabPage1.Controls.Add(Label3)
        TabPage1.Controls.Add(Disconnect)
        TabPage1.Controls.Add(Test)
        TabPage1.Controls.Add(Label2)
        TabPage1.Controls.Add(local_ip)
        TabPage1.Controls.Add(Label1)
        TabPage1.Controls.Add(IpAdder)
        TabPage1.Controls.Add(PictureBox1)
        TabPage1.Controls.Add(debug)
        TabPage1.Controls.Add(clear)
        TabPage1.Controls.Add(close)
        TabPage1.Controls.Add(Button4)
        TabPage1.Controls.Add(Connect)
        TabPage1.Controls.Add(Open)
        TabPage1.Location = New Point(4, 24)
        TabPage1.Name = "TabPage1"
        TabPage1.Padding = New Padding(3)
        TabPage1.Size = New Size(827, 466)
        TabPage1.TabIndex = 0
        TabPage1.Text = "TabPage1"
        TabPage1.UseVisualStyleBackColor = True
        ' 
        ' Label4
        ' 
        Label4.AutoSize = True
        Label4.Location = New Point(96, 413)
        Label4.Name = "Label4"
        Label4.Size = New Size(85, 15)
        Label4.TabIndex = 29
        Label4.Text = "<-IP computer"
        ' 
        ' Label3
        ' 
        Label3.AutoSize = True
        Label3.Location = New Point(502, 376)
        Label3.Name = "Label3"
        Label3.Size = New Size(111, 15)
        Label3.TabIndex = 28
        Label3.Text = "<-IP Remote device"
        ' 
        ' Disconnect
        ' 
        Disconnect.Location = New Point(272, 405)
        Disconnect.Name = "Disconnect"
        Disconnect.Size = New Size(75, 23)
        Disconnect.TabIndex = 27
        Disconnect.Text = "disconnect"
        Disconnect.UseVisualStyleBackColor = True
        ' 
        ' Test
        ' 
        Test.Location = New Point(90, 372)
        Test.Name = "Test"
        Test.Size = New Size(75, 23)
        Test.TabIndex = 26
        Test.Text = "Test"
        Test.UseVisualStyleBackColor = True
        ' 
        ' Label2
        ' 
        Label2.AutoSize = True
        Label2.Location = New Point(90, 413)
        Label2.Name = "Label2"
        Label2.Size = New Size(0, 15)
        Label2.TabIndex = 25
        ' 
        ' local_ip
        ' 
        local_ip.AutoSize = True
        local_ip.Location = New Point(9, 413)
        local_ip.Name = "local_ip"
        local_ip.Size = New Size(0, 15)
        local_ip.TabIndex = 24
        ' 
        ' Label1
        ' 
        Label1.AutoSize = True
        Label1.Location = New Point(496, 376)
        Label1.Name = "Label1"
        Label1.Size = New Size(0, 15)
        Label1.TabIndex = 23
        ' 
        ' IpAdder
        ' 
        IpAdder.Location = New Point(390, 372)
        IpAdder.Name = "IpAdder"
        IpAdder.Size = New Size(100, 23)
        IpAdder.TabIndex = 22
        ' 
        ' PictureBox1
        ' 
        PictureBox1.Location = New Point(0, -1)
        PictureBox1.Name = "PictureBox1"
        PictureBox1.Size = New Size(827, 256)
        PictureBox1.TabIndex = 21
        PictureBox1.TabStop = False
        ' 
        ' debug
        ' 
        debug.Location = New Point(0, 261)
        debug.Name = "debug"
        debug.Size = New Size(827, 105)
        debug.TabIndex = 20
        debug.Text = ""
        ' 
        ' clear
        ' 
        clear.Location = New Point(629, 372)
        clear.Name = "clear"
        clear.Size = New Size(75, 23)
        clear.TabIndex = 19
        clear.Text = "clear"
        clear.UseVisualStyleBackColor = True
        ' 
        ' close
        ' 
        close.Location = New Point(710, 372)
        close.Name = "close"
        close.Size = New Size(75, 23)
        close.TabIndex = 18
        close.Text = "close "
        close.UseVisualStyleBackColor = True
        ' 
        ' Button4
        ' 
        Button4.Location = New Point(171, 372)
        Button4.Name = "Button4"
        Button4.Size = New Size(75, 23)
        Button4.TabIndex = 17
        Button4.Text = "send"
        Button4.UseVisualStyleBackColor = True
        ' 
        ' Connect
        ' 
        Connect.Location = New Point(272, 372)
        Connect.Name = "Connect"
        Connect.Size = New Size(75, 23)
        Connect.TabIndex = 16
        Connect.Text = "connect"
        Connect.UseVisualStyleBackColor = True
        ' 
        ' Open
        ' 
        Open.Location = New Point(9, 372)
        Open.Name = "Open"
        Open.Size = New Size(75, 23)
        Open.TabIndex = 15
        Open.Text = "open"
        Open.UseVisualStyleBackColor = True
        ' 
        ' TabPage2
        ' 
        TabPage2.Controls.Add(Invert)
        TabPage2.Controls.Add(Sepia)
        TabPage2.Controls.Add(Normal)
        TabPage2.Controls.Add(Grayscale)
        TabPage2.Controls.Add(edgedetect)
        TabPage2.Controls.Add(CameraFeed)
        TabPage2.Controls.Add(DebugCamera)
        TabPage2.Controls.Add(Connect_cam)
        TabPage2.Location = New Point(4, 24)
        TabPage2.Name = "TabPage2"
        TabPage2.Padding = New Padding(3)
        TabPage2.Size = New Size(827, 466)
        TabPage2.TabIndex = 1
        TabPage2.Text = "TabPage2"
        TabPage2.UseVisualStyleBackColor = True
        ' 
        ' Sepia
        ' 
        Sepia.AutoSize = True
        Sepia.Location = New Point(199, 330)
        Sepia.Name = "Sepia"
        Sepia.Size = New Size(53, 19)
        Sepia.TabIndex = 12
        Sepia.TabStop = True
        Sepia.Text = "Sepia"
        Sepia.UseVisualStyleBackColor = True
        ' 
        ' Normal
        ' 
        Normal.AutoSize = True
        Normal.Location = New Point(128, 331)
        Normal.Name = "Normal"
        Normal.Size = New Size(65, 19)
        Normal.TabIndex = 11
        Normal.TabStop = True
        Normal.Text = "Normal"
        Normal.UseVisualStyleBackColor = True
        ' 
        ' Grayscale
        ' 
        Grayscale.AutoSize = True
        Grayscale.Location = New Point(348, 331)
        Grayscale.Name = "Grayscale"
        Grayscale.Size = New Size(77, 19)
        Grayscale.TabIndex = 10
        Grayscale.TabStop = True
        Grayscale.Text = "grayscale "
        Grayscale.UseVisualStyleBackColor = True
        ' 
        ' edgedetect
        ' 
        edgedetect.AutoSize = True
        edgedetect.Location = New Point(258, 331)
        edgedetect.Name = "edgedetect"
        edgedetect.Size = New Size(84, 19)
        edgedetect.TabIndex = 9
        edgedetect.TabStop = True
        edgedetect.Text = "edgedetect"
        edgedetect.UseVisualStyleBackColor = True
        ' 
        ' CameraFeed
        ' 
        CameraFeed.Location = New Point(8, 6)
        CameraFeed.Name = "CameraFeed"
        CameraFeed.Size = New Size(809, 316)
        CameraFeed.TabIndex = 8
        CameraFeed.TabStop = False
        ' 
        ' DebugCamera
        ' 
        DebugCamera.Location = New Point(508, 329)
        DebugCamera.Name = "DebugCamera"
        DebugCamera.Size = New Size(313, 131)
        DebugCamera.TabIndex = 3
        DebugCamera.Text = ""
        ' 
        ' Connect_cam
        ' 
        Connect_cam.Location = New Point(8, 329)
        Connect_cam.Name = "Connect_cam"
        Connect_cam.Size = New Size(101, 23)
        Connect_cam.TabIndex = 2
        Connect_cam.Text = "connect camera"
        Connect_cam.UseVisualStyleBackColor = True
        ' 
        ' Invert
        ' 
        Invert.AutoSize = True
        Invert.Location = New Point(128, 356)
        Invert.Name = "Invert"
        Invert.Size = New Size(55, 19)
        Invert.TabIndex = 13
        Invert.TabStop = True
        Invert.Text = "Invert"
        Invert.UseVisualStyleBackColor = True
        ' 
        ' Form1
        ' 
        AutoScaleDimensions = New SizeF(7.0F, 15.0F)
        AutoScaleMode = AutoScaleMode.Font
        ClientSize = New Size(836, 561)
        Controls.Add(TabControl1)
        MinimumSize = New Size(800, 600)
        Name = "Form1"
        Text = "Form1"
        TabControl1.ResumeLayout(False)
        TabPage1.ResumeLayout(False)
        TabPage1.PerformLayout()
        CType(PictureBox1, ComponentModel.ISupportInitialize).EndInit()
        TabPage2.ResumeLayout(False)
        TabPage2.PerformLayout()
        CType(CameraFeed, ComponentModel.ISupportInitialize).EndInit()
        ResumeLayout(False)
    End Sub

    Friend WithEvents TabControl1 As TabControl
    Friend WithEvents TabPage2 As TabPage
    Friend WithEvents TabPage1 As TabPage
    Friend WithEvents Disconnect As Button
    Friend WithEvents Test As Button
    Friend WithEvents Label2 As Label
    Friend WithEvents local_ip As Label
    Friend WithEvents Label1 As Label
    Friend WithEvents IpAdder As TextBox
    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents debug As RichTextBox
    Friend WithEvents clear As Button
    Friend WithEvents close As Button
    Friend WithEvents Button4 As Button
    Friend WithEvents Connect As Button
    Friend WithEvents Open As Button
    Friend WithEvents Label3 As Label
    Friend WithEvents Label4 As Label
    Friend WithEvents Connect_cam As Button
    Friend WithEvents Effect As Button
    Friend WithEvents DebugCamera As RichTextBox
    Friend WithEvents Timer1 As Timer
    Friend WithEvents CameraFeed As PictureBox
    Friend WithEvents edgedetect As RadioButton
    Friend WithEvents Grayscale As RadioButton
    Friend WithEvents Normal As RadioButton
    Friend WithEvents Sepia As RadioButton
    Friend WithEvents Invert As RadioButton

End Class
