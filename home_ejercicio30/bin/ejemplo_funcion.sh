# Recibe 2 argumentos y devuelve:
# 1 si el primero es el mayor
# 0 en caso contrario
mayor()
{
echo "Se van a comparar los valores $*"
if [ $1 -gt $2 ]; then
echo "$1 es el mayor"
return 1
fi
echo "$2 es el mayor"
return 0
}
mayor 245 6 # Invocaci´on
echo $? # Imprime el exit Status de la funcion
