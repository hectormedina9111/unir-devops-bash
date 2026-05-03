#!/bin/bash
# script5.sh
set -euo pipefail

#Variables
FECHA=$(date +%Y%m%d)

for archivo in *.jpg; do

    if [ -f "$archivo" ]; then
        echo "Archivos originales $archivo"
        mv $archivo "$FECHA-$archivo"
        echo "Archivo modificados $FECHA-$archivo"
    fi
done