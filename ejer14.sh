#!/bin/bash
if [ $# -ne 3 ]; then
	echo "Cantidad de parametros invalida"
	echo "[ruta] [parametro] [pre/pos fijo]"
	exit 1
fi

if [ -d $1 ]; then
	if [ $2 = "-a" ] || [ $2 = "-b" ]; then
		archivos=$(ls $1)
		if [ $2 = "-a" ]; then
			for archivo in $archivos; do
				mv "$1/$archivo" "$1/$archivo$3"	
			done
		else
			for archivo in $archivos; do
				mv "$1/$archivo" "$1/$3$archivo"
			done
		fi
	else
		echo "$2 no es un parametro valido"
		exit 3
	fi	
else
	echo "$1 no es un directorio valido"
	exit 2
fi
exit 0
