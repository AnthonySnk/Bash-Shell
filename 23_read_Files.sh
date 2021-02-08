#!/bin/bash
# programa para ejemplificar como leer en un archivos

echo "Leer en un archivo"
cat $1

echo -e "Almacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la varibale IFS (Internal Field Separator)
# para evitar los espacios en blancos del inicio al final

echo -e "\nLeer archivos linea por linea utilizando While"

while IFS= read linea
do 
    echo "$linea"
done < $1 