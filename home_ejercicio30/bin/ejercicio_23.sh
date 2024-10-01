#!/bin/bash
#Implemente un script que recorra un arreglo compuesto por números e imprima en pantalla
#sólo los números pares y que cuente sólo los números impares y los informe en pantalla al
#finalizar el recorrido.

arreglo=(10 3 12 1)

impares=0
for element in ${arreglo[@]};do
	if ((element % 2 == 0)); then
		echo "$element"
	else
		((impares++))
	fi
done
echo "la cantidad de impares es: $impares"

