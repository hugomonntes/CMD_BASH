1. Crear un .BAT que cree un nuevo directorio denominado PRUEBA en el directorio de usuario actual de
cualquier ordenador independientemente del país. Además mostrará el sistema operativo usado y la
arquitectura del microprocesador (buscar la variables de entorno con dicha información).

@echo off
cls
md "%homepath%/prueba3"
@echo %OS%
@echo %processor_architecture%

2. Como se comentó en teoría, el path es la variable de entorno que indica los lugares donde Windows
debe buscar programas para ejecutarlos. ¿Cómo modificarías el path desde consola para que
incluyera el directorio almacen creado de forma que los programas que se encuentren ahí puedan ser
ejecutados desde cualquier parte?
Nota: Si usas SET debes buscar la forma de “añadir” si usas SETX ya añade lo que le indiques por defecto.
Averigua como se hace de ambas formas

setx PATH "%PATH%; C:\Almacen"

3. Cambia de forma permanente el prompt para que tenga una forma similar al linux: UsuarioActual@ordenador: Trayectoria>.

