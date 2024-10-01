#!/bin/bash

#Implemente un script que agregue a un arreglo todos los archivos del directorio /home cuya
#terminación sea .doc. Adicionalmente, implemente las siguientes funciones que le permitan
#acceder a la estructura creada:
#verArchivo <nombre_de_archivo>: Imprime el archivo en pantalla si el mismo se
#encuentra en el arreglo. Caso contrario imprime el mensaje de error “Archivo no en␂contrado” y devuelve como valor de retorno 5
#cantidadArchivos: Imprime la cantidad de archivos del /home con terminación .doc
#borrarArchivo <nombre_de_archivo>: Consulta al usuario si quiere eliminar el archi␂vo lógicamente. Si el usuario responde Si, elimina el elemento solo del arreglo. Si el
#usuario responde No, elimina el archivo del arreglo y también del FileSystem. Debe
#validar que el archivo exista en el arreglo. En caso de no existir, imprime el mensaje
#de error “Archivo no encontrado” y devuelve como valor de retorno 10

directorio=~/Documents/practica-shell-script/home_ejercicio29

arreglo=()
for archivo in $directorio/*;do
	if [[ $archivo == *.doc ]];then
		arreglo+=($archivo)
	fi
done

verArchivo(){
	encontrado=0
	if [ $# -eq 0 ]; then
		echo "necesita ingresar un nombre de archivo"
		exit 1
	fi
	
	archivo=$1
	
	for element in ${arreglo[@]};do
		if [ $element == $archivo ];then
			cat $archivo
			encontrado=1
			break
		fi
	done
	if [ $encontrado -eq 0 ]; then
        echo "archivo no encontrado"
        return 5  # código de error
    fi
}

imprimirArreglo() {
#funcion para test
    echo "contenido del arreglo:"
    for element in "${arreglo[@]}"; do
        echo "$element"
    done
}

cantidadArchivos(){
	cantidad=${#arreglo[@]}
	echo "la cantidad de archivos con terminacion .doc en $directorio es: $cantidad"
}

borrarArchivo(){
	if [ $# -eq 0 ]; then
                echo "necesita ingresar un nombre de archivo para borrar"
                exit 1
        fi

	borrar=$1
	pos=0
	encontrado=0
	while  [ $pos -lt ${#arreglo[@]} ] && [ $encontrado -eq 0 ];do
		element=${arreglo[$pos]}
		if [ $element == $borrar ];then 
                        encontrado=1
                fi
		((pos++))
	done
	if [ $encontrado -eq 0 ];then
		echo "archivo no encontrado"
		return 10
	fi
	
	echo "si quiere borrar el archivo solo del arreglo ingrese: SI, para eliminarlo del FileSystem y del arreglo ingrese NO"
	read opcion
	case $opcion in
		"SI")
			unset arreglo[$((pos - 1))]
			echo "archivo eliminado del arreglo"
		;;
		"NO")
			archivo_a_borrar=${arreglo[$((pos - 1))]}
			unset arreglo[$((pos - 1))]
			rm  $archivo_a_borrar
			echo "archivo eliminado del arreglo y del FileSystem"
		;;
		*)
			echo "opcion incorrecta"

	esac

}
imprimirArreglo
verArchivo $directorio/1.doc
cantidadArchivos
borrarArchivo $directorio/1.doc
imprimirArreglo
