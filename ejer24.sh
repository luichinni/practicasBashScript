#!/bin/bash
vector1=(1 2 3)
vector2=(1 2 3)

sumarPosiciones(){
	tamanio=${#vector1[*]}
	for ((i=0; i < tamanio ;i++))
	do
		echo "La suma de los elementos de la posicion $i de los vectores es $((${vector1[$i]}+${vector2[$i]}))"
	done
	return 0
}

sumarPosiciones
exit 0
