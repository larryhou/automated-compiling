REM �����б���SDK���ù���

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

REM SWF��������
set mxmlc="%sdk%\bin\mxmlc.exe"

REM SWC��������
set compc="%sdk%\bin\compc.exe"

REM ASDOC��������
set asdoc="%sdk%\bin\asdoc.exe"

REM ��ͬ����ѡ��ͬ��framework�����ļ�
REM ������ȡSVN���ظ��޸�framework�����ļ�
REM set framework=config\framework-%USERNAME%.xml
set framework=config\framework.xml
if not exist "%framework%" echo %framework% does not exist.