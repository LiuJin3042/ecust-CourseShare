# Microsoft Developer Studio Generated NMAKE File, Based on OpenGL���ĵ�.dsp
!IF $(CFG)" == "
CFG=OpenGL���ĵ� - Win32 Pseudo-Debug
!MESSAGE No configuration specified. Defaulting to OpenGL���ĵ� - Win32 Pseudo-Debug.
!ENDIF 

!IF "$(CFG)" != "OpenGL���ĵ� - Win32 Release" && "$(CFG)" != "OpenGL���ĵ� - Win32 Pseudo-Debug"
!MESSAGE ָ�������� "$(CFG)" ��Ч.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "OpenGL���ĵ�.mak" CFG="OpenGL���ĵ� - Win32 Pseudo-Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "OpenGL���ĵ� - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "OpenGL���ĵ� - Win32 Pseudo-Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF $(OS)" == "Windows_NT
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "OpenGL���ĵ� - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# ��ʼ�Զ����
OutDir=.\Release
# �����Զ����

ALL : "$(OUTDIR)\OpenGL���ĵ�.awx" "D:\program files\Microsoft Visual Studio\Common\MSDev98\Template\OpenGL���ĵ�.awx"


CLEAN :
	-@erase "$(INTDIR)\Debug.obj"
	-@erase "$(INTDIR)\OpenGL���ĵ�.obj"
	-@erase "$(INTDIR)\OpenGL���ĵ�.pch"
	-@erase "$(INTDIR)\OpenGL���ĵ�.res"
	-@erase "$(INTDIR)\OpenGL���ĵ�Aw.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\OpenGL���ĵ�.awx"
	-@erase "$(OUTDIR)\OpenGL���ĵ�.exp"
	-@erase "$(OUTDIR)\OpenGL���ĵ�.lib"
	-@erase "D:\program files\Microsoft Visual Studio\Common\MSDev98\Template\OpenGL���ĵ�.awx"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\OpenGL���ĵ�.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\OpenGL���ĵ�.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\OpenGL���ĵ�.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\OpenGL���ĵ�.pdb" /machine:I386 /out:"$(OUTDIR)\OpenGL���ĵ�.awx" /implib:"$(OUTDIR)\OpenGL���ĵ�.lib" 
LINK32_OBJS= \
	"$(INTDIR)\Debug.obj" \
	"$(INTDIR)\OpenGL���ĵ�.obj" \
	"$(INTDIR)\OpenGL���ĵ�Aw.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\OpenGL���ĵ�.res"

"$(OUTDIR)\OpenGL���ĵ�.awx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

OutDir=.\Release
TargetPath=.\Release\OpenGL���ĵ�.awx
TargetName=OpenGL���ĵ�
InputPath=.\Release\OpenGL���ĵ�.awx
SOURCE="$(InputPath)"

"D:\program files\Microsoft Visual Studio\Common\MSDev98\Template\OpenGL���ĵ�.awx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat 
	@echo off 
	if not exist "$(MSDEVDIR)\Template\nul" md "$(MSDEVDIR)\Template" 
	copy "$(TargetPath)" "$(MSDEVDIR)\Template" 
	if exist "$(OutDir)\$(TargetName).pdb" copy "$(OutDir)\$(TargetName).pdb" "$(MSDEVDIR)\Template" 
<< 
	

!ELSEIF  "$(CFG)" == "OpenGL���ĵ� - Win32 Pseudo-Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# ��ʼ�Զ����
OutDir=.\Debug
# �����Զ����

ALL : "$(OUTDIR)\OpenGL���ĵ�.awx" "D:\program files\Microsoft Visual Studio\Common\MSDev98\Template\OpenGL���ĵ�.awx"


CLEAN :
	-@erase "$(INTDIR)\Debug.obj"
	-@erase "$(INTDIR)\OpenGL���ĵ�.obj"
	-@erase "$(INTDIR)\OpenGL���ĵ�.pch"
	-@erase "$(INTDIR)\OpenGL���ĵ�.res"
	-@erase "$(INTDIR)\OpenGL���ĵ�Aw.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\OpenGL���ĵ�.awx"
	-@erase "$(OUTDIR)\OpenGL���ĵ�.exp"
	-@erase "$(OUTDIR)\OpenGL���ĵ�.ilk"
	-@erase "$(OUTDIR)\OpenGL���ĵ�.lib"
	-@erase "$(OUTDIR)\OpenGL���ĵ�.pdb"
	-@erase "D:\program files\Microsoft Visual Studio\Common\MSDev98\Template\OpenGL���ĵ�.awx"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Gm /GX /Zi /Od /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_PSEUDO_DEBUG" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\OpenGL���ĵ�.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\OpenGL���ĵ�.res" /d "NDEBUG" /d "_PSEUDO_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\OpenGL���ĵ�.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\OpenGL���ĵ�.pdb" /debug /machine:I386 /out:"$(OUTDIR)\OpenGL���ĵ�.awx" /implib:"$(OUTDIR)\OpenGL���ĵ�.lib" 
LINK32_OBJS= \
	"$(INTDIR)\Debug.obj" \
	"$(INTDIR)\OpenGL���ĵ�.obj" \
	"$(INTDIR)\OpenGL���ĵ�Aw.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\OpenGL���ĵ�.res"

"$(OUTDIR)\OpenGL���ĵ�.awx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

OutDir=.\Debug
TargetPath=.\Debug\OpenGL���ĵ�.awx
TargetName=OpenGL���ĵ�
InputPath=.\Debug\OpenGL���ĵ�.awx
SOURCE="$(InputPath)"

"D:\program files\Microsoft Visual Studio\Common\MSDev98\Template\OpenGL���ĵ�.awx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat 
	@echo off 
	if not exist "$(MSDEVDIR)\Template\nul" md "$(MSDEVDIR)\Template" 
	copy "$(TargetPath)" "$(MSDEVDIR)\Template" 
	if exist "$(OutDir)\$(TargetName).pdb" copy "$(OutDir)\$(TargetName).pdb" "$(MSDEVDIR)\Template" 
<< 
	

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("OpenGL���ĵ�.dep")
!INCLUDE "OpenGL���ĵ�.dep"
!ELSE 
!MESSAGE Warning: cannot find "OpenGL���ĵ�.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "OpenGL���ĵ� - Win32 Release" || "$(CFG)" == "OpenGL���ĵ� - Win32 Pseudo-Debug"
SOURCE=.\Debug.cpp

"$(INTDIR)\Debug.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\OpenGL���ĵ�.pch"


SOURCE=".\OpenGL���ĵ�.cpp"

"$(INTDIR)\OpenGL���ĵ�.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\OpenGL���ĵ�.pch"


SOURCE=".\OpenGL���ĵ�.rc"

"$(INTDIR)\OpenGL���ĵ�.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=".\OpenGL���ĵ�Aw.cpp"

"$(INTDIR)\OpenGL���ĵ�Aw.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\OpenGL���ĵ�.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "OpenGL���ĵ� - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\OpenGL���ĵ�.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\OpenGL���ĵ�.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "OpenGL���ĵ� - Win32 Pseudo-Debug"

CPP_SWITCHES=/nologo /MD /W3 /Gm /GX /Zi /Od /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_PSEUDO_DEBUG" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Fp"$(INTDIR)\OpenGL���ĵ�.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\OpenGL���ĵ�.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\Template\ChildFrm.cpp
SOURCE=.\Template\Doc.cpp
SOURCE=.\Template\GLEnabledView.cpp
SOURCE=.\Template\MainFrm.cpp
SOURCE=.\Template\root.cpp
SOURCE=.\Template\root.rc
SOURCE=.\Template\StdAfx.cpp
SOURCE=.\Template\View.cpp

!ENDIF 

