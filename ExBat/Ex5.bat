@echo off
cls

echo Donde quieres crear el archivo ayuda.rlt:
%2 > %1 /? Ayuda.rlt 
pause
%3 > %1 /? Ayuda.rlt 
pause
%4 > %1 /? Ayuda.rlt 

echo Fichero de ayuda creado: ayuda.rlt %1
