#!/bin/bash
Today=`date +%Y%m%d%H%M%S`
namefile="log-$Today.txt"

echo "BIENVENIDO FAVOR INGRESAR LOS DATOS"
read -p "NOMBRE: " name
read -p "APELLIDO: " lastName
echo "USUARIO: $name $lastName" >> $namefile
echo "FECHA INGRESO ES: $Today" >> $namefile


