#!/bin/bash
#Realice un script que mueva todos los programas del directorio actual (archivos ejecutables)
#hacia el subdirectorio “bin” del directorio HOME del usuario actualmente logueado. El script
#debe imprimir en pantalla los nombres de los que mueve, e indicar cuántos ha movido, o
#que no ha movido ninguno. Si el directorio “bin” no existe,deberá ser creado.

home=~/Documents/practica-shell-script/home_ejercicio30/bin

if [ ! -d $home ]; then
	echo "el directorio bin no existe, se creará"
	mkdir $home/
fi

contador=0

for element in *;do
	if [ -f $element ] && [ -x $element ];then
		cp $element $home #debe ser mv en vez de cp pero pongo cp para que no se me muevan todos los archivos al pedo
		echo "moviendo $element ..."
		((contador++))
	fi
done




if [ $contador -eq 0 ];then
	echo "no movió ninguno"
else
	echo "se movieron $contador archivos"
fi
