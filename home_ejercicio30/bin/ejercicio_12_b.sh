#!/bin/bash
# Modificar el script creado en el inciso anterior para que los números sean recibidos
# como parámetros. El script debe controlar que los dos parámetros sean enviados.

numero1=$1
numero2=$2
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
