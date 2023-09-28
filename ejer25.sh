#!/bin/bash
usuarios=()

getUsers(){
	# me deja 2 espacios vacios y no sé porq
	usuarios=($(cat "/etc/group" | grep "users" | cut -d: -f4 | tr [','] ['']))
	return 0
}

if [ $# -gt 2 ];
then
	echo "Parametros invalidos"
	exit 1
fi
if [ $# -eq 2 ] && [ "$1" == "-b" ] ;
then
	getUsers
	if [ ${#usuarios[*]} -lt $(($2-1)) ];
	then
		echo "Indice fuera de rango"
		exit 3
	fi
	echo "${usuarios[$2]}"
else
	if [ $# -eq 1 ];
	then
		case "$1" in
			"-l")	getUsers
				echo "${#usuarios[*]}"
				;;
			"-i")	getUsers
				echo "${usuarios[*]}"
				;;
			"*") 	echo "Parametro invalido"
				exit 2
				;;
		esac
	fi
fi
exit 0
