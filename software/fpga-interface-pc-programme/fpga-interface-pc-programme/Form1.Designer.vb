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
        PictureBox2 = New PictureBox()
        RichTextBox1 = New RichTextBox()
        TabControl1.SuspendLayout()
        TabPage1.SuspendLayout()
        CType(PictureBox1, ComponentModel.ISupportInitialize).BeginInit()
        TabPage2.SuspendLayout()
        CType(PictureBox2, ComponentModel.ISupportInitialize).BeginInit()
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
        TabPage2.Controls.Add(RichTextBox1)
        TabPage2.Controls.Add(PictureBox2)
        TabPage2.Location = New Point(4, 24)
        TabPage2.Name = "TabPage2"
        TabPage2.Padding = New Padding(3)
        TabPage2.Size = New Size(827, 466)
        TabPage2.TabIndex = 1
        TabPage2.Text = "TabPage2"
        TabPage2.UseVisualStyleBackColor = True
        ' 
        ' PictureBox2
        ' 
        PictureBox2.Location = New Point(-3, -3)
        PictureBox2.Name = "PictureBox2"
        PictureBox2.Size = New Size(834, 193)
        PictureBox2.TabIndex = 0
        PictureBox2.TabStop = False
        ' 
        ' RichTextBox1
        ' 
        RichTextBox1.Location = New Point(1, 197)
        RichTextBox1.Name = "RichTextBox1"
        RichTextBox1.Size = New Size(823, 126)
        RichTextBox1.TabIndex = 1
        RichTextBox1.Text = ""
        ' 
        ' Form1
        ' 
        AutoScaleDimensions = New SizeF(7F, 15F)
        AutoScaleMode = AutoScaleMode.Font
        ClientSize = New Size(833, 492)
        Controls.Add(TabControl1)
        Name = "Form1"
        Text = "Form1"
        TabControl1.ResumeLayout(False)
        TabPage1.ResumeLayout(False)
        TabPage1.PerformLayout()
        CType(PictureBox1, ComponentModel.ISupportInitialize).EndInit()
        TabPage2.ResumeLayout(False)
        CType(PictureBox2, ComponentModel.ISupportInitialize).EndInit()
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
    Friend WithEvents RichTextBox1 As RichTextBox
    Friend WithEvents PictureBox2 As PictureBox

End Class
