#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Ingrese (solo) el nombre del archivo/directorio"
	exit 1
fi

if [ -e $1 ]; then
	if [ -d $1 ]; then
		echo "$1 es un directorio"
	else
		echo "$1 es un archivo comun"
	fi
else
	echo "No exite el archivo $1"
fi

exit 0
