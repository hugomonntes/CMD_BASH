a)
@echo off
cls

if "%1"=="" (
	echo Nombre del archivo a buscar:
	exit /b
)

echo Buscando "%~1" en C:\
dir C:\%~1 /s /p

b)
@echo off
cls

if "%1"=="" (
	echo Archivo a buscar:
	exit /b
)

if "%2"=="" (
	echo Unidad donde buscar:
	exit /b
)

echo Buscando... "%1" en "%2"...
dir %2\%1 /s /p
