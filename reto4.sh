#!/bin/bash
# author: Nelson Sanchez
option=0
while :
do
    echo "=========MONITOREO DE RECURSOS====="
    echo -e "\n[1] Procesos Actuales"
    echo "[2] Memoria Disponible"
    echo "[3] Espacio en Disco"
    echo "[4] Informacion de Red"
    echo "[5] Variables de Entorno configuradas"
    echo "[6] Informacion del programa"
    echo "[7] Backup informacion"
    echo "[8] Salir"
    echo "====================================="
    read -n1 -p "Ingrese una opcion: " option

done