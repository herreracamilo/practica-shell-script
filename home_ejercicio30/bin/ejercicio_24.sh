#!/bin/bash 
#Dada la definición de 2 vectores del mismo tamaño y cuyas longitudes no se conocen.
#Complete este script de manera tal de implementar la suma elemento a elemento entre
#ambos vectores y que la misma sea impresa en pantalla de la siguiente manera:
#La suma de los elementos de la posición 0 de los vectores es 6
#La suma de los elementos de la posición 1 de los vectores es 178

vector1=( 1 80 65 35 2 )
vector2=( 5 98 3 41 8 ) 

if [ ${#vector1[@]} -eq ${#vector2[@]} ]; then
        n=${#vector1[@]}
        for ((i=0; i<n; i++)); do
                resultado=$((${vector1[i]}+${vector2[i]}))
                echo "la suma de los elementos de la posicion $i de los vectores es: $resultado"
        done

else
	echo "los vectores no tienen la misma dimension"
fi
