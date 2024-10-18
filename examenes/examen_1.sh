#!/bin/bash
parametro1=$0
opcion=$1
parametro2=$2
parametro3=$3

arreglo=()
if [ $# -eq 0 ]; then
	echo "no mandó parametros"
	exit 1
elif [ $# -gt 4 ];then
	echo "mandó mas de 3 parametros"
	exit 1
fi

menosA(){
	ruta=$1
	ruta2=$2
	for element in $ruta/*;do
		if [ -f $element ];then
			arreglo+= ("$element")
		fi
	done
	
	for element in $ruta2/*;do
		if [ -f $element ];then
			arreglo+= ("$element")
		fi
	done
}

menosD(){
	ruta=$1
	patron=$2
	opc=$3

	for element in $ruta/*;do
		if [ -f $element ] && [[ $element =~ $patron ]];then
			arreglo+= ("$element")
		fi
	done
	
	if [ $# -eq 3 ]; then
		for element in $ruta/*;do
			if [[ $element =~ $patron ]];then
				rm $ruta/$element
			fi
		done
	fi
}


case $opcion in
	"-a")
		menosA $parametro1 $parametro2
	;;
	"-d")
		if [ $# -eq 4 ]; then
			menosD $parametro1 $parametro2 $parametro3
		else menosD $parametro1 $parametro2
	;;
	*) echo "opcion incorrecta"	
esac

echo "${arreglo[*]}"


