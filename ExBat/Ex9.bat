@echo off
cls
echo Instalador > install.logç
echo Presiona una tecla:
pause

mkdir %1 >> install.log
echo Creando directorio: %1

copy /Y *.exe %1 >> install.log
echo Copiando archivos EXE a %1
copy /Y *.dat %1 >> install.log
echo Copiando archivos DAT a %1

mkdir %1\ejemplos >> install.log
echo Creando directorios de ejemplo %1

copy /Y EJ*.TXT %1\ejemplos >> install.log
echo Copiando archivos EJ*.TXT a %1\ejemplos

mkdir %2 >> install.log
echo Creando directorios: %2

copy /Y DOC*.TXT %2 >> install.log
echo Copiando archivos DOC*.TXT a %2

del /Q DOC*.TXT >> install.log
echo Borrando archivos DOC*.TXT

tree %1 /F >> install.log
tree %1 /F

echo Terminado.
pause
