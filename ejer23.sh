#!/bin/bash
if [ $# -eq 0 ]; then
	echo "No hay parametros, ingrese numeros"
	exit 1
fi
impares=0
for num in $*;
do
	if [ $(($num % 2)) -eq 0 ]; then
		echo "$num"
	else
		((++impares)) # para sobreescibir la variable va sin $
	fi
done
echo "Impares encontrados: $impares"
exit 0
