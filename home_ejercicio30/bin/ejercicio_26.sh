#!/bin/bash
#Escriba un script que reciba una cantidad desconocida de parámetros al momento de su invocación (debe validar que al menos se reciba uno). Cada parámetro representa la ruta absoluta
#de un archivo o directorio en el sistema. El script deberá iterar por todos los parámetros recibidos, y solo para aquellos parámetros que se encuentren en posiciones impares (el primero, el tercero, el quinto, etc.),
#verificar si el archivo o directorio existen en el sistema, imprimiendo en pantalla que tipo
#de objeto es (archivo o directorio). Además, deberá informar la cantidad de archivos o
#directorios inexistentes en el sistema.


#verifico que se hayan enviado parametros
if [ $# -eq 0 ]; then
    echo "error debe proporcionar al menos un archivo o directorio."
    exit 1
fi

inexistentes=0

for ((i=1; i<=$#; i++)); do #itero por la cantidad de parametros que mando
	if ((i % 2 == 1)); then
		ruta=${!i} #obtengo el argumento
		if [ -e $ruta ]; then
			if [ -f $ruta ]; then
				echo "es un archivo"
			elif [ -d $ruta ]; then
				echo "es un directorio"

			fi
		else
			echo "la ruta no existe"
			((inexistentes++)) ##acordate que tenes que poner (()) para cosas algoritmicas
		fi
	fi
done

echo "la cantidad de inexistentes es: $inexistentes"
