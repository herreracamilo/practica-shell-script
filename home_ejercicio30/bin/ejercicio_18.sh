#!/bin/bash
#Crear un script que verifique cada 10 segundos si un usuario se ha loqueado en el sistema
#(el nombre del usuario será pasado por parámetro). Cuando el usuario finalmente se loguee,
#el programa deberá mostrar el mensaje ”Usuario XXX logueado en el sistema” y salir.

usuario_buscado=$1

# verificar que se pasaron 2 argumentos
if [ "$#" -ne 1 ]; then
    echo "tiene que ingresar el nombre de usuario a buscar como argumento"
    exit 1
fi

while true; do
	usuarios=$(users)
	for usuario in $usuarios; do
	if [ $usuario == $usuario_buscado ]; then
		date=$(date)
		echo "usuario $usuario_buscado logueado en el sistema $date"
		exit 0
	fi
	done
	echo "usuario $usuario_buscado no logueado en el sistema"
	echo "verificando nuevamente ..."
	sleep 10
	
done
