color 0a
echo off
title compiling core apps...
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

echo DONE! PRESS ANY KEY TO EXIT...

pause>nul
exit
