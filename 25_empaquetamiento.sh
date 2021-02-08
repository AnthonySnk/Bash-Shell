#!/bin/bash
# Programa para ejemplificar el empaquetamiento con pbzip

echo "## Empaquetar todos los scripts de la carpeta shellCourse"
## Recuerda tener instalado pbzip2 !!! por defecto no lo tiene ubuntu.

# En dos pasos
compressFile=shellCourse."$(date +%Y%m%d_%H%M%S%N)".tar
tar -cvf $compressFile *.sh
pbzip2 -f $compressFile   # Compresión bz2

# En un paso
compressFile=shellCourse."$(date +%Y%m%d_%H%M%S%N)".tar
tar -cjf "$compressFile".bz2 *.sh  # Compresión bz2

# Comprobar el empaquetado
ls -ali *.tar*