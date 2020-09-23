VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmMain 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "CRC16 / CRC32"
   ClientHeight    =   5415
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7815
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   361
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   521
   StartUpPosition =   2  'CenterScreen
   Begin MSComDlg.CommonDialog CD 
      Left            =   120
      Top             =   6480
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.PictureBox Picture9 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1215
      Left            =   120
      ScaleHeight     =   79
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   503
      TabIndex        =   27
      Top             =   3480
      Width           =   7575
      Begin VB.TextBox txtChecksum 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   6240
         Locked          =   -1  'True
         TabIndex        =   39
         TabStop         =   0   'False
         Top             =   360
         Width           =   1215
      End
      Begin VB.TextBox txtSpeed 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   3
         Left            =   6240
         Locked          =   -1  'True
         TabIndex        =   38
         TabStop         =   0   'False
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox txtSpeed 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   2
         Left            =   6240
         Locked          =   -1  'True
         TabIndex        =   37
         TabStop         =   0   'False
         Top             =   840
         Width           =   1215
      End
      Begin VB.TextBox txtData 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   1
         Left            =   120
         TabIndex        =   29
         Top             =   360
         Width           =   5025
      End
      Begin VB.CommandButton cmdCompute 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Compute Checksum"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   1
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   720
         Width           =   1815
      End
      Begin VB.Label Label18 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "STRING CHECKSUM"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Left            =   120
         TabIndex        =   34
         Top             =   120
         Width           =   1320
      End
      Begin VB.Label Label17 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "RESULT"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Left            =   5400
         TabIndex        =   33
         Top             =   120
         Width           =   510
      End
      Begin VB.Line Line6 
         BorderColor     =   &H00808080&
         X1              =   351
         X2              =   351
         Y1              =   8
         Y2              =   72
      End
      Begin VB.Line Line5 
         BorderColor     =   &H00C0C0C0&
         X1              =   352
         X2              =   352
         Y1              =   8
         Y2              =   72
      End
      Begin VB.Label Label7 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Checksum"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Left            =   5385
         TabIndex        =   32
         Top             =   405
         Width           =   810
      End
      Begin VB.Label Label5 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Speed"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Left            =   5385
         TabIndex        =   31
         Top             =   660
         Width           =   810
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "MB/SEC"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Left            =   5385
         TabIndex        =   30
         Top             =   900
         Width           =   810
      End
   End
   Begin VB.PictureBox Picture8 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H80000008&
      Height          =   135
      Left            =   120
      ScaleHeight     =   105
      ScaleWidth      =   7545
      TabIndex        =   26
      Top             =   4680
      Width           =   7575
   End
   Begin VB.PictureBox Picture7 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1215
      Left            =   120
      ScaleHeight     =   79
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   503
      TabIndex        =   10
      Top             =   2160
      Width           =   7575
      Begin VB.TextBox txtChecksum 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   6240
         Locked          =   -1  'True
         TabIndex        =   36
         TabStop         =   0   'False
         Top             =   360
         Width           =   1215
      End
      Begin VB.TextBox txtSpeed 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   6240
         Locked          =   -1  'True
         TabIndex        =   22
         TabStop         =   0   'False
         Top             =   600
         Width           =   1215
      End
      Begin VB.CommandButton cmdCompute 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Compute Checksum"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   720
         Width           =   1815
      End
      Begin VB.CommandButton cmdFileOpen 
         BackColor       =   &H00FFFFFF&
         Caption         =   "..."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4920
         Style           =   1  'Graphical
         TabIndex        =   18
         Top             =   360
         Width           =   255
      End
      Begin VB.TextBox txtData 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   0
         Left            =   120
         TabIndex        =   17
         Top             =   360
         Width           =   4785
      End
      Begin VB.TextBox txtSpeed 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   6240
         Locked          =   -1  'True
         TabIndex        =   24
         TabStop         =   0   'False
         Top             =   840
         Width           =   1215
      End
      Begin VB.Label txtBufferSize 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "File Size: 0KB"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Index           =   0
         Left            =   2040
         TabIndex        =   35
         Top             =   870
         Width           =   930
      End
      Begin VB.Label Label16 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "MB/SEC"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Left            =   5385
         TabIndex        =   25
         Top             =   900
         Width           =   810
      End
      Begin VB.Label Label15 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Speed"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Left            =   5385
         TabIndex        =   23
         Top             =   660
         Width           =   810
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Checksum"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Left            =   5385
         TabIndex        =   21
         Top             =   405
         Width           =   810
      End
      Begin VB.Line Line4 
         BorderColor     =   &H00C0C0C0&
         X1              =   352
         X2              =   352
         Y1              =   8
         Y2              =   72
      End
      Begin VB.Line Line3 
         BorderColor     =   &H00808080&
         X1              =   351
         X2              =   351
         Y1              =   8
         Y2              =   72
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "RESULT"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Left            =   5400
         TabIndex        =   20
         Top             =   120
         Width           =   510
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "FILE CHECKSUM"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Left            =   120
         TabIndex        =   16
         Top             =   120
         Width           =   1095
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H80000008&
      Height          =   135
      Left            =   120
      ScaleHeight     =   105
      ScaleWidth      =   7545
      TabIndex        =   9
      Top             =   3360
      Width           =   7575
   End
   Begin VB.PictureBox Picture6 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   120
      ScaleHeight     =   31
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   503
      TabIndex        =   6
      Top             =   4800
      Width           =   7575
      Begin VB.CommandButton cmdOK 
         BackColor       =   &H00FFFFFF&
         Caption         =   "OK"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   6285
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   45
         Width           =   1215
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Copyright ©2005 Ariel Productions"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   150
         Left            =   45
         TabIndex        =   7
         Top             =   300
         Width           =   2475
      End
   End
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H80000008&
      Height          =   135
      Left            =   120
      ScaleHeight     =   105
      ScaleWidth      =   7545
      TabIndex        =   5
      Top             =   2040
      Width           =   7575
   End
   Begin VB.PictureBox Picture4 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1095
      Left            =   120
      ScaleHeight     =   71
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   503
      TabIndex        =   4
      Top             =   960
      Width           =   7575
      Begin VB.PictureBox Picture10 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1500
         Left            =   3540
         Picture         =   "frmMain.frx":08CA
         ScaleHeight     =   1500
         ScaleWidth      =   3750
         TabIndex        =   40
         Top             =   -180
         Width           =   3750
      End
      Begin VB.OptionButton optMethod 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Static CRC32"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   15
         Top             =   720
         Value           =   -1  'True
         Width           =   1455
      End
      Begin VB.OptionButton optMethod 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Dynamic CRC32"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   2
         Left            =   1680
         TabIndex        =   14
         Top             =   720
         Width           =   1455
      End
      Begin VB.OptionButton optMethod 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Dynamic CRC16"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   1680
         TabIndex        =   13
         Top             =   360
         Width           =   1455
      End
      Begin VB.OptionButton optMethod 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Static CRC16"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   12
         Top             =   360
         Width           =   1455
      End
      Begin VB.Line Line8 
         BorderColor     =   &H00808080&
         X1              =   216
         X2              =   216
         Y1              =   8
         Y2              =   64
      End
      Begin VB.Line Line7 
         BorderColor     =   &H00C0C0C0&
         X1              =   217
         X2              =   217
         Y1              =   8
         Y2              =   64
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "CRC OPTIONS"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   150
         Left            =   120
         TabIndex        =   11
         Top             =   120
         Width           =   945
      End
   End
   Begin VB.PictureBox Picture3 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H80000008&
      Height          =   135
      Left            =   120
      ScaleHeight     =   105
      ScaleWidth      =   7545
      TabIndex        =   3
      Top             =   840
      Width           =   7575
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   120
      ScaleHeight     =   47
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   503
      TabIndex        =   0
      Top             =   120
      Width           =   7575
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "CRC16/CRC32"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   3450
         TabIndex        =   41
         Top             =   360
         Width           =   1275
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ariel"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   120
         TabIndex        =   2
         Top             =   120
         Width           =   915
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Productions"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1200
         TabIndex        =   1
         Top             =   120
         Width           =   2010
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00C0C0C0&
         X1              =   8
         X2              =   328
         Y1              =   40
         Y2              =   40
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00808080&
         X1              =   8
         X2              =   344
         Y1              =   42
         Y2              =   42
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'//::|ñññññññññññññññññññññññññññññññññññññññññññññññññññññññññññ|::
'//::|ññ ----------------------------------------------------- ññ|::
'//::|ññ|       ~ A R I E L  P R O D U C T I O N S ~          |ññ|::
'//::|ññ|             ~ ALL RIGHTS RESERVED ~                 |ññ|::
'//::|ññ ----------------------------------------------------- ññ|::
'//::|ññ| ~ PROGRAM DATA ~                           /------/ |ññ|::
'//::|ññ|                                          /------/ | |ññ|::
'//::|ññ| PROGRAMMER: James Dougherty              | |    | | |ññ|::
'//::|ññ| COPYRIGHT : ©2005 Ariel Productions      | |    | | |ññ|::
'//::|ññ| TYPE      : N/A                          | /----|-/ |ññ|::
'//::|ññ|                                          /------/   |ññ|::
'//::|ññ ----------------------------------------------------- ññ|::
'//::|ññ| ~ SOURCE DATA ~                                     |ññ|::
'//::|ññ|                                                     |ññ|::
'//::|ññ| FILENAME :: frmMain.frm                             |ññ|::
'//::|ññ| DATE     :: 11.27.05                                |ññ|::
'//::|ññ| VERSION  :: 1.0                                     |ññ|::
'//::|ññ|                                                     |ññ|::
'//::|ññ| HISTORY DATA                                        |ññ|::
'//::|ññ| |                                                   |ññ|::
'//::|ññ| |-N/A                                               |ññ|::
'//::|ññ| |                                                   |ññ|::
'//::|ññ|                                                     |ññ|::
'//::|ññ| BUGS                                                |ññ|::
'//::|ññ| |                                                   |ññ|::
'//::|ññ| |-N/A                                               |ññ|::
'//::|ññ| |                                                   |ññ|::
'//::|ññ|                                                     |ññ|::
'//::|ññ ----------------------------------------------------- ññ|::
'//::|ñññññññññññññññññññññññññññññññññññññññññññññññññññññññññññ|::
Option Explicit

Private m_CRC As AP_CRC
Private m_Timer As AP_Timer

Private Sub Form_Load()

    '--Initialize and create the CRC class object
    If m_CRC Is Nothing Then
        Set m_CRC = New AP_CRC
    End If

    '--Initialize and create the Timer class object
    If m_Timer Is Nothing Then
        Set m_Timer = New AP_Timer
    End If

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)

    '--If the timer class is still in memory then deallocate it
    If Not m_Timer Is Nothing Then
        Set m_Timer = Nothing
    End If
    
    '--If the CRC class is still in memory then deallocate it
    If Not m_CRC Is Nothing Then
        Set m_CRC = Nothing
    End If
    
    '--If the main form is still in memory then deallocate it
    If Not frmMain Is Nothing Then
        Set frmMain = Nothing
    End If

End Sub

Private Sub cmdOK_Click()

    '--Simply unload the main form
    Call Unload(frmMain)

End Sub

Private Sub cmdFileOpen_Click()
    On Local Error Resume Next
    
    '--Simple open dialog procedure
    With CD
        .Filename = ""
        .Filter = "Any File (*.*)|*.*"
        .ShowOpen
    End With

    '--Display the filename and the size of the file
    txtData(0) = CD.Filename
    txtBufferSize(0) = "File Size: " & FormatSize(FileLen(txtData(0)))

End Sub

Private Sub cmdCompute_Click(Index As Integer)
    On Local Error Resume Next
    Dim Method As CRCMETHOD

    '--Check whether to use the static or dynamic CRC method
    If optMethod(1).Value Or optMethod(3).Value Then
        Method = CRCM_STATIC
    ElseIf optMethod(0).Value Or optMethod(2).Value Then
        Method = CRCM_DYNAMIC
    End If

    '--Index 0 = File Checksum
    '--Index 1 = String Checksum
    Select Case Index
        Case 0:
            '--Clear previous values
            txtSpeed(0) = ""
            txtSpeed(1) = ""
            txtChecksum(0) = ""

            '--Validate the filename
            If txtData(0) = "" Then
                txtData(0) = "Please Provide A Filename..."
                Exit Sub
            End If
            
            '--Make sure the file exists
            If Dir$(txtData(0)) = "" Then
                txtData(0) = "Invalid Filename..."
                Exit Sub
            End If

            '--Update the fields to indicate the process is started
            txtSpeed(0) = "Calculating"
            txtSpeed(1) = "Calculating"
            txtChecksum(0) = "Calculating"
            cmdCompute(0).Enabled = False
            cmdCompute(0).Caption = "Please Wait..."
            DoEvents
            
            '--Start profiling the CRC checksum function
            Call m_Timer.StartTimer
            
            '--Check whether to use the CRC16 or CRC32 and call the appropriate function
            If optMethod(0).Value Or optMethod(1).Value Then
                txtChecksum(0) = m_CRC.ComputeCRC16_File(txtData(0).Text, Method)
            Else
                txtChecksum(0) = m_CRC.ComputeCRC32_File(txtData(0).Text, Method)
            End If
            
            '--Stop profiling the CRC checksum function
            Call m_Timer.StopTimer
            DoEvents
            
            '--Update the profile statistics
            '--
            '--NOTE:
            '-- Use 1048576 instead of 1000000 for true computation
            '-- I had seen another use 1000000 on PSC so I left it for this one as well
            txtSpeed(0) = m_Timer.GetElapsedTimeString()
            txtSpeed(1) = Format$(FileLen(txtData(0).Text) / (m_Timer.GetElapsedTime()) / 1000000, "###0.00 MB")
            cmdCompute(0).Caption = "Compute Checksum"
            cmdCompute(0).Enabled = True

        Case 1:
            '--Validate to make sure a string exists
            If (txtData(1)) = "" Then
                txtData(1) = "Please Provide A Sample String..."
                Exit Sub
            End If
            
            '--Start profiling the CRC checksum function
            Call m_Timer.StartTimer
            
            '--Check whether to use the CRC16 or CRC32 and call the appropriate function
            If optMethod(0).Value Or optMethod(1).Value Then
                txtChecksum(1) = m_CRC.ComputeCRC16_String(txtData(1).Text, Method)
            Else
                txtChecksum(1) = m_CRC.ComputeCRC32_String(txtData(1).Text, Method)
            End If
            
            '--Stop profiling the CRC checksum function
            Call m_Timer.StopTimer
            DoEvents
            
            '--Update the profile statistics
            '--
            '--NOTE:
            '-- Use 1048576 instead of 1000000 for true computation
            '-- I had seen another use 1000000 on PSC so I left it for this one as well
            txtSpeed(3) = m_Timer.GetElapsedTimeString()
            txtSpeed(2) = Format$(Len(txtData(1).Text) / (m_Timer.GetElapsedTime()) / 1000000, "###0.00 MB")
    End Select

End Sub

Public Function FormatSize(Size As Currency) As String

    If Size >= 0 And Size <= 1023 Then
        FormatSize = Format(Size, "#,##0.00") & " Bytes"
    ElseIf Size >= 1024 And Size <= 1048575 Then
        FormatSize = Format(Size / 1024, "#,##0.00") & " KB"
    ElseIf Size >= 1048576 And Size <= 1073741823 Then
        FormatSize = Format(Size / 1048576, "#,##0.00") & " MB"
    ElseIf Size > 1073741823 Then
        FormatSize = Format(Size / 1073741824, "#,##0.00") & " GB"
    End If
    
End Function
