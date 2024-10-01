#!/bin/bash
#Realice un script que reciba como parámetro el nombre de un directorio. Deberá validar que
#el mismo exista y de no existir causar la terminación del script con código de error 4. Si el
#directorio existe deberá contar por separado la cantidad de archivos que en él se encuentran
#para los cuales el usuario que ejecuta el script tiene permiso de lectura y escritura, e informar
#dichos valores en pantalla. En caso de encontrar subdirectorios, no deberán procesarse, y
#tampoco deberán ser tenidos en cuenta para la suma a informar.

if [ $# -eq 0 ]; then
    echo "error, debe enviar un directorio"
    exit 1
fi

directorio=$1

if [ ! -d $directorio ]; then
	echo "error no es un directorio"
	exit 4
fi

contador=0

for archivo in $directorio/*; do
	if [ -f $archivo ] && [ -r $archivo ] && [ -w $archivo ];then
		((contador++))
	fi
done

echo "la cantidad de archivos fueron: $contador"
