# Microsoft Developer Studio Generated NMAKE File, Based on OpenGL�Ի���.dsp
!IF $(CFG)" == "
CFG=OpenGL�Ի��� - Win32 Pseudo-Debug
!MESSAGE No configuration specified. Defaulting to OpenGL�Ի��� - Win32 Pseudo-Debug.
!ENDIF 

!IF "$(CFG)" != "OpenGL�Ի��� - Win32 Release" && "$(CFG)" != "OpenGL�Ի��� - Win32 Pseudo-Debug"
!MESSAGE ָ�������� "$(CFG)" ��Ч.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "OpenGL�Ի���.mak" CFG="OpenGL�Ի��� - Win32 Pseudo-Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "OpenGL�Ի��� - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "OpenGL�Ի��� - Win32 Pseudo-Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF $(OS)" == "Windows_NT
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "OpenGL�Ի��� - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# ��ʼ�Զ����
OutDir=.\Release
# �����Զ����

ALL : "$(OUTDIR)\OpenGL�Ի���.awx" "D:\program files\Microsoft Visual Studio\Common\MSDev98\Template\OpenGL�Ի���.awx"


CLEAN :
	-@erase "$(INTDIR)\Debug.obj"
	-@erase "$(INTDIR)\OpenGL�Ի���.obj"
	-@erase "$(INTDIR)\OpenGL�Ի���.pch"
	-@erase "$(INTDIR)\OpenGL�Ի���.res"
	-@erase "$(INTDIR)\OpenGL�Ի���Aw.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\OpenGL�Ի���.awx"
	-@erase "$(OUTDIR)\OpenGL�Ի���.exp"
	-@erase "$(OUTDIR)\OpenGL�Ի���.lib"
	-@erase "D:\program files\Microsoft Visual Studio\Common\MSDev98\Template\OpenGL�Ի���.awx"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\OpenGL�Ի���.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\OpenGL�Ի���.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\OpenGL�Ի���.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\OpenGL�Ի���.pdb" /machine:I386 /out:"$(OUTDIR)\OpenGL�Ի���.awx" /implib:"$(OUTDIR)\OpenGL�Ի���.lib" 
LINK32_OBJS= \
	"$(INTDIR)\Debug.obj" \
	"$(INTDIR)\OpenGL�Ի���.obj" \
	"$(INTDIR)\OpenGL�Ի���Aw.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\OpenGL�Ի���.res"

"$(OUTDIR)\OpenGL�Ի���.awx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

OutDir=.\Release
TargetPath=.\Release\OpenGL�Ի���.awx
TargetName=OpenGL�Ի���
InputPath=.\Release\OpenGL�Ի���.awx
SOURCE="$(InputPath)"

"D:\program files\Microsoft Visual Studio\Common\MSDev98\Template\OpenGL�Ի���.awx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat 
	@echo off 
	if not exist "$(MSDEVDIR)\Template\nul" md "$(MSDEVDIR)\Template" 
	copy "$(TargetPath)" "$(MSDEVDIR)\Template" 
	if exist "$(OutDir)\$(TargetName).pdb" copy "$(OutDir)\$(TargetName).pdb" "$(MSDEVDIR)\Template" 
<< 
	

!ELSEIF  "$(CFG)" == "OpenGL�Ի��� - Win32 Pseudo-Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# ��ʼ�Զ����
OutDir=.\Debug
# �����Զ����

ALL : "$(OUTDIR)\OpenGL�Ի���.awx" "D:\program files\Microsoft Visual Studio\Common\MSDev98\Template\OpenGL�Ի���.awx"


CLEAN :
	-@erase "$(INTDIR)\Debug.obj"
	-@erase "$(INTDIR)\OpenGL�Ի���.obj"
	-@erase "$(INTDIR)\OpenGL�Ի���.pch"
	-@erase "$(INTDIR)\OpenGL�Ի���.res"
	-@erase "$(INTDIR)\OpenGL�Ի���Aw.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\OpenGL�Ի���.awx"
	-@erase "$(OUTDIR)\OpenGL�Ի���.exp"
	-@erase "$(OUTDIR)\OpenGL�Ի���.ilk"
	-@erase "$(OUTDIR)\OpenGL�Ի���.lib"
	-@erase "$(OUTDIR)\OpenGL�Ի���.pdb"
	-@erase "D:\program files\Microsoft Visual Studio\Common\MSDev98\Template\OpenGL�Ի���.awx"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Gm /GX /Zi /Od /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_PSEUDO_DEBUG" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\OpenGL�Ի���.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\OpenGL�Ի���.res" /d "NDEBUG" /d "_PSEUDO_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\OpenGL�Ի���.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\OpenGL�Ի���.pdb" /debug /machine:I386 /out:"$(OUTDIR)\OpenGL�Ի���.awx" /implib:"$(OUTDIR)\OpenGL�Ի���.lib" 
LINK32_OBJS= \
	"$(INTDIR)\Debug.obj" \
	"$(INTDIR)\OpenGL�Ի���.obj" \
	"$(INTDIR)\OpenGL�Ի���Aw.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\OpenGL�Ի���.res"

"$(OUTDIR)\OpenGL�Ի���.awx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

OutDir=.\Debug
TargetPath=.\Debug\OpenGL�Ի���.awx
TargetName=OpenGL�Ի���
InputPath=.\Debug\OpenGL�Ի���.awx
SOURCE="$(InputPath)"

"D:\program files\Microsoft Visual Studio\Common\MSDev98\Template\OpenGL�Ի���.awx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat 
	@echo off 
	if not exist "$(MSDEVDIR)\Template\nul" md "$(MSDEVDIR)\Template" 
	copy "$(TargetPath)" "$(MSDEVDIR)\Template" 
	if exist "$(OutDir)\$(TargetName).pdb" copy "$(OutDir)\$(TargetName).pdb" "$(MSDEVDIR)\Template" 
<< 
	

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("OpenGL�Ի���.dep")
!INCLUDE "OpenGL�Ի���.dep"
!ELSE 
!MESSAGE Warning: cannot find "OpenGL�Ի���.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "OpenGL�Ի��� - Win32 Release" || "$(CFG)" == "OpenGL�Ի��� - Win32 Pseudo-Debug"
SOURCE=.\Debug.cpp

"$(INTDIR)\Debug.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\OpenGL�Ի���.pch"


SOURCE=".\OpenGL�Ի���.cpp"

"$(INTDIR)\OpenGL�Ի���.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\OpenGL�Ի���.pch"


SOURCE=".\OpenGL�Ի���.rc"

"$(INTDIR)\OpenGL�Ի���.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=".\OpenGL�Ի���Aw.cpp"

"$(INTDIR)\OpenGL�Ի���Aw.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\OpenGL�Ի���.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "OpenGL�Ի��� - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\OpenGL�Ի���.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\OpenGL�Ի���.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "OpenGL�Ի��� - Win32 Pseudo-Debug"

CPP_SWITCHES=/nologo /MD /W3 /Gm /GX /Zi /Od /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_PSEUDO_DEBUG" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\OpenGL�Ի���.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\OpenGL�Ի���.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\Template\Dialog.cpp
SOURCE=.\Template\OpenGL.cpp
SOURCE=.\Template\root.cpp
SOURCE=.\Template\root.rc
SOURCE=.\Template\StdAfx.cpp

!ENDIF 

