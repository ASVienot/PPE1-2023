#!/usr/bin/env bash

#paste col1 col2 | sort |uniq -c | sort n | less 

#exo 3 veut des bigrames 

fichier=$1
bash text2colonne.sh $fichier > col1
echo "_" > col2 
bash text2colonne.sh $fichier >> col2 
paste col1 col2 
