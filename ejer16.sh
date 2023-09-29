#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Cantidad de parametros invalida, pase solo la extension"
	exit 1
fi

users=($(ls /home))

for user in $users; do
	archivos=($(find /home/$user -name "*.$1"))
	echo "$user tiene ${#archivos[*]} archivos con extensión $1" >> reporte.txt
done
exit 0
