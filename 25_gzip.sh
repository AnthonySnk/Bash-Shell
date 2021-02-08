#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip

echo "Empaquetar todos los scripts de la carpeta ShellCourse"

tar -cvf ShellCourses.tar *.sh

#Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip ShellCourses.tar

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 9_options.sh