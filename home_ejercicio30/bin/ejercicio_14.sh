#!/bin/bash
#Renombrando Archivos: haga un script que renombre solo archivos de un directorio pasado
#como parametro agregandole una CADENA, contemplando las opciones:
#“-a CADENA”: renombra el fichero concatenando CADENA al final del nombre del archivo
#“-b CADENA”: renombra el fichero concantenado CADENA al principio del nombre del archivo

directorio=$1
opcion=$2
cadena=$3

# verificar que se pasaron 2 argumentos
if [ "$#" -ne 3 ]; then
    echo "Uso: directorio -a|-b CADENA"
    exit 1
fi


for archivo in "$directorio"/*; do
	if [ -f "$archivo" ]; then
		nombre=$(basename "$archivo")
		nombre_nuevo=""
		
		case $opcion in
			"-a")
				nombre_nuevo="${nombre}${cadena}"
			;;
			"-b")
				nombre_nuevo="${cadena}${nombre}"
			;;
			*)
				echo "opcion invalida usa -a o -b"
				exit 1
			;;
		esac
	mv "$archivo" "$directorio/$nombre_nuevo"
	echo "$archivo renombrado"
	fi
done

