#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip

echo "Empaquetar todos los scripts de la carpeta ShellCourse"

tar -cvf ShellCourses.tar *.sh

#Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
pbzip2 -f ShellCourses.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > ShellCoursedos.tar.bz2
