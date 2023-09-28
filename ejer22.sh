#!/bin/bash
num=(10 3 5 7 9 3 5 4)
rta=1;
productoria(){
	let aux;
	for valor in ${num[*]};
	do
		rta=$(($rta * $valor))
	done
}
productoria
echo "rta=$rta"
