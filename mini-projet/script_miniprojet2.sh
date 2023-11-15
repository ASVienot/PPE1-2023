#!/usr/bin/env bash

#vérifie qu'on a un seul argument et que le fichier existe
if [! -f "$1"]
# si non est fichier premier argument 
then 
	echo "text2colonne: Pas de fichier donné en argument"
	exit 1 
fi

fichier = "$1"
#$1 = le premier argument ? 


#formatage du texte 
cat "$fichier" | grep -P -o  '\p{Latin}' | tr '[:upper:]' '[:lower:]' | tr 'éàùôêèîû' 'ÉÀÙÔÊÈÎÛ' | less
# 1 mot par ligne 
#pas de ponctuation + tout en minuscule  
#|lesss = que le début 
