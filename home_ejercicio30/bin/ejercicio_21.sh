#!/bin/bash
#Dentro del mismo script y utilizando las funciones implementadas:
#Agregue 10 elementos a la pila
#Saque 3 de ellos
#Imprima la longitud de la cola
#Luego imprima la totalidad de los elementos que en ella se encuentran.

declare -a pila

push(){
	local element=$1
	pila+=($element)
	echo "elemento añadido a la pila"
}

pop(){
	#primero verifica si la pila tiene algo
	if [ ${#pila[@]} -eq 0 ];then
		echo "pila vacia"
		return
	fi
	local lastelment=${pila[-1]} #agarro el ultimo elemento
	unset pila[-1]
	echo "elemento popeado de la pila $lastelement"
}

length(){
	echo "la longitud de la pila es: ${#pila[@]}"
}

print(){
	#primero verifica si la pila tiene algo
        if [ ${#pila[@]} -eq 0 ];then
                echo "pila vacia"
                return
        else
		echo "los elementos que tiene la pila son:"
		for element in ${pila[@]}; do
			echo "$element"
		done
	fi
}

push "element1"
push "element2"
push "element3"
push "element4"
push "element5"
push "element6"
push "element7"
push "element8"
push "element9"
push "element10"
pop
pop
pop
length
print
