@echo off
cls

echo Empezando copia de seguridad...

xcopy /S /E /H /A "%1" "%2" >> "$2\backup.log" 2>&1
echo Copia completada.
attrib -A/ /S /D "%2\*.*"
echo Proceso terminado.
pause
