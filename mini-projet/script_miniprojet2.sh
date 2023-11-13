#!/usr/bin/env bash
fichier=$1

if [ $# -ne 1 ]
then
	echo "un argument attendu exactement"
	exit
fi
#ligne de vérification si on a bien un argument
if [ -f $fichier ]
	then
		echo "" 
		# ou echo "le fichier existe"
	else
		echo "on attend un fichier qui existe"
		exit
fi
#vérifie qu'on a un seul argument et que le fichier existe

#formatage du texte 

# 1 mot par ligne 

#pas de ponctuation + tout en minuscule 

while read -r TEXT
do 
	grep -f

	echo #nom de fichier
done < "./candide.txt"






























if [ $# -ne 1 ]
then
	echo "un argument attendu exactement"
	exit
fi
#ligne de vérification si on a bien un argument

if [! -f $URLS ]
	then
		echo "On attend un fichier, pas un dossier" 
	else
		echo ""
fi
