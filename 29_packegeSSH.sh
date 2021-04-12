#!/bin/bash
# Tranferrir archivos por la red usando.

read -p "Ingresa el host: " host
read -p "Ingresa el user: " usuario
read -p "Ingresa el path de desitono" pathDestino
echo -e "\nEn este momento se procedera a empaquetar la carpeta"

rsync -avz $(pwd) $usuario@$host:$pathDestino