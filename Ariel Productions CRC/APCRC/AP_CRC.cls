VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AP_CRC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
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
'//::|ññ| FILENAME :: AP_CRC.cls                              |ññ|::
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

Public Enum CRCMETHOD
    CRCM_STATIC = &H1      '--Use static CRC method (Precomputed CRC Table)
    CRCM_DYNAMIC = &H2     '--Use dynamic CRC method (Build the CRC Table for computation)
End Enum

Private m_CRC16 As Integer '--CRC16 return value
Private m_CRC32 As Long    '--CRC32 return value

'--CRC16 API
Private Declare Function ComputeCRC16File Lib "APCRC.dll" Alias "AP_ComputeCRC16_File" (ByVal Filename As String, ByRef CRC16 As Integer, ByVal Method As CRCMETHOD) As Long
Private Declare Function ComputeCRC16String Lib "APCRC.dll" Alias "AP_ComputeCRC16_String" (ByVal Buffer As String, ByRef CRC16 As Integer, ByVal Method As CRCMETHOD) As Long
Private Declare Function ComputeCRC16ByteArray Lib "APCRC.dll" Alias "AP_ComputeCRC16_ByteArray" (ByRef ByteArray As Byte, ByVal Length As Long, ByRef CRC16 As Integer, ByVal Method As CRCMETHOD) As Long

'--CRC32 API
Private Declare Function ComputeCRC32File Lib "APCRC.dll" Alias "AP_ComputeCRC32_File" (ByVal Filename As String, ByRef CRC32 As Long, ByVal Method As CRCMETHOD) As Long
Private Declare Function ComputeCRC32String Lib "APCRC.dll" Alias "AP_ComputeCRC32_String" (ByVal Buffer As String, ByRef CRC32 As Long, ByVal Method As CRCMETHOD) As Long
Private Declare Function ComputeCRC32ByteArray Lib "APCRC.dll" Alias "AP_ComputeCRC32_ByteArray" (ByRef ByteArray As Byte, ByVal Length As Long, ByRef CRC32 As Long, ByVal Method As CRCMETHOD) As Long

Public Function ComputeCRC16_File(ByVal Filename As String, ByVal Method As CRCMETHOD) As String
    
    '--
    '--All of the proceeding functions are setup the same
    '--so refer to here for any and all documentation.
    '--
    
    '--Simply call the APCRC API and if it failed just return "Error"
    '--otherwise return the hexidecimal CRC value
    If (ComputeCRC16File(Filename, m_CRC16, Method) <> 0) Then
        ComputeCRC16_File = "Error"
        Exit Function
    End If
    ComputeCRC16_File = Hex$(m_CRC16)

End Function

Public Function ComputeCRC16_String(ByVal Buffer As String, ByVal Method As CRCMETHOD) As String
    
    If (ComputeCRC16String(Buffer, m_CRC16, Method) <> 0) Then
        ComputeCRC16_String = "Error"
        Exit Function
    End If
    ComputeCRC16_String = Hex$(m_CRC16)

End Function

Public Function ComputeCRC16_ByteArray(ByRef ByteArray() As Byte, ByVal Method As CRCMETHOD) As String

    If (ComputeCRC16ByteArray(ByteArray(0), UBound(ByteArray), m_CRC16, Method) <> 0) Then
        ComputeCRC16_ByteArray = "Error"
        Exit Function
    End If
    ComputeCRC16_ByteArray = Hex$(m_CRC16)

End Function

Public Function ComputeCRC32_File(ByVal Filename As String, ByVal Method As CRCMETHOD) As String
    
    If (ComputeCRC32File(Filename, m_CRC32, Method) <> 0) Then
        ComputeCRC32_File = "Error"
        Exit Function
    End If
    ComputeCRC32_File = Hex$(m_CRC32)

End Function

Public Function ComputeCRC32_String(ByRef Buffer As String, ByVal Method As CRCMETHOD) As String
    
    If (ComputeCRC32String(Buffer, m_CRC32, Method) <> 0) Then
        ComputeCRC32_String = "Error"
        Exit Function
    End If
    ComputeCRC32_String = Hex$(m_CRC32)

End Function

Public Function ComputeCRC32_ByteArray(ByRef ByteArray() As Byte, ByVal Method As CRCMETHOD) As String

    If (ComputeCRC32ByteArray(ByteArray(0), UBound(ByteArray), m_CRC32, Method) <> 0) Then
        ComputeCRC32_ByteArray = "Error"
        Exit Function
    End If
    ComputeCRC32_ByteArray = Hex$(m_CRC32)

End Function
