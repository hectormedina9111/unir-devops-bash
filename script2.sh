#!/bin/bash
# script2.sh

if [ -z "$1" ]; then
    echo "Error: debes proporcionar un archivo como parámetro."
    echo "Uso: bash script2.sh <archivo>"
    exit 1
fi

ARCHIVO="$1"

if [ ! -f "$ARCHIVO" ]; then
    echo "Error: el archivo '$ARCHIVO' no existe o no es un fichero regular."
    exit 1
fi

EXTENSION="${ARCHIVO##*.}"

case "$EXTENSION" in
    jpg | JPG)
        mkdir -p ~/fotos
        cp "$ARCHIVO" ~/fotos/
        echo "Archivo '$ARCHIVO' copiado correctamente en ~/fotos."
        ;;
    *)
        echo "Aviso: el archivo '$ARCHIVO' tiene extensión '.$EXTENSION', no es un JPG. No se realiza ninguna acción."
        ;;
esac
