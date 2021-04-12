#!/bin/bash
# Programa para ejemplificar las funciones

instalar_postgres() {
    echo -e "\nInstalando postgress..."
}

desinstalar_postgres() {
    echo -e "\nDesintalando postgress..."
}
sacar_respaldo () {
    echo -e "\nRealizando resplado..."
    echo "Directorio respaldo: $1"
    
}
restaurar_respaldo () {
    echo -e "\nRestaurando resplado..."
    echo "Directorio respaldo: $1"
    
}


opcion=0
#Validar la opción ingresada
while :
do
    clear
    #Desplegar el menú de opciones
    echo "_________________________________________"
    echo "    Programa de Utilidad de Postgres"
    echo "_________________________________________"
    echo "                MENÚ PRINCIPAL           "
    echo "_________________________________________"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"
    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]: " opcion
    case $opcion in
        
        1)
            instalar_postgres
            sleep 3
        ;;
        
        2)
            desinstalar_postgres
            sleep 3
        ;;
        
        3)
            read -p "Directorio Backup:" directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
        ;;
        
        4)
            read -p "Directorio de Respaldos:" directorioRespaldos
            restaurar_respaldo $directorioRespaldos
            sleep 3
        ;;
        
        5)
            echo "Salir del Programa"
            exit 0
        ;;
        
        *)
            echo "Seleccion no valida"
        ;;
    esac
    
done