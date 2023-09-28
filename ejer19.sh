#!/bin/bash
archivos=($(ls))
echo "Seleccione un programa"
echo "${archivos[*]}"
select arch in ${archivos[*]} salir;
do
	if [ "$arch" == "salir" ];then exit 0;
	else
		if [ "$arch" != "" ] && [ $(echo "${archivos[*]}" | grep "$arch" | wc -l) -ne 0 ];
		then
			echo "Ingrese los parametros necesarios (o nada si no lleva)"
			read -a params
			./$arch $params
		else
			echo "Opcion invalida"
		fi
	fi
done
exit 0
