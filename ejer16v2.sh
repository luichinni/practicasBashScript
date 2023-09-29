#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Cant params invalida, ponga una extension"
	exit 1
fi

#lineas=($(cat /etc/passwd | cut -d: -f 1,6)) # tomo lineas user:home
for linea in $(cat /etc/passwd | cut -d: -f 1,6); do
	user=($(echo $linea | cut -d: -f1)) # me quedo el user
	home=($(echo $linea | cut -d: -f2)) # me quedo el home
	# compruebo si el home es una carpeta valida
	if [ -d $home ]; then
		archivos=($(find $home -name "*.$1"))
		echo "$user tiene ${#archivos[*]} archivos con ext $1" >> reporte.txt
		# alternativa: echo "$user tiene $(find $home -name "*.$1" | wc -l)"
	fi
done
exit 0
