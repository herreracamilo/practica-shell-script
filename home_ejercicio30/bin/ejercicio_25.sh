#!/bin/bash
#Realice un script que agregue en un arreglo todos los nombres de los usuarios del sistema
#pertenecientes al grupo “users”. Adicionalmente el script puede recibir como parametro:
#“-b n”: Retorna el elemento de la posición n del arreglo si el mismo existe. Caso contrario, un mensaje de error.
#“-l”: Devuelve la longitud del arreglo
#“-i”: Imprime todos los elementos del arreglo en pantalla




#armar el arreglo de usuarios:
# getent group users: Obtiene la entrada del grupo users.
# cut -d: -f4: Extrae el campo 4, que contiene los nombres de los usuarios del grupo.
# tr ',' ' ': Reemplaza las comas (,) que separan los nombres por espacios.

usuarios=($(getent group users | cut -d: -f4 | tr ',' ' '))

opcion=$1
#verifico si se mandó parametro
if [ $# -eq 0 ]; then
    echo "No se pasaron parámetros. Usa -b, -l o -i."
fi

while getopts "b:li" opt; do
    case $opt in
        b)  # Opción -b n: Mostrar el elemento en la posición n
            n=$OPTARG
            if [ "$n" -lt "${#usuarios[@]}" ]; then
                echo "el elemento en la posición $n es: ${usuarios[$n]}"
            else
                echo "el elemento en la posición $n no existe."
            fi
            ;;
        l)  # Opción -l: Mostrar la longitud del arreglo
            echo "la longitud del arreglo es: ${#usuarios[@]}"
            ;;
        i)  # Opción -i: Imprimir todos los elementos del arreglo
            echo "usuarios en el grupo 'users':"
            for usuario in "${usuarios[@]}"; do
                echo "$usuario"
            done
            ;;
        *)  # En caso de una opción inválida
           	echo "opción inválida. Usa -b, -l o -i."
            ;;
    esac
done
