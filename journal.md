# Journal de Alix Sirven-Vienot 
## 1. Séance du 20 septembre

Pas tout compris au projet mais plein d'idées et très excitée de m'y mettre ! 

## 27/09
Changement de salle YOUPI merci !
J'ai installé la commande tree. 
Pour afficher l'arbre taper : tree -d.
Pour l'exercice beaucoup de difficultés. Failli le faire à la main d'énervement... (après avoir vu le nombre de fichiers, je m'y suis remis et j'ai fait la partie .txt)
Utilisation de chemins longs et compliqués pour l'exercice. De toute façon besoin de recommencer j'ai perdu les fichiers .ann

### 2. Séance du 28/09
Exercice tri de fichiers fini avec des moyens beaucoup plus courts ! (et avec les fichiers .ann)
Exercice github aussi mais du coup besoin de le synchroniser...
Fait et réussi ! (on y retourne pour une dernière synchonisation)
En route!!! (depuis ordi)
C'est bon !!! (depuis github) 
Ajout de tag (j'avais oublié les "" ça va mieux marcher maintenant)

## 3. Séance du 04/10
J'ai un groupe avce Pauline et une personne de l'INALCO


## 4. Séance du 11/09

Pas tout compris mal compris la fiche td 
En cas de soucis git reset --hard
Installer peut-être un éditeur de texte dans le terminal (nano/micro?)


# Préparation S5

Appeler le scrit avec `bash` !
Pas oublier le `chmod +x script`
Exos slide 24, 26, 29
cat ./201*/*/* | egrep "Location" | cut --f 3 |sort | uniq -c | sort -nr | head

### Slide 24:

### Slide 26:
Creation script:
`cat ./2016/*/* | grep Location | wc -l`

### Slide 29:


## 5. Séance du 18/10
Instructions de contrôle
-> conditionel
-> boucle
```
#usr/bin/bash
if [[ $1 =~ bon(jour|soir) ]]
then
   echo "coucou"
else
    echo "fin de programme"
fi
```

```
#usr/bin/bash
echo "le premier argument est: ($1)"

if [ -n "$1" ]
then
    echo "le premier argument n'est pas vide"
    if [[ $1 =~ bon(jour|soir) ]]
    then
        echo "coucou"
    fi
else
    echo "le premier argument est vide"
fi
echo "fin de programme"
```
Utiliser -z à la place de -n doit inverser les arguments

> Pour le projet
commandes interessantes
`lynx -nolist -dump plurital.org`
`linx -dump plurital.org`
`lynx -listonly -dump plurital.org`

essayer les options de la commande `curl`


#### Ne pas oublier
Sous Linux tout est fichier
Bash pense que tout est texte Attention aux nombres
Attention aux espaces (toujours dans les crochet)

Ctrl+U => Ouvrir Html d'une page

