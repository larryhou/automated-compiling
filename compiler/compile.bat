color 0a
echo off
title compiling module...
cls

REM setup sdks
call setup.bat

:loop
cls
echo ------------------------------------------
echo drag one config xml here...
set /p APP=

echo\
if not exist "%APP%" call:create
for %%i in ("%APP%") do set name=%%~ni

if "%name%"=="loader" (
	call:create loader.swf
) else if "%name%"=="main" (
	call:create main.swf
) else if "%name%"=="components" (
	echo ------------------------^< components ^>------------------------
	%compc% -load-config+=config\common.xml -load-config+=config\external.xml -load-config+=%framework% -load-config+="%APP%" -load-config+=settings.xml
) else (
	call:create %name%
)

echo\
echo DONE! PRESS ANY KEY TO CONTINUE...

pause>nul
call:loop

:create
echo ------------------------^< %1 ^>------------------------
%mxmlc% -load-config+=config\common.xml -load-config+=%framework% -load-config+="%APP%" -load-config+=settings.xml


