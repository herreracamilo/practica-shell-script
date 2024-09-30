#!/bin/bash
#Realice un script que simule el comportamiento de una estructura de PILA e implemente
#las siguientes funciones aplicables sobre una estructura global definida en el script:
#push: Recibe un parámetro y lo agrega en la pila
#pop: Saca un elemento de la pila
#length: Devuelve la longitud de la pila 
#print: Imprime todos elementos de la pila

declare -a pila

push(){
	local element=$1
	pila+=$element
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
	echo "elemento popeado de la pila"
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
		for element in ${#pila[@]}; do
			echo "$element"
		done
	fi
}

#uso
push "element1"
push "element2"
print
length
push "element3"
print
length
pop
print
length
