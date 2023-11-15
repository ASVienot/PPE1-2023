#!/usr/bin/env bash

fichier = "$1"
#TOPN = "$2" 

#vérifie qu'on a un argument 
if [! -f "$1"]
# si non est fichier premier argument 
then 
	echo "text2colonne: Pas de fichier donné en argument"
	exit 1 
fi

if [-z "$2"]
then 
	TOPN= 25 
else 
	TOPN= $2
fi 
#si argument 2 vide remplacer par 25
#mieux car on assigne des valeurs a TOPN au même endroit 

if ! [[ "$TOPN"=~ ^0*[1-9] [0-9]*$]]
# deux crochet = test avancé qui permet de faire des expressions régulières / le dollard ici contextualise 
#ici = chiffre positif
then 
	echo "donnez moi un chiffre" 
	exit 
fi 

# trier les 
cat "$fichier" | sort |uniq -c | tail -n $TOPN

