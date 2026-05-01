# script4.sh

if [ "$#" -ne 2 ]; then
    echo "Error: se esperan exactamente 2 parámetros."
    echo "Uso: ./script4.sh <origen> <destino>"
    exit 1
fi
 
ORIGEN="$1"
DESTINO="$2"
 
# --- El archivo origen debe existir ---
if [ ! -f "$ORIGEN" ]; then
    echo "Error: el archivo de origen '$ORIGEN' no existe o no es un fichero regular."
    exit 1
fi
 
# --- Copia del archivo ---
cp "$ORIGEN" "$DESTINO"
echo "Archivo '$ORIGEN' copiado correctamente a '$DESTINO'."
exit 0
 
