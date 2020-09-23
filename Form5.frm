VERSION 5.00
Begin VB.Form Form5 
   BackColor       =   &H00FF8080&
   BorderStyle     =   0  'None
   Caption         =   "Computer Auto-Shutdown ..."
   ClientHeight    =   1935
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4815
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1935
   ScaleWidth      =   4815
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame1 
      BackColor       =   &H00FF8080&
      Caption         =   "Security Options"
      Height          =   735
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   4575
      Begin VB.CommandButton Command1 
         Caption         =   "Click here to hide this program!"
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   360
         Width           =   4095
      End
   End
   Begin VB.Timer Timer2 
      Interval        =   5
      Left            =   960
      Top             =   2280
   End
   Begin VB.Timer Timer1 
      Interval        =   5
      Left            =   480
      Top             =   2280
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   3480
      TabIndex        =   3
      Top             =   600
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   3480
      TabIndex        =   1
      Top             =   240
      Width           =   1095
   End
   Begin VB.Shape Shape2 
      Height          =   1935
      Left            =   0
      Top             =   0
      Width           =   4815
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000009&
      Caption         =   "The current time is now:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   600
      Width           =   2175
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000009&
      Caption         =   "Your Computer will now shut down at:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   3255
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      Height          =   855
      Left            =   120
      Top             =   120
      Width           =   4575
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Me.Visible = False
End Sub

Private Sub dfgfdgd_Click()

End Sub

Private Sub Form_Load()
Text1.Text = Form4.Text1.Text
Timer2.Enabled = False
End Sub

Private Sub Timer1_Timer()
Text2.Text = Form1.time.Text
If Text1.Text = Text2.Text Then
Timer2.Enabled = True
Timer1.Enabled = False
End If
End Sub

Private Sub Timer2_Timer()
Shell "shutdown.exe -s"
Timer2.Enabled = False
End Sub
