1. Realización de un fichero por lotes que borre la pantalla, muestre el día y la hora actual, la versión
del sistema operativo y el directorio raíz de la unidad C.

@echo off
cls

echo La fecha actual es:

date /t
pause

echo La hora actual es:

time /t

pause

echo La version del sistema operativo es:
ver
pause

echo El directorio:
dir C:\
