#!/bin/bash
#Crear un script que reciba como parámetro el nombre de un archivo e informe si el
#mismo existe o no, y en caso afirmativo indique si es un directorio o un archivo. En
#caso de que no exista el archivo/directorio cree un directorio con el nombre recibido
#como parámetro.

archivo=$1

if [ $# -ne 1 ];then #con este if verifico si me mandaron el parametro, en el video dice que lo tengo que tener
	echo "debe indicar un nombre de archivo"
	exit 1
fi

if [ -e $archivo ]; then
	if [ -f $archivo ]; then
		echo "$archivo es un archivo"
	elif [ -d $archivo ]; then
		echo "$archivo es un directorio"
	else
		echo "$archivo existe pero no es un archivo ni un directorio"
	fi
else
	echo "el archivo no existe, se procede a crear el directorio"
	mkdir "$archivo"
	if [ -d $archivo ]; then
		echo "directorio $archivo creado correctamente"
	fi
fi
