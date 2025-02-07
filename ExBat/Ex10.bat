@echo off
cls

rem Comprobar que se le ha pasado un parámetro
if "%~1"=="" (
	echo Poner nombre de archivo en el parámetro.
	exit /b
)

rem Nombre de archivo sin extensión
set "filename=%~1"
set "extension=%~x1"

REM OCultar archivos con la misma extensión
for /r %%i in (*) n do (
	if /i "%%~nxi"=="%filename%%extension%" (
	echo Ocultando: %%i
	attrib +h "%%i"
	)
)

echo Terminado.
