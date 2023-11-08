 URLS=$1 

lineno=1 

while read -r URL
do 
    response=$(curl -s -I -L -w "%{http_code}" (/dev/null) 
    encoding=$(curl -s -I -L -w "%{content_type}"| grep -P -o "charset=\S+" | cut -d"=" -f2)
    echo -e "$lineno\t$URLS\t$response\t$encoding"
    lineno=$(expr $lineno + 1)
done < $URLS

