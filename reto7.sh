#!/bin/bash
# Reto 7: Modificar nuestro programa utilityHost.sh para crear cinco funciones de acuerdo
# al menú creado anteriormente y completarlo con lo visto en clase.

opcion=0
fecha=`date +"%Y%m%d"`
momento=`date +"%Y%m%d %H:%M:%S"`
usuario=`whoami`
repo=~/shellCourse/backup
host=""
usuarioHost=""

# Función para conocer los procesos en ejecución
procesos () {
    echo -e "\nProcesos actuales"
    ps -ely | less
    read -n1 -s -r -p "Presione [ENTER] para continuar..."
}

# Función para conocer la memoria disponible

memoria () {
    echo -e "\nMemoria disponible"
    free -h
    read -n1 -s -r -p "Presione [ENTER] para continuar..."
}

# Función para conocer el espacio en disco
espacio () {
    echo -e "\nEspacio en disco"
    df -h
    read -n1 -s -r -p "Presione [ENTER] para continuar..."
}

# Función para conocer la información de red

infoRed () {
    echo -e "\nInfo de red"
    ifconfig | less
    read -n1 -s -r -p "Presione [ENTER] para continuar..."
}

# Función para conocer las variables de entorno configuradas

variablesEntorno () {
    echo -e "\nVariables de entorno configuradas"
    printenv | less
    read -n1 -s -r -p "Presione [ENTER] para continuar..."
}

# Función para conocer información del sistema operativo
infoSistema () {
    echo -e "\nInformación programa"
    uname -ap
    read -n1 -s -r -p "Presione [ENTER] para continuar..."
}

# Verifica si existe el archivo log en el repositorio

if [ -d$repo ]; then # Existe el repositorio
    if [ -f$repo/log$fecha.log ]; then # Existe el archivo log
        echo "$usuario|$momento|Ingresó" >> $repo/log$fecha.log
    else
        # No existe el archivo log
        touch $repo/log$fecha.log
        echo "Usuario|Fecha y hora [yyyymmdd hh:mm:ss]|Acción" >> $repo/log$fecha.log
        echo "$usuario|$momento|Ingresó" >> $repo/log$fecha.log
    fi
else
    # No existe el repositorio
    mkdir $repo
    touch $repo/log$fecha.log
    echo "Usuario|Fecha y hora [yyyymmdd hh:mm:ss]|Acción" >> $repo/log$fecha.log
    echo "$usuario|$momento|Ingresó" >> $repo/log$fecha.log
fi

# Muestra el menú
while :
do 
    # Limpiar la pantalla
    clear
    # Desplegar el menú de opciones
    echo "                                        MENÚ PRINCIPAL                                     "
    echo "-------------------------------------------------------------------------------------------"
    echo -e "\t 1. Procesos actuales"
    echo -e "\t 2. Memoria disponible"
    echo -e "\t 3. Espacio en disco"
    echo -e "\t 4. Información de red"
    echo -e "\t 5. Variables de entorno configuradas"
    echo -e "\t 6. Información programa"
    echo -e "\t 7. Backup información"
    echo -e "\t 8. Salir\n"

    # Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-8]" opcion

    # Validar la opción ingresada
    case $opcion in 
        1)
            echo "$usuario|$momento|Seleccionó: Procesos actuales" >> $repo/log$fecha.log
            procesos
            ;;
        2)
            echo "$usuario|$momento|Seleccionó: Memoria disponible" >> $repo/log$fecha.log
            memoria
            ;;
        3)
            echo "$usuario|$momento|Seleccionó: Espacio en disco" >> $repo/log$fecha.log
            espacio
            ;;
        4)
            echo "$usuario|$momento|Seleccionó: Información de red" >> $repo/log$fecha.log
            infoRed
            ;;
        5)
            echo "$usuario|$momento|Seleccionó: Variables de entorno configuradas" >> $repo/log$fecha.log
            variablesEntorno
            ;;
        6)
            echo "$usuario|$momento|Seleccionó: Información del programa" >> $repo/log$fecha.log
            infoSistema
            ;;
        7)
            echo -e "\nBackup información"
            echo "$usuario|$momento|Seleccionó: Backup información" >> $repo/log$fecha.log
            echo -e "\nRealizando respaldo"
            echo "$usuario|$momento|Realizando respaldo" >> $repo/log$fecha.log
            echo -e "\nEmpaquetando todos los archivos .log de la carpeta repo"
            # Comprimimos los archivos .log y protegemos con contraseña
            zip -e backup$fecha.zip $repo/*.log
            # Enviamos respaldo a repositorio remoto
            read -p "Ingrese dirección IP del Host: " host
            read -p "Ingrese el usuario en el Host: " usuarioHost

            rsync -avz backup$fecha.zip $usuarioHost@host:/home/aprendiz/Documentos/Curso_Bash
            sleep 3
            ;;
        8)
            echo -e "\nSalir del programa"
            echo "$usuario|$momento|Salió del programa" >> $repo/log$fecha.log
            exit 0
            ;;
    esac 
done 