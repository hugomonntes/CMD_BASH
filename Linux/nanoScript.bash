#!/bin/bash

valor= 13;
echo $valor

echo "MENU PRINCIPAL"
echo "1. Mostrar contenido de un archivo"
echo "2. Copiar archivo"
echo "3. Permisos archivo"
echo "4. Salir"

read opcion

if [ $opcion -eq 1 ]
	then
		read -p "Introduzca el archivo que quiere mostrar: " archivo
 		cat $archivo
elif [ $opcion -eq 2  ]
	then
		read -p "Introduce el archivo que quieres copiar: " copia
		read -p "Introduce la ruta al directorio: " ruta
		cp $copia $ruta
elif [ $opcion -eq 3  ]
	then
		read -p "Introduce el archivo para mostrar permisos: " perm
		ls -al $perm
else
	exit
fi
