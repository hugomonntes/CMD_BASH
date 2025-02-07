@echo off
cls

if "%1"=="" (
	echo Nombre del archivo a buscar:
	exit /b
)

echo Buscando "%~1" en C:\
dir C:\%~1 /s /p
