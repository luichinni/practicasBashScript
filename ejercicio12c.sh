#!/bin/bash
if [ $# -ne 3 ]; then
	echo "Cantidad de parametros invalida, cantidad pasada: $#"
	select op in "listar" "cerrar";
	do
		case $op in
			"listar") echo "$*";;
		esac
		break
	done
	exit 1
fi

valido=$false
for exp in "+" "-" "\*" "%";
do
	if [ "$exp" = $2 ]; then
		valido=$true
	fi 
done

if [ $valido = $true ]; then
	echo "$(expr $1 $2 $3)"
else
	echo "Operacion invalida"
	exit 2
fi
exit 0
