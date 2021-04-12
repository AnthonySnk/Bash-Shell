#!/bin/bash
opcion=0

while :
do
	#Limpiar pantalla
	clear
	#desplegar menu de opciones
	echo"_________________________________________"
	echo"UBUNTU - Programa de utilidad del servidor"
	echo"_________________________________________"
	echo"              MENU PRINCIPAL             "
	echo"_________________________________________"
	echo"1. Procesos actuales"
	echo"2. Memoria disponible"
	echo"3. Espacio en Disco,"
	echo"4. Información de Red"
	echo"5. Variables de Entorno Configuradas"
	echo"6. Información Programa"
	echo"7. Backup información"
	echo"8. Salir."

	#Leer los datos de usuario
	read -n1 -p "Ingrese una opción [1-8]:" opcion

	#validar la opción ingresada
	case$opcionin
		1) echo-e"\nProcesos actuales...."
			ps -fea
			sleep 3
			;;
		2) echo-e"\n Memoria disponible..."
			free -m
			sleep 3
			;;
		3) echo-e"\nEspacio en disco..."
			df -h
			sleep 3
			;;
		4) echo-e"\nInformación de Red ..."
			ip a
			sleep 3
			;;
		5) echo-e"\nVariables de entorno"
			env
			sleep 3
			;;
		6) echo-e"\nInformación programa"
			dpkg -l |more
			sleep 3
			;;
		7) echo-e"\nBackup información"
			tar -czvf backup.tar.gz *
			zip -e backup.tar.gz *.sh
			rsync -avr backup.tar.gz fregular@192.168.0.10:/tmp
			sleep 3
			;;
		8) echo-e"\nSaliendo..."
			exit 0
			;;
	esac
done