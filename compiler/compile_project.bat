color 0a
echo off
title compiling whole project...
cls

REM setup sdks
call setup.bat


REM create loader app
echo ------------------------^< loader.swf ^>------------------------
%mxmlc% -load-config+=config\common.xml -load-config+=%framework% -load-config+=apps\loader.xml -load-config+=settings.xml
echo\

REM create main app
echo ------------------------^< main.swf ^>------------------------
%mxmlc% -load-config+=config\common.xml -load-config+=%framework% -load-config+=apps\main.xml -load-config+=settings.xml
echo\

REM create module
for /r module %%i in (*.xml) do (
	call:create module\%%~nxi %%~ni
)

echo DONE! PRESS ANY KEY TO EXIT...
pause>nul
exit

:create
echo ------------------------^< %2 ^>------------------------
%mxmlc% -load-config+=config\common.xml -load-config+=config\external.xml -load-config+=%framework% -load-config+=%1 -load-config+=settings.xml
echo\
