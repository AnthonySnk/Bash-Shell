#!/bin/bash
# Programa que gestiona un menu de opciones

opcion=0
while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "PGUTIL - Programa de Utilidad de Reto 4"
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
    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-8]:" opcion
    case $opcion
        1)
            top
            #Clear screen
            clear
        ;;
        2)
            watch free -h
            #Clear screen
            clear
        ;;
        3)
            watch df -h
            #Clear screen
            clear
        ;;
        4)
            ifconfig
            echo-e"\n\n"
        ;;
        5)
            env
            echo-e"\n\n"
        ;;
        6)
            dpkg --list
            clear
        ;;
        7)
            dpkg --list > /tmp/info.txt
            echo"dpkg --list > /tmp/info.txt"
            sleep 5
            echo-e"\n\n"
        ;;
        8)
            echo"Bye DEV"
            sleep 1
            exit 0
        ;;
        *)
        ;;
    esac
done