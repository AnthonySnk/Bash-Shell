#!/bin/bash
# programa para ejemplificar la creacion de archivos y dirrectorios


if [[ $# -ne 2 ]]; then
    echo "Número de parámetros incorrectos"
    exit 1
fi

if [[ $1 == "d" ]]; then
    mkdir -m 755 $2
    echo "Directorio $2 creado correctamente"
    ls -la $2

elif [[ $1 == "f" ]]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
    
else
    echo "No existe esa opción: $1"
fi