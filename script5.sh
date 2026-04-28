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

cat << EOF

===========================================================
      RESUMEN DEL COMANDO EJECUTADO
===========================================================
Este script automatiza el renombrado de archivos.
1. Obtiene la fecha actual ($FECHA).
2. Busca todos los archivos con extensión .jpg.
3. Aplica un comando 'mv' (move/rename) para añadir 
   el sufijo de fecha al nombre original.
===========================================================
EOF