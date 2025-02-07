@echo off

rem Verificamos que se pasen los dos parametros
if "%1"=="" (
	echo Introduce la unidad de disco en el 1º parametro
	exit /b 1
)

if "%2"=="" (
	echo Pon un repositorio en el 2º parametro.
	exit /b 1
)

set DISK=%1
set LOGDIR=%2
set LOGFILE=%LOGDIR%\init.log

rem Formatear la unidad del disco
echo Formateando unidad %DISK%
format %DISK% /FS:NTFS /Q > %LOGFILE% 2>&1

rem Checkear la unidad
echo Realizando chequeo de la unidad... %DISK%
chkdsk %DISK% >> %LOGFILE% 2 > &1

echo Completado. Verificar registro en %LOGFILE%.
