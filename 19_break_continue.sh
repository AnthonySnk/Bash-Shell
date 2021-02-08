#!/bin/bash
#Programa para ejemplificar el break y continue
echo "SENTENCIAS BREAK Y CONTINUE"
for fil in $(ls)
do
    for nombre in {1..3}
    do
        if [ $fil = "16_for_loop.sh" ]; then
            echo "Se encontro el archivo $fil y por eso se termian el bucle interno"
            echo "************************************************************"
            break;
        elif [[ $fil == 18* ]]; then
            echo "Se encontro el archivo $fil y continua"
            echo "************************************************************"
            continue;
        else
            echo "Nombre archivo:$fil _ $nombre"
        fi
    done
done