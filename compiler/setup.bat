REM 命令行编译SDK设置工具

set sdk=D:\Program Files\Adobe\Flex Builder 3\sdks\3.2.0
if not exist "%sdk%" (
	set sdk=%ProgramFiles%\Adobe\Adobe Flash Builder 4\sdks\4.0.0
)
if not exist "%sdk%" (
	set sdk=%ProgramFiles%\Adobe\Adobe Flash Builder 4.5\sdks\4.5.0
)
if not exist "%sdk%" (
	set sdk=%ProgramFiles%\Adobe\Adobe Flash Builder 4.6\sdks\4.6.0
)
if not exist "%sdk%" (
	set sdk=%ProgramFiles%\Adobe\Adobe Flash Builder 4.7\sdks\4.6.0
)
if not exist "%sdk%" (
	set sdk=%ProgramFiles%\Adobe\Adobe Flash Builder 4.7\sdks\4.7.0
)

REM SWF编译命令
set mxmlc="%sdk%\bin\mxmlc.exe"

REM SWC编译命令
set compc="%sdk%\bin\compc.exe"

REM ASDOC编译命令
set asdoc="%sdk%\bin\asdoc.exe"

REM 不同开发选择不同的framework配置文件
REM 避免拉取SVN后重复修改framework配置文件
REM set framework=config\framework-%USERNAME%.xml
set framework=config\framework.xml
if not exist "%framework%" echo %framework% does not exist.