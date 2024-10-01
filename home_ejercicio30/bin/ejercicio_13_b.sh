#!/bin/bash
#Crear un script que muestre 3 opciones al usuario: Listar, DondeEstoy y QuienEsta.
#Según la opción elegida se le debe mostrar:
#Listar: lista el contenido del directoria actual.
#DondeEstoy: muestra el directorio donde me encuentro ubicado.
#QuienEsta: muestra los usuarios conectados al sistema.

echo "ingrese una opción: Listar, DondeEstoy o QuienEsta"
read opcion

case $opcion in
	"Listar")
		echo "el contenido del directorio actual es:"
		ls
	;;
	"DondeEstoy")
		echo "el directorio donde me encuentro es:"
		 pwd
	;;
	"QuienEsta")
		echo "los usuarios conectados en al sistema son:"
		who
	;;
	*)
		echo "esa opcion no existe, intente de nuevo."
	;;
esac

