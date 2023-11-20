#!/usr/bin/env bash

 URLS=$1 

if [ $# -ne 1 ]
then
	echo "un argument attendu exactement"
	exit
fi
#ligne de vérification si on a bien un argument

if [! -f $1 ]
	then
		echo "On attend un fichier, pas un dossier" 
	else
		echo ""
fi

echo -e " <html><body><table><tr> <th> numero </th><th> URL </th><th> reponse </th><th> encodage </th></tr>"

lineno=1 

while read -r URL
#tant que l'on arrive a lire une ligne en considérant la variable étendu URL (désignation de la variable URL en même temps)
do 
    response=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)
    encoding=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL| grep -P -o "charset=\S+" | cut -d = -f 2)
    echo -e "<tr><td> $lineno  </td> <td> $URLS </td> <td>$response</td><td>$encoding</td></tr>"
    lineno=$(expr $lineno + 1)
done < $URLS


echo -e "</table> </body> </html>