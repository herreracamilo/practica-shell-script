#!/bin/bash
# Realizar un script que reciba como parámetro una extensión y haga un reporte con 2
# columnas, el nombre de usuario y la cantidad de archivos que posee con esa extensión.
# Se debe guardar el resultado en un archivo llamado reporte.txt.

# verifico si mandaron bien el parámetro
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 EXTENSIÓN"
    exit 1
fi

extension="$1"  
usuario=$(whoami)

# cuento los archivos con la extensión dada en todo el sistema
# con fin / busco en todo el sistema
# con -type f solo busca archivos
# 2>/dev/null me hace saltar el error de los archivos que no tengo permisos para acceder
# "*${extension}" * es cualquiercosa + la extension que le paso
# wc -l cuento las lineas con esa extension
contador=$(find / -type f -name "*.${extension}" 2>/dev/null | wc -l)

echo "usuario: $usuario" > reporte.txt
echo "cantidad de archivos con extensión ${extension}: $contador" >> reporte.txt

echo "reporte guardado en reporte.txt"

