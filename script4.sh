#!/usr/bin/env bash

if [ "$#" -ne 2 ]; then
  echo "Este script solo acepta dos parámetros: origen y destino." >&2
  exit 1
fi
 
ficheroDeOrigen="$1"
ficheroDeDestino="$2"
 
# --- El archivo origen debe existir ---
if [ ! -f "$ficheroDeOrigen" ]; then
    echo "El fichero origen no existe"
    exit 1
fi
 

cp -- "$ficheroDeOrigen" "$ficheroDeDestino"
echo "Archivo '$ficheroDeOrigen' copiado correctamente a '$ficheroDeDestino'."
exit 0

 
