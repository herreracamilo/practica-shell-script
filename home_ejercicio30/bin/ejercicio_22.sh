#!/bin/bash
#Dada la siguiente declaración al comienzo de un script: num=(10 3 5 7 9 3 5 4) (la cantidad
#de elementos del arreglo puede variar). Implemente la función productoria dentro de este
#script, cuya tarea sea multiplicar todos los números del arreglo

num=(10 3 5 7 9 3 5 4) 

productoria(){
	local resultado=1
	for element in ${num[@]};do
		resultado=$((resultado*element))
	done
	echo "el resultado de productoria es: $resultado"
}

productoria

num=(10 5)

productoria
