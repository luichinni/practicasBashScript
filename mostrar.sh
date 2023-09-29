#!/bin/bash
# Comnt que hace el script
# Siempre comento, sino lo hago
# mañana no me acuerdo
echo "Introduzca su nombre y apellido"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es `whoami`"
echo "Su directorio actual es: $(pwd)"
echo "Espacio libre en disco: $(df -h)"
echo "Directorio HOME: $HOME"
echo "Resultado: $(expr 1 < 2 )"
