#!/bin/bash
#Programa para ejemplificar los loops anidads

echo "LOOPS ANIDADOS"
for fill in $(ls)
do
    echo "=========== FILES ========="
    for nombre in {1..4}
    do
        echo "Nombre del archivo: $fill_$nombre"
    done
done