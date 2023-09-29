#!/bin/bash
echo "Ingrese dos numeros separados por espacio"
read num1 num2
echo "Suma: $(expr "$num1" + "$num2")"
echo "Resta: $(expr "$num1" - "$num2")"
echo "Multi: $(expr "$num1" \* "$num2")";
if [ $num1 -gt $num2 ]; then
	echo "El mayor es: $num1"
else
	echo "El mayor es: $num2"
fi
