#!/usr/bin/env bash

if [ $# -ne 1 ]
then
	exit
fi
#vérifie qu'on a un argument

num_ligne=1

while read -r line;
do
	echo -e "$num_ligne\t$line";
	num_ligne=$(expr $num_ligne + 1)
	#le séparateur par tab -e \t
done < "urls/fr.txt"
#comment transformer ligne du dessus en parmètre
