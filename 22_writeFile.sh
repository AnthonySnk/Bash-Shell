#!/bin/bash
# programa para ejemplificar como escribir en un archivos

# EOM: End Of Message
# EOF: End Of File
echo "Escribiendo Archivos"

echo "Valores escritor con echo" >> $1

#adicion multilinea

cat <<EOM >>$1
$2
EOM
