#!/bin/bash

ruta= /var/log
opcion=$1
arreglo=()
if [ $# -gt 1 ]; then
	echo "se ingresó mas de 1 parametro"
	exit 1
fi

for element in $ruta/*;do 
	if [ -f $element ] && [[ $element =~ access ]];then
		arreglo+= ($element)
	fi	
done

cantidad(){
	echo "la cantidad de archivos que tienen la palabra access en el nombre es: ${#arreglo[@]}"
}

listar(){
	echo "se listaran los elementos del arreglo: "
	echo "${arreglo[@]}"
}

eliminar(){
	if [ $# -lt 2 ]; then
        	echo "se ingresó menos de 2 parametros"
        	exit 1
	fi
	indice=$1
	opcion=$2
	case $opcion in 
		"l")
			unset "arreglo[$indice]"
			echo "elemento borrado del arreglo"
		;;
		"f")
			nombre=${arreglo[$indice]}
			unset "arreglo[$indice]"
			rm $ruta/$nombre
			echo "elemento borrado del arreglo y del filesystem"
		;;
		"*")
			echo "opcion incorrecta"
	esac
}

fin(){
	exit 0
}
