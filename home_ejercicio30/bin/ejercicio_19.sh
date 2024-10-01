#!/bin/bash
#Escribir un Programa de “Menu de Comandos Amigable con el Usuario” llamado menu, el
#cual, al ser invocado, mostrará un menú con la selección para cada uno de los scripts creados
#en esta práctica. Las instrucciones de como proceder deben mostrarse junto con el menú.
#El menú deberá iniciarse y permanecer activo hasta que se seleccione Salir. 

cat << EOF


MENÚ DE COMANDOS
01. ejemplo break
02. ejemplo continue
03. ejemplo funcion
12a. ejercicio 12a
12b. ejercicio 12b
12c. ejercicio 12c
13a. ejercicio 13a
13b. ejercicio 13b
13c. ejercicio 13c
14. ejercicio 14
16. ejercicio 16
17. ejercicio 17
18. ejercicio 18
e. exit
EOF
echo 'ingrese una opción:'
read opcion
while true; do
case $opcion in
	"01")
		./ejemplo_break.sh	
	;;
	"02")
		./ejemplo_continue.sh
	;;
	"03")
		./ejemplo_funcion.sh
	;;
	"12a")
		./ejercicio_12_a.sh
	;;
	"12b")
		./ejercicio_12_b.sh
	;;
	"12c")
		./ejercicio_12_c.sh
	;;
	"13a")
		./ejercicio_13_a.sh
	;;
	"13b")
		./ejercicio_13_b.sh
	;;
	"13c")
		./ejercicio_13_c.sh
	;;
	"14")
		./ejercicio_14.sh
	;;
	"16")
		./ejercicio_16.sh
	;;
	"17")
		./ejercicio_17.sh
	;;
	"18")
		./ejercicio_18.sh
	;;
	"e")
		exit 0
	;;
	*)
	echo "opción incorrecta"
esac
cat << EOF


MENÚ DE COMANDOS
01. ejemplo break
02. ejemplo continue
03. ejemplo funcion
12a. ejercicio 12a
12b. ejercicio 12b
12c. ejercicio 12c
13a. ejercicio 13a
13b. ejercicio 13b
13c. ejercicio 13c
14. ejercicio 14
16. ejercicio 16
17. ejercicio 17
18. ejercicio 18
e. exit
EOF

read opcion
done
