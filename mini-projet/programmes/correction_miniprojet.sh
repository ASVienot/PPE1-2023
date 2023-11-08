#!/usr/bin/env bash

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

 URLS=$1 

lineno=1 

while read -r URL
#tant que l'on arrive a lire une ligne en considérant la variable étendu URL (désignation de la variable URL en même temps)
do 
    response=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)
    encoding=$(curl -s -I -L -w "%{content_type}"| grep -P -o "charset=\S+" | cut -d"=" -f2)
    echo -e "$lineno\t$URLS\t$response\t$encoding"
    lineno=$(expr $lineno + 1)
done < $URLS










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


#Correction Url doit commencer par https :

#line=1
#while read -r line
#do
#url=$line 
#if ["$url" == ^https?//]
#	then
#		echo "l'url est bonne" 
#		echo "$url" 
#	else
#		echo -e "https://$url" 
#fi
#done < "$1" > "../urls/corrigee.txt"


num_ligne=1

while read -r line;
do
	status=$(curl -i -s $line |egrep "^HTTP"| head -n 1)
	#trouve les infos qui commence par HTTP et prend la premiere ligne
	encodage=$(curl -i -s $line|egrep -o "charset=.*\b")
	#trouver l'encodage
	echo -e "$num_ligne\t$line\t$status\t$encodage";
	# affiche avec une tab entre le num_ligne l'URL et le status de l'url
	num_ligne=$(expr $num_ligne + 1)
	#le séparateur par tab -e \t
	#après peut le stdout en tableau car fichier tabulé
done < "./urls/fr.txt"
