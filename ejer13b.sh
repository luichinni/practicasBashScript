#!/bin/bash
select op in Listar DondeEstoy QuienEsta Salir; 
do
	case $op in
		Listar) echo "$(ls)"
			;;
		DondeEstoy) echo "$(pwd)"
			;;
		QuienEsta) echo "$(who)"
			;;
		Salir) exit 0
			;;
	esac
done
