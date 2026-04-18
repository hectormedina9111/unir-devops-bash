#!/bin/bash
# script1.sh


if [ -z "$1" ]; then
    echo "Error: debes proporcionar una ruta como parámetro."
    echo "Uso: bash script1.sh <ruta>"
    exit 1
fi

RUTA="$1"

if [ -f "$RUTA" ]; then
    echo "'$RUTA' es un fichero normal."
elif [ -d "$RUTA" ]; then
    echo "'$RUTA' es un directorio."
else
    echo "'$RUTA' es otro tipo de fichero (enlace simbólico, dispositivo, etc.)."
fi

echo ""
echo "Listado de '$RUTA':"
ls -l "$RUTA"
