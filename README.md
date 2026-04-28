# TechOps Solutions - Automatización de Servidores

Scripts de Bash para la gestión automatizada de tareas.

## 🚀 Preparación
Otorga permisos de ejecución a todos los scripts (Si es necesario) con:
`chmod +x *.sh`

---

## 🛠️ Guía de Comandos

### 1. Analizar ruta
Indica si el destino es un archivo o directorio y muestra sus detalles.
- **Parámetros:** 1 (Ruta).
- **Ejecución:** `./script1.sh /etc/passwd`

### 2. Clasificar JPG
Copia imágenes `.jpg` a `~/fotos` o avisa si el formato es distinto.
- **Parámetros:** 1 (Archivo).
- **Ejecución:** `./script2.sh foto.jpg`

### 3. Inspeccionar argumentos
Muestra el nombre del script, total de parámetros y los desglosa.
- **Parámetros:** Varios.
- **Ejecución:** `./script3.sh valor1 valor2 valor3`

### 4. Copia de seguridad
Copia un archivo a otro validando que se pasen exactamente dos argumentos.
- **Parámetros:** 2 (Origen y Destino).
- **Ejecución:** `./script4.sh file.old file.new`

### 5. Renombrar por fecha
Añade el prefijo `AAAAMMDD-` a todos los archivos JPG del directorio.
- **Parámetros:** Ninguno.
- **Ejecución:** `./script5.sh`

---

## 📌 Resumen de Parámetros

| Script | Parámetros | Tipo de entrada |
| :--- | :---: | :--- |
| `script1.sh` | **1** | Ruta de sistema |
| `script2.sh` | **1** | Archivo específico |
| `script3.sh` | **N** | Lista de valores |
| `script4.sh` | **2** | Origen y Destino |
| `script5.sh` | **0** | (Ninguno) |

---
**TechOps Solutions**