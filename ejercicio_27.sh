#!/bin/bash
#Realice un script que implemente a través de la utilización de funciones las operaciones
#básicas sobre arreglos:
#inicializar: Crea un arreglo llamado array vacío
#agregar_elem <parametro1>: Agrega al final del arreglo el parámetro recibido
#eliminar_elem <parametro1>: Elimina del arreglo el elemento que se encuentra en la
#posición recibida como parámetro. Debe validar que se reciba una posición válida
#longitud: Imprime la longitud del arreglo en pantalla
#imprimir: Imprime todos los elementos del arreglo en pantalla
#inicializar_Con_Valores <parametro1><parametro2>: Crea un arreglo con longitud
#<parametro1>y en todas las posiciones asigna el valor <parametro2>

inicializar(){
	arreglo=()
	echo "arregle inicializado"

}

agregar_elem(){
	if [ $# -eq 0 ];then
		echo "ingrese un parametro"
		exit 1
	fi

	arreglo+=($1)
}

eliminar_elem(){
	if [ $# -eq 0 ];then
                echo "ingrese un parametro"
                exit 1
        fi

	if [ $1 -lt ${#arreglo[@]} ]; then
		unset arreglo[$1]
	else
		echo "el la posicion no se encuentra en el arreglo"
	fi	

}

longitud(){
	longitud=${#arreglo[@]}
	echo "la longitud del arreglo es: $longitud"

}


imprimir(){
	echo "el contenido del arreglo es:"
	for element in ${arreglo[@]}; do
		echo "$element"
	done

}

inicializar_Con_Valores(){
	if [ $# -ne 2 ];then
		echo "se necesitan 2 parametros"
		exit 1
	fi

	longitud=$1
	valor=$2

	arreglo=()
	for ((i=0; i<longitud; i++)); do
		arreglo+=($valor)
	done

}


#agregar_elem "element1"
#agregar_elem "element2"
#agregar_elem "element3"
#imprimir
#eliminar_elem 1
inicializar_Con_Valores 5 7
imprimir
longitud
