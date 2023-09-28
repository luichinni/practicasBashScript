#!/bin/bash
pila=()
length=0

push(){
	if [ $# -ne 1 ];
	then
		return 1
	fi
	pila+=($1)
	return 0
}

pop(){
	let ultimo=${#pila[*]}
	if [ $ultimo -gt 0 ]; then
		((--ultimo))
		unset pila[$ultimo]
		return 0
	else
		return 1
	fi
}

length(){
	length=${#pila[*]}
	return 0
}

prin(){
	echo "${pila[*]}"
	return 0
}

select op in "push" "pop" "length" "print" "salir";
do
	case $op in
		"push") echo "Ingrese un valor para apilar"
			read valorAApilar
			push $valorAApilar
			if [ $? -eq 0 ]; 
			then 
				echo "apilado con exito" 
			else
				echo "no se pudo apilar, comprobar valores"
			fi
			;;
		"pop") pop
			if [ $? -eq 0 ];then
				echo "Elemento desapilado"
			else
				echo "No hay elementos para desapilar"
			fi
			;;
		"length") length
			echo "Tamaño de la pila obtenido: $length"
			;;
		"print") echo "Elementos de la pila:"
			prin
			;;
		"salir") exit 0
			;;
	esac
done
