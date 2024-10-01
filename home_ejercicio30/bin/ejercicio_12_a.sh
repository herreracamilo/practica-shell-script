#!/bin/bash
# Realizar un script que le solicite al usuario 2 números, los lea de la
# entrada Standard e imprima la multiplicación, suma, resta y 
# cual es el mayor de los números leídos.

echo "ingrese numero1 y numero2"
read numero1 numero2
multiplicacion=$((numero1*numero2))
echo "su multiplicacion da como resultado: $multiplicacion"
resta=$((numero1-numero2))
echo "su resta da como resultado: $resta "

if [ $numero1 -gt $numero2 ]; then
	echo "$numero1 es mayor"
elif [ $numero2 -gt $numero1 ]; then
	echo "$numero2 es mayor"
else
	echo "son iguales"
fi

