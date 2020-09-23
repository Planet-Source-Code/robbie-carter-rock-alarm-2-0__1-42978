VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00FF8080&
   BorderStyle     =   0  'None
   Caption         =   "Alarm Clock - Created By Bobby Carter"
   ClientHeight    =   2775
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5175
   LinkTopic       =   "Form3"
   ScaleHeight     =   2775
   ScaleWidth      =   5175
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Timer Timer1 
      Interval        =   6000
      Left            =   5040
      Top             =   -120
   End
   Begin VB.TextBox Text4 
      Alignment       =   2  'Center
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
      Left            =   1800
      TabIndex        =   4
      Text            =   "Copyright 2003 Bobby Carter"
      Top             =   2160
      Width           =   3015
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
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
      Left            =   1800
      TabIndex        =   3
      Text            =   "Release Date: 4th February 2003"
      Top             =   1560
      Width           =   3015
   End
   Begin VB.TextBox Text2 
      Alignment       =   2  'Center
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
      Left            =   1800
      TabIndex        =   2
      Text            =   "App Programmer: Bobby Carter"
      Top             =   960
      Width           =   3015
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
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
      Left            =   1800
      TabIndex        =   1
      Text            =   "App Name: Alart Clock 2.0"
      Top             =   360
      Width           =   3015
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H80000009&
      Height          =   1575
      Left            =   360
      Picture         =   "Form3.frx":0000
      ScaleHeight     =   1515
      ScaleWidth      =   1275
      TabIndex        =   0
      Top             =   600
      Width           =   1335
   End
   Begin VB.Shape Shape2 
      Height          =   2775
      Left            =   0
      Top             =   0
      Width           =   5175
   End
   Begin VB.Line Line8 
      X1              =   4920
      X2              =   4920
      Y1              =   2520
      Y2              =   240
   End
   Begin VB.Line Line7 
      X1              =   1680
      X2              =   4920
      Y1              =   240
      Y2              =   240
   End
   Begin VB.Line Line6 
      X1              =   1680
      X2              =   1680
      Y1              =   240
      Y2              =   480
   End
   Begin VB.Line Line5 
      X1              =   240
      X2              =   1680
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Line Line4 
      X1              =   1680
      X2              =   4920
      Y1              =   2520
      Y2              =   2520
   End
   Begin VB.Line Line3 
      X1              =   1680
      X2              =   1680
      Y1              =   2520
      Y2              =   2280
   End
   Begin VB.Line Line2 
      X1              =   240
      X2              =   1680
      Y1              =   2280
      Y2              =   2280
   End
   Begin VB.Line Line1 
      X1              =   240
      X2              =   240
      Y1              =   480
      Y2              =   2280
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      Height          =   2535
      Left            =   120
      Top             =   120
      Width           =   4935
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Click()
Form3.Visible = False
Form1.Visible = True
End Sub

