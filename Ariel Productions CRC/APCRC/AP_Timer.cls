VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AP_Timer"
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
'//::|ññ| FILENAME :: AP_Timer.cls                            |ññ|::
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

Private Type LARGE_INTEGER
    LowPart As Long
    HighPart As Long
End Type

Private m_StopTime As Currency        '--Interval at which the timer was started
Private m_StartTime As Currency       '--Interval at which the timer was stopped
Private m_Resolution As Currency      '--The resolution of the timer
Private m_Frequency As LARGE_INTEGER  '--The frequency of the timer
Private m_HardwareSupport As Boolean  '--See if the query performance counter can be used

Private Declare Function timeGetTime Lib "winmm.dll" () As Long
Private Declare Function QueryPerformanceCounter Lib "kernel32" (lpPerformanceCount As LARGE_INTEGER) As Long
Private Declare Function QueryPerformanceFrequency Lib "kernel32" (lpFrequency As LARGE_INTEGER) As Long
Private Declare Sub CopyMemory Lib "kernel32.dll" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)

Private Sub Class_Initialize()

    m_Resolution = 0
    Call InitializeTimer

End Sub

Private Function InitializeTimer()

    '--If the timer has not already been initialized
    If m_Resolution = 0 Then
        m_HardwareSupport = (QueryPerformanceFrequency(m_Frequency) <> 0) '--Check for hardware support while getting the frequency
        Call GetResolution                                                '--Get the timers resolution
    End If

End Function

Private Sub GetResolution()

    '--If hardware is supported then compute the resolution from the large integer
    '--otherwise just set the resolution to 1000
    If m_HardwareSupport Then
        Call CopyMemory(m_Resolution, m_Frequency, LenB(m_Frequency))
        m_Resolution = m_Resolution * 10000
    Else
        m_Resolution = 1000
    End If

End Sub

Public Sub StartTimer()
    Dim StartTime As LARGE_INTEGER

    '--Make sure the timer was initialized to get the resolution
    Call InitializeTimer
    
    '--If hardware is supported then use QueryPerformanceCounter(*) to get the start time
    '--otherwise use timeGetTime(*) to get the current start time
    If m_HardwareSupport Then
        Call QueryPerformanceCounter(StartTime)
        Call CopyMemory(m_StartTime, StartTime, LenB(StartTime))
        m_StartTime = m_StartTime * 10000
    Else
        m_StartTime = timeGetTime()
    End If

End Sub

Public Sub StopTimer()
    Dim StopTime As LARGE_INTEGER

    '--If hardware is supported then use QueryPerformanceCounter(*) to get the stop time
    '--otherwise use timeGetTime(*) to get the current stop time
    If m_HardwareSupport Then
        Call QueryPerformanceCounter(StopTime)
        Call CopyMemory(m_StopTime, StopTime, LenB(StopTime))
        m_StopTime = m_StopTime * 10000
    Else
        m_StopTime = timeGetTime()
    End If

End Sub

Public Function GetElapsedTime() As Single

    '--Make sure everything was initialized and called correctly
    If m_StartTime = 0 Or m_StopTime = 0 Or m_Resolution = 0 Then
        GetElapsedTime = 0
        Exit Function
    End If
    
    '--Compute the elapsed time from when the timer was started
    GetElapsedTime = CSng(((m_StopTime - m_StartTime) / CSng(m_Resolution)))

End Function

Public Function GetElapsedTimeString() As String
    
    '--Format the elapsed time and return a formatted string
    GetElapsedTimeString = Format$(GetElapsedTime(), "##0.000000")

End Function
