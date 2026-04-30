#!/bin/bash
# script3.sh

echo "Nombre del script: $0"
echo "Número de argumentos del script: $#"

# Variable con texto de salida.
TEXTO="No hay argumentos a imprimir."
if [ ! -z "$1" ]; then
    TEXTO="Primer argumento: $1"
fi

if [ ! -z "$2" ]; then
    TEXTO+=", Segundo argumento: $2"
fi

echo "$TEXTO"

if [ "$#" -gt 2 ]; then
    for (( i=3; i <= $#; i += 1)); do
       echo "Argumento número $i: ${!i}"
    done
fi
