VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FF8080&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Personal Alarm Clock ..."
   ClientHeight    =   5775
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6480
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5775
   ScaleWidth      =   6480
   StartUpPosition =   1  'CenterOwner
   Begin VB.Timer Timer3 
      Interval        =   5
      Left            =   4440
      Top             =   120
   End
   Begin VB.TextBox txtFileName 
      Height          =   285
      Left            =   480
      TabIndex        =   3
      Text            =   "c:\windows\media\chimes.wav"
      Top             =   4560
      Width           =   2415
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Stop Clock"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1800
      TabIndex        =   0
      Top             =   3360
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Set Alarm"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   480
      TabIndex        =   1
      Top             =   3360
      Width           =   1095
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H80000009&
      Caption         =   "Alarm Clock Options"
      Height          =   2055
      Left            =   240
      TabIndex        =   10
      Top             =   3000
      Width           =   6015
      Begin VB.PictureBox Picture1 
         BackColor       =   &H80000009&
         Height          =   1575
         Left            =   4560
         Picture         =   "Form1.frx":0000
         ScaleHeight     =   1515
         ScaleWidth      =   1275
         TabIndex        =   12
         Top             =   240
         Width           =   1335
      End
      Begin VB.Shape Shape2 
         Height          =   1575
         Left            =   2760
         Top             =   240
         Width           =   1650
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000009&
         Caption         =   "Alarm_Clock 2.0 was created by Bobby Carter, a 16 year old Visual Basics Programmer!"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1215
         Left            =   2880
         TabIndex        =   13
         Top             =   480
         Width           =   1455
      End
      Begin VB.Label Label3 
         BackColor       =   &H80000009&
         Caption         =   "Alarm Alert:"
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
         TabIndex        =   11
         Top             =   1200
         Width           =   1095
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H80000009&
      Caption         =   "Current System Time"
      Height          =   1695
      Left            =   240
      TabIndex        =   8
      Top             =   1200
      Width           =   6015
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   2280
         TabIndex        =   15
         Top             =   1200
         Width           =   3495
      End
      Begin VB.TextBox time 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   645
         Left            =   240
         TabIndex        =   9
         Top             =   360
         Width           =   5535
      End
      Begin VB.Label Label5 
         BackColor       =   &H80000009&
         Caption         =   "The Alarm will go off at:"
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
         TabIndex        =   14
         Top             =   1200
         Width           =   2295
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000009&
      Caption         =   "Automatically Shutdown"
      Height          =   855
      Left            =   240
      TabIndex        =   4
      Top             =   240
      Width           =   6015
      Begin VB.CommandButton Command1 
         Caption         =   "Enable"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4800
         TabIndex        =   7
         Top             =   240
         Width           =   1095
      End
      Begin VB.CheckBox Check1 
         BackColor       =   &H80000009&
         Caption         =   "Shutdown"
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
         TabIndex        =   5
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label Label6 
         BackColor       =   &H80000009&
         Caption         =   "e.g. 12:30:59"
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
         Left            =   3480
         TabIndex        =   16
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label Label2 
         BackColor       =   &H80000009&
         Caption         =   "24-Hour Format     /"
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
         Left            =   1560
         TabIndex        =   6
         Top             =   360
         Width           =   1695
      End
   End
   Begin VB.Timer Timer2 
      Left            =   4440
      Top             =   5520
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   5160
      Top             =   5640
   End
   Begin VB.Shape Shape1 
      Height          =   255
      Left            =   240
      Top             =   5280
      Width           =   6015
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Alarm not set!"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   5280
      Width           =   6015
   End
   Begin VB.Shape Shape3 
      BackStyle       =   1  'Opaque
      Height          =   5535
      Left            =   120
      Top             =   120
      Width           =   6255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
Command1.Enabled = True
End Sub

Private Sub Command1_Click()
Form1.Visible = False
Form4.Visible = True
End Sub

Private Sub Command2_Click()
If Me.Enabled = True Then Timer1.Enabled = False
End Sub

Private Sub Command3_Click()
Form2.Visible = True
End Sub

Private Sub Form_Load()
Timer1.Enabled = True
Form4.Visible = True
Form4.Visible = False
End Sub

Private Sub Timer1_Timer()
timenow = Now
time.Text = Format(timenow, "hh:mm:ss")
If Form1.time.Text = Form2.Text1.Text Then
    Screen.MousePointer = vbHourglass
    gbResults = PlaySound(txtFileName.Text, 0, SND_ASYNC + SND_LOOP)
    Screen.MousePointer = vbDefault
    Form1.BackColor = H000000FF
Timer1.Enabled = False
End If
End Sub

Private Sub Timer3_Timer()
Text2.Text = Form2.Text1.Text
Timer3.Enabled = False
End Sub
