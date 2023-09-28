#!/bin/bash
if [ $# -ne 1 ];
then
	echo "Cantidad de parametros invalida"
	exit 1
fi

usuario=$(cat "/etc/passwd" | cut -d: -f1 | grep -w "$1" | wc -l)

if [ $usuario -eq 0 ];
then
	echo "No existe el usuario"
	exit 2
fi

while [ $(users | grep "$1" | wc -l) -ne 1 ];
do
	sleep 10
	echo "Esperando usuario $1"
done

echo "Usuario $1 logueado en el sistema"
exit 0
