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
        Open = New Button()
        Connect = New Button()
        close = New Button()
        Button4 = New Button()
        clear = New Button()
        debug = New RichTextBox()
        PictureBox1 = New PictureBox()
        IpAdder = New TextBox()
        local_ip = New Label()
        Label1 = New Label()
        Label2 = New Label()
        Test = New Button()
        CType(PictureBox1, ComponentModel.ISupportInitialize).BeginInit()
        SuspendLayout()
        ' 
        ' Open
        ' 
        Open.Location = New Point(12, 376)
        Open.Name = "Open"
        Open.Size = New Size(75, 23)
        Open.TabIndex = 0
        Open.Text = "open"
        Open.UseVisualStyleBackColor = True
        ' 
        ' Connect
        ' 
        Connect.Location = New Point(93, 376)
        Connect.Name = "Connect"
        Connect.Size = New Size(75, 23)
        Connect.TabIndex = 1
        Connect.Text = "connect"
        Connect.UseVisualStyleBackColor = True
        ' 
        ' close
        ' 
        close.Location = New Point(713, 376)
        close.Name = "close"
        close.Size = New Size(75, 23)
        close.TabIndex = 3
        close.Text = "close "
        close.UseVisualStyleBackColor = True
        ' 
        ' Button4
        ' 
        Button4.Location = New Point(174, 376)
        Button4.Name = "Button4"
        Button4.Size = New Size(75, 23)
        Button4.TabIndex = 2
        Button4.Text = "send"
        Button4.UseVisualStyleBackColor = True
        ' 
        ' clear
        ' 
        clear.Location = New Point(632, 376)
        clear.Name = "clear"
        clear.Size = New Size(75, 23)
        clear.TabIndex = 4
        clear.Text = "clear"
        clear.UseVisualStyleBackColor = True
        ' 
        ' debug
        ' 
        debug.Location = New Point(3, 265)
        debug.Name = "debug"
        debug.Size = New Size(795, 96)
        debug.TabIndex = 5
        debug.Text = ""
        ' 
        ' PictureBox1
        ' 
        PictureBox1.Location = New Point(3, 3)
        PictureBox1.Name = "PictureBox1"
        PictureBox1.Size = New Size(795, 256)
        PictureBox1.TabIndex = 6
        PictureBox1.TabStop = False
        ' 
        ' IpAdder
        ' 
        IpAdder.Location = New Point(354, 377)
        IpAdder.Name = "IpAdder"
        IpAdder.Size = New Size(100, 23)
        IpAdder.TabIndex = 9
        ' 
        ' local_ip
        ' 
        local_ip.AutoSize = True
        local_ip.Location = New Point(12, 417)
        local_ip.Name = "local_ip"
        local_ip.Size = New Size(47, 15)
        local_ip.TabIndex = 11
        local_ip.Text = "local_ip"
        ' 
        ' Label1
        ' 
        Label1.AutoSize = True
        Label1.Location = New Point(460, 381)
        Label1.Name = "Label1"
        Label1.Size = New Size(127, 15)
        Label1.TabIndex = 10
        Label1.Text = "<=IP address of device"
        ' 
        ' Label2
        ' 
        Label2.AutoSize = True
        Label2.Location = New Point(82, 417)
        Label2.Name = "Label2"
        Label2.Size = New Size(145, 15)
        Label2.TabIndex = 12
        Label2.Text = "<=IP address of computer"
        ' 
        ' Test
        ' 
        Test.Location = New Point(255, 376)
        Test.Name = "Test"
        Test.Size = New Size(75, 23)
        Test.TabIndex = 13
        Test.Text = "Test"
        Test.UseVisualStyleBackColor = True
        ' 
        ' Form1
        ' 
        AutoScaleDimensions = New SizeF(7F, 15F)
        AutoScaleMode = AutoScaleMode.Font
        ClientSize = New Size(800, 450)
        Controls.Add(Test)
        Controls.Add(Label2)
        Controls.Add(local_ip)
        Controls.Add(Label1)
        Controls.Add(IpAdder)
        Controls.Add(PictureBox1)
        Controls.Add(debug)
        Controls.Add(clear)
        Controls.Add(close)
        Controls.Add(Button4)
        Controls.Add(Connect)
        Controls.Add(Open)
        Name = "Form1"
        Text = "Form1"
        CType(PictureBox1, ComponentModel.ISupportInitialize).EndInit()
        ResumeLayout(False)
        PerformLayout()
    End Sub

    Friend WithEvents Open As Button
    Friend WithEvents Connect As Button
    Friend WithEvents close As Button
    Friend WithEvents Button4 As Button
    Friend WithEvents clear As Button
    Friend WithEvents debug As RichTextBox
    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents IpAdder As TextBox
    Friend WithEvents local_ip As Label
    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents Test As Button

End Class
