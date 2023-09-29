#!/bin/bash
if [ $# -ne 2 ]; then
	echo "Cantidad de parametros invalida"
	exit 1
fi

echo "Suma: $(expr $1 + $2)"
echo "Resta: $(expr $1 - $2)"
echo "Multi: $(expr $1 \* $2)";
if [ $1 -gt $2 ]; then
	echo "El mayor es: $1"
else
	echo "El mayor es: $2"
fi
