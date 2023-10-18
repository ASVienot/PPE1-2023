#usr/bin/bash

while read LINE
do
    echo "la ligne est : $LINE"
done <./Fichiers/location.txt

echo "on a fini"
