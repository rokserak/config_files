@echo off

@rem custom prompt
chcp 65001 > nul
prompt 😋 

@rem bash like aliases
doskey pwd=cd
doskey ls=dir $*
doskey la=dir $*
doskey ll=dir $*
doskey clear=cls

doskey vi=nvim $*

@rem run command with powershell
doskey ps=pwsh -Command $*

doskey ubuntu=ubuntu2004 $*
doskey suse=openSUSE-Leap-15.2 $*

@rem add visual studio tools to path
doskey vs="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

@rem add conda to path
set PATH=%PATH%;%USERPROFILE%\miniconda3\condabin;

