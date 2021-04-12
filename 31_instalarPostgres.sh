#!/bin/bash
# Programa para ejemplificar las funciones

instalar_postgres() {
    echo -e "\nVerficnado la instalacion de postgress"
    verifyInstall=$(wich psql)
    if [ $? -eq 0]; then
        echo "Postgress ya se encuentra instalado"
    else
        read -s -p "Ingresar contraseña sudo: "password
        read -s -p "Ingresar contraseña para postgress"
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$postgress}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n 1 -s -r -p "Precione [ENTER] para continuar..."
}

desinstalar_postgres() {
    echo -e "\nDesintalando postgress..."
    read -s -p "Ingresar contraseña sudo: "password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql-common
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel -r postgresql
    read -n 1 -s -r -p "Precione [ENTER] para continuar..."


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