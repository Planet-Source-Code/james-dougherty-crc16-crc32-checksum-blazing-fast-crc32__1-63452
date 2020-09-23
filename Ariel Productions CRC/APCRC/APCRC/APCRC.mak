# Microsoft Developer Studio Generated NMAKE File, Based on APCRC.dsp
!IF "$(CFG)" == ""
CFG=APCRC - Win32 Debug
!MESSAGE No configuration specified. Defaulting to APCRC - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "APCRC - Win32 Release" && "$(CFG)" != "APCRC - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "APCRC.mak" CFG="APCRC - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "APCRC - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "APCRC - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "APCRC - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\APCRC.dll"


CLEAN :
	-@erase "$(INTDIR)\AP_CRC16.OBJ"
	-@erase "$(INTDIR)\AP_CRC32.OBJ"
	-@erase "$(INTDIR)\APCRC.res"
	-@erase "$(INTDIR)\Main.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\APCRC.dll"
	-@erase "$(OUTDIR)\APCRC.exp"
	-@erase "$(OUTDIR)\APCRC.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "APCRC_EXPORTS" /D "AP_SYSTEM_API" /Fp"$(INTDIR)\APCRC.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\APCRC.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\APCRC.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\APCRC.pdb" /machine:I386 /def:".\APCRC.def" /out:"$(OUTDIR)\APCRC.dll" /implib:"$(OUTDIR)\APCRC.lib" 
DEF_FILE= \
	".\APCRC.def"
LINK32_OBJS= \
	"$(INTDIR)\AP_CRC16.OBJ" \
	"$(INTDIR)\AP_CRC32.OBJ" \
	"$(INTDIR)\Main.obj" \
	"$(INTDIR)\APCRC.res"

"$(OUTDIR)\APCRC.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "APCRC - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\APCRC.dll"


CLEAN :
	-@erase "$(INTDIR)\AP_CRC16.OBJ"
	-@erase "$(INTDIR)\AP_CRC32.OBJ"
	-@erase "$(INTDIR)\APCRC.res"
	-@erase "$(INTDIR)\Main.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\APCRC.dll"
	-@erase "$(OUTDIR)\APCRC.exp"
	-@erase "$(OUTDIR)\APCRC.ilk"
	-@erase "$(OUTDIR)\APCRC.lib"
	-@erase "$(OUTDIR)\APCRC.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "APCRC_EXPORTS" /D "AP_SYSTEM_API" /Fp"$(INTDIR)\APCRC.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\APCRC.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\APCRC.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\APCRC.pdb" /debug /machine:I386 /def:".\APCRC.def" /out:"$(OUTDIR)\APCRC.dll" /implib:"$(OUTDIR)\APCRC.lib" /pdbtype:sept 
DEF_FILE= \
	".\APCRC.def"
LINK32_OBJS= \
	"$(INTDIR)\AP_CRC16.OBJ" \
	"$(INTDIR)\AP_CRC32.OBJ" \
	"$(INTDIR)\Main.obj" \
	"$(INTDIR)\APCRC.res"

"$(OUTDIR)\APCRC.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("APCRC.dep")
!INCLUDE "APCRC.dep"
!ELSE 
!MESSAGE Warning: cannot find "APCRC.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "APCRC - Win32 Release" || "$(CFG)" == "APCRC - Win32 Debug"
SOURCE=.\Main.cpp

"$(INTDIR)\Main.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\AP_CRC16.CPP

"$(INTDIR)\AP_CRC16.OBJ" : $(SOURCE) "$(INTDIR)"


SOURCE=.\AP_CRC32.CPP

"$(INTDIR)\AP_CRC32.OBJ" : $(SOURCE) "$(INTDIR)"


SOURCE=.\APCRC.RC

"$(INTDIR)\APCRC.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)



!ENDIF 

