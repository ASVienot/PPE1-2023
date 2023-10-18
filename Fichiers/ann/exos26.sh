#!/usr/bin/bash
cat ./2016/*/* | grep Location | wc -l
echo -n "Le mot'Location' en 2016 est répétés: "
