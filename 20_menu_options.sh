#!/bin/bash
#Programa que permite utilizar las cosas de postgres
option=0
while :
do
    #Limpiar la pantalla
    clear
    #desplegar el menu de opcion
    echo "==================================="
    echo "Programa de utilidades de postgres"
    echo "==================================="
    echo "            Menu principal       "
    echo "==================================="
    echo "1. Instalar Postgres"
    echo "2. Desintalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"
    
    #Leer los datos del usuario
    
    read -n1 -p "Inregre una opcion: " option
    #validar la opcion
    case $option in
        1)
            echo -e "\nInstalando postgres ..."
            echo -e "Instalacion completa"
            sleep 3
        ;;
        
        2)
            echo -e "\nDesistanlando postgress ..."
            echo -e "Desinstalacion completa"
            sleep 3
        ;;
        
        3)
            echo -e "\nSacando respaldo ..."
            echo -e "Respaldo realizado"
            sleep 3
        ;;
        
        4)
            echo -e "\nRestaurando ultimo respaldo"
            echo -e "Restauracion completa"
            sleep 3
        ;;
        
        5)
            echo -e "\nSaliendo ..."
            exit 0 #rompiendo la ejecucion del programa
        ;;
        
        *)
            clear
            echo -e "\nEligue una opcion valida"
        ;;
    esac
done
