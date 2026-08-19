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
        Label2 = New Label()
        Local_IP_picture = New TextBox()
        debug = New RichTextBox()
        Send_image = New Button()
        ComboBox1 = New ComboBox()
        Load = New Button()
        PictureBox1 = New PictureBox()
        TabPage2 = New TabPage()
        TabPage3 = New TabPage()
        Enable_Get_From_Device = New CheckBox()
        Label5 = New Label()
        SizeY = New TextBox()
        Label6 = New Label()
        SizeX = New TextBox()
        Label4 = New Label()
        ResolutionY = New TextBox()
        Label3 = New Label()
        ResolutionX = New TextBox()
        Get_From_Device = New Button()
        Label1 = New Label()
        TextBox1 = New TextBox()
        TabPage4 = New TabPage()
        TabControl1.SuspendLayout()
        TabPage1.SuspendLayout()
        CType(PictureBox1, ComponentModel.ISupportInitialize).BeginInit()
        TabPage3.SuspendLayout()
        SuspendLayout()
        ' 
        ' TabControl1
        ' 
        TabControl1.Controls.Add(TabPage1)
        TabControl1.Controls.Add(TabPage2)
        TabControl1.Controls.Add(TabPage3)
        TabControl1.Controls.Add(TabPage4)
        TabControl1.Location = New Point(2, 2)
        TabControl1.Name = "TabControl1"
        TabControl1.SelectedIndex = 0
        TabControl1.Size = New Size(802, 452)
        TabControl1.TabIndex = 0
        ' 
        ' TabPage1
        ' 
        TabPage1.Controls.Add(Label2)
        TabPage1.Controls.Add(Local_IP_picture)
        TabPage1.Controls.Add(debug)
        TabPage1.Controls.Add(Send_image)
        TabPage1.Controls.Add(ComboBox1)
        TabPage1.Controls.Add(Load)
        TabPage1.Controls.Add(PictureBox1)
        TabPage1.Location = New Point(4, 24)
        TabPage1.Name = "TabPage1"
        TabPage1.Padding = New Padding(3)
        TabPage1.Size = New Size(794, 424)
        TabPage1.TabIndex = 0
        TabPage1.Text = "Images"
        TabPage1.UseVisualStyleBackColor = True
        ' 
        ' Label2
        ' 
        Label2.AutoSize = True
        Label2.Location = New Point(6, 372)
        Label2.Name = "Label2"
        Label2.Size = New Size(150, 15)
        Label2.TabIndex = 6
        Label2.Text = "Local IP of the machien =>"
        ' 
        ' Local_IP_picture
        ' 
        Local_IP_picture.BorderStyle = BorderStyle.None
        Local_IP_picture.Location = New Point(152, 372)
        Local_IP_picture.Name = "Local_IP_picture"
        Local_IP_picture.Size = New Size(100, 16)
        Local_IP_picture.TabIndex = 5
        ' 
        ' debug
        ' 
        debug.Location = New Point(489, 236)
        debug.Name = "debug"
        debug.Size = New Size(293, 182)
        debug.TabIndex = 4
        debug.Text = ""
        ' 
        ' Send_image
        ' 
        Send_image.Location = New Point(6, 265)
        Send_image.Name = "Send_image"
        Send_image.Size = New Size(75, 23)
        Send_image.TabIndex = 3
        Send_image.Text = "Send"
        Send_image.UseVisualStyleBackColor = True
        ' 
        ' ComboBox1
        ' 
        ComboBox1.DropDownStyle = ComboBoxStyle.DropDownList
        ComboBox1.FormattingEnabled = True
        ComboBox1.Items.AddRange(New Object() {"Normal", "Sepia", "Black&white"})
        ComboBox1.Location = New Point(87, 236)
        ComboBox1.Name = "ComboBox1"
        ComboBox1.Size = New Size(121, 23)
        ComboBox1.TabIndex = 2
        ' 
        ' Load
        ' 
        Load.Location = New Point(6, 235)
        Load.Name = "Load"
        Load.Size = New Size(75, 23)
        Load.TabIndex = 1
        Load.Text = "Load"
        Load.UseVisualStyleBackColor = True
        ' 
        ' PictureBox1
        ' 
        PictureBox1.Location = New Point(6, 6)
        PictureBox1.Name = "PictureBox1"
        PictureBox1.Size = New Size(782, 223)
        PictureBox1.TabIndex = 0
        PictureBox1.TabStop = False
        ' 
        ' TabPage2
        ' 
        TabPage2.Location = New Point(4, 24)
        TabPage2.Name = "TabPage2"
        TabPage2.Padding = New Padding(3)
        TabPage2.Size = New Size(794, 424)
        TabPage2.TabIndex = 1
        TabPage2.Text = "Video"
        TabPage2.UseVisualStyleBackColor = True
        ' 
        ' TabPage3
        ' 
        TabPage3.Controls.Add(Enable_Get_From_Device)
        TabPage3.Controls.Add(Label5)
        TabPage3.Controls.Add(SizeY)
        TabPage3.Controls.Add(Label6)
        TabPage3.Controls.Add(SizeX)
        TabPage3.Controls.Add(Label4)
        TabPage3.Controls.Add(ResolutionY)
        TabPage3.Controls.Add(Label3)
        TabPage3.Controls.Add(ResolutionX)
        TabPage3.Controls.Add(Get_From_Device)
        TabPage3.Controls.Add(Label1)
        TabPage3.Controls.Add(TextBox1)
        TabPage3.Location = New Point(4, 24)
        TabPage3.Name = "TabPage3"
        TabPage3.Padding = New Padding(3)
        TabPage3.Size = New Size(794, 424)
        TabPage3.TabIndex = 2
        TabPage3.Text = "Settings"
        TabPage3.UseVisualStyleBackColor = True
        ' 
        ' Enable_Get_From_Device
        ' 
        Enable_Get_From_Device.AutoSize = True
        Enable_Get_From_Device.Location = New Point(3, 223)
        Enable_Get_From_Device.Name = "Enable_Get_From_Device"
        Enable_Get_From_Device.Size = New Size(151, 19)
        Enable_Get_From_Device.TabIndex = 11
        Enable_Get_From_Device.Text = "Enable Get From Device"
        Enable_Get_From_Device.UseVisualStyleBackColor = True
        ' 
        ' Label5
        ' 
        Label5.AutoSize = True
        Label5.Location = New Point(43, 183)
        Label5.Name = "Label5"
        Label5.Size = New Size(37, 15)
        Label5.TabIndex = 10
        Label5.Text = "Size Y"
        ' 
        ' SizeY
        ' 
        SizeY.Location = New Point(180, 183)
        SizeY.Name = "SizeY"
        SizeY.Size = New Size(100, 23)
        SizeY.TabIndex = 9
        ' 
        ' Label6
        ' 
        Label6.AutoSize = True
        Label6.Location = New Point(43, 146)
        Label6.Name = "Label6"
        Label6.Size = New Size(37, 15)
        Label6.TabIndex = 8
        Label6.Text = "Size X"
        ' 
        ' SizeX
        ' 
        SizeX.Location = New Point(180, 143)
        SizeX.Name = "SizeX"
        SizeX.Size = New Size(100, 23)
        SizeX.TabIndex = 7
        ' 
        ' Label4
        ' 
        Label4.AutoSize = True
        Label4.Location = New Point(27, 98)
        Label4.Name = "Label4"
        Label4.Size = New Size(73, 15)
        Label4.TabIndex = 6
        Label4.Text = "Resolution Y"
        ' 
        ' ResolutionY
        ' 
        ResolutionY.Location = New Point(180, 98)
        ResolutionY.Name = "ResolutionY"
        ResolutionY.Size = New Size(100, 23)
        ResolutionY.TabIndex = 5
        ' 
        ' Label3
        ' 
        Label3.AutoSize = True
        Label3.Location = New Point(27, 58)
        Label3.Name = "Label3"
        Label3.Size = New Size(73, 15)
        Label3.TabIndex = 4
        Label3.Text = "Resolution X"
        ' 
        ' ResolutionX
        ' 
        ResolutionX.Location = New Point(180, 58)
        ResolutionX.Name = "ResolutionX"
        ResolutionX.Size = New Size(100, 23)
        ResolutionX.TabIndex = 3
        ' 
        ' Get_From_Device
        ' 
        Get_From_Device.ForeColor = SystemColors.ActiveCaptionText
        Get_From_Device.Location = New Point(180, 223)
        Get_From_Device.Name = "Get_From_Device"
        Get_From_Device.Size = New Size(100, 23)
        Get_From_Device.TabIndex = 2
        Get_From_Device.Text = "From Device"
        Get_From_Device.UseVisualStyleBackColor = True
        ' 
        ' Label1
        ' 
        Label1.AutoSize = True
        Label1.Location = New Point(6, 17)
        Label1.Name = "Label1"
        Label1.Size = New Size(127, 15)
        Label1.TabIndex = 1
        Label1.Text = "destination ip and port"
        ' 
        ' TextBox1
        ' 
        TextBox1.Location = New Point(180, 14)
        TextBox1.Name = "TextBox1"
        TextBox1.Size = New Size(100, 23)
        TextBox1.TabIndex = 0
        ' 
        ' TabPage4
        ' 
        TabPage4.Location = New Point(4, 24)
        TabPage4.Name = "TabPage4"
        TabPage4.Padding = New Padding(3)
        TabPage4.Size = New Size(794, 424)
        TabPage4.TabIndex = 3
        TabPage4.Text = "About "
        TabPage4.UseVisualStyleBackColor = True
        ' 
        ' Form1
        ' 
        AutoScaleDimensions = New SizeF(7F, 15F)
        AutoScaleMode = AutoScaleMode.Font
        ClientSize = New Size(800, 450)
        Controls.Add(TabControl1)
        Name = "Form1"
        Text = "Wirless sender for display solutions "
        TabControl1.ResumeLayout(False)
        TabPage1.ResumeLayout(False)
        TabPage1.PerformLayout()
        CType(PictureBox1, ComponentModel.ISupportInitialize).EndInit()
        TabPage3.ResumeLayout(False)
        TabPage3.PerformLayout()
        ResumeLayout(False)
    End Sub

    Friend WithEvents TabControl1 As TabControl
    Friend WithEvents TabPage1 As TabPage
    Friend WithEvents Load As Button
    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents TabPage2 As TabPage
    Friend WithEvents TabPage3 As TabPage
    Friend WithEvents TabPage4 As TabPage
    Friend WithEvents ComboBox1 As ComboBox
    Friend WithEvents Label1 As Label
    Friend WithEvents TextBox1 As TextBox
    Friend WithEvents Send_image As Button
    Friend WithEvents Label2 As Label
    Friend WithEvents Local_IP_picture As TextBox
    Friend WithEvents debug As RichTextBox
    Friend WithEvents Get_From_Device As Button
    Friend WithEvents Label3 As Label
    Friend WithEvents ResolutionX As TextBox
    Friend WithEvents Label5 As Label
    Friend WithEvents SizeY As TextBox
    Friend WithEvents Label6 As Label
    Friend WithEvents SizeX As TextBox
    Friend WithEvents Label4 As Label
    Friend WithEvents ResolutionY As TextBox
    Friend WithEvents Enable_Get_From_Device As CheckBox

End Class
