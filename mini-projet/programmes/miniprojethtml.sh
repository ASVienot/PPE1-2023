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

echo "<html>
	<head> 
		<meta charset=\"UTF-8\" >
	</head>
	<body>"
echo "		<table>
			<tr><th>ligne</th><th>url</th><th>code HTTP</th><th>encodage</th></tr>"

lineno=1 

while read -r URL
do
    response=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)
    encoding=$(curl -s -I -L -w "%{content_type}"| grep -P -o "charset=\S+" | cut -d"=" -f2)
	lineno=$(expr $lineno + 1)
    echo "<tr>
		<th>$lineno</th>
		<th>$URL/th>
		<th>$response</th>
		<th>$encoding</th>
	</tr>"
done < "$URLS"


echo " 	</table>
	</body>
</html>"