#!/bin/bash
#Realizar una calculadora que ejecute las 4 operaciones básicas: +, - ,*, %. 
#Esta calculadora debe funcionar recibiendo la operación y los números como parámetros

parametro1=$1
operador=$2
parametro3=$3

case $operador in
	"+")
		calculo=$(($1+$3))
		echo "el resultado es: $calculo"	
	;;
	"-")
		calculo=$(($1-$3))
                echo "el resultado es: $calculo"
	;;
	"*")
		calculo=$(($1*$3))
                echo "el resultado es: $calculo"
	;;
	"/")
		calculo=$(($1/$3))
                echo "el resultado es: $calculo"
	;;
	"%")
		calculo=$(($1%$3))
                echo "el resultado es: $calculo"
	;;
	*)
		echo "Operador no válido. Use +, -, *, /, %"
		
esac

