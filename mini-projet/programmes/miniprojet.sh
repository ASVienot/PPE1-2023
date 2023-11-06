#!/usr/bin/bash
urlfile=$1

if [ $# -ne 1 ]
then
	echo "un argument attendu exactement"
	exit
fi
#ligne de vérification si on a bien un argument

if [ -f $urlfile ]
	then
		echo "" 
		# ou echo "le fichier existe"
	else
		echo "on attend un fichier qui existe"
		exit
fi
#vérifie qu'on a un seul argument et que le fichier existe

num_ligne=1

while read -r line;
do
	status=$(curl -i -s $line |egrep "^HTTP"| head -n 1)
	#trouve les infos qui commence par HTTP et prend la premiere ligne
	echo -e "$num_ligne\t$line\t$status";
	# affiche avec une tab entre le num_ligne l'URL et le status de l'url
	num_ligne=$(expr $num_ligne + 1)
	#le séparateur par tab -e \t
done < "../urls/fr.txt"
