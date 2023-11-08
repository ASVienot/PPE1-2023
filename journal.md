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


## Préparation S5

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


## Préparation S6  
Les scripts ne marchent pas bien 
Je ne comprend pas très bien les exercices 
Je reprendrais les deux derniers TD pendant les vacances mais cette semaine je n'ai pas le temps 
MAIS réussi a jouer avec les git commits / faire git dans vs code / créer un script sans les slides sous les yeux
J'ai jouer avec controle U dans la semaine et essais de lynx 

## S6. 25/10 

1. écriture de la chaine de traitement 
2. écrire sortie tableau 
Mini-projet 


## Vacances Plan 
Quelques difficultés depuis le début de l'année. 
- Remplir le journal de tout ce que j'ai oublié 
- finir les scripts 
- avancer mini-projet
- trouver le mot avec le groupe  
- Fiche dans mon cahier guide 
    - git FAIT !
    - linux / bash FAIT !
    - stdin /stdout FAIT !
    - script / début ...
    - lynx / bon pas eu le temps en fait 

### exos vacances 
    Mini projet: 
Soucis: mon terminal ne voulait plus ouvrir alors que ça marchait pendant le cours 
solution: bidouillage paramètre avec Pauline (dans properties)
Pour les Urls il manque le début (https://) code erreur : 301 (début de code pour le rajouter sur les urls a qui cela manque mais pas concluant du coup mis en commentaire il me manque un bout de quelque chosse mais je ne sais pas quoi (commande sed ou les mettre dans un nouveau fichier corrigé?))
Code 404 parce qu'il manque un accent (éssayé de bidouiller mais pas trop sur de savoir comment)
et 502 je pense que je ne peux rien faire 

Bon la veille du rendu forcèment les commandes qui marchaient individuellement ne marchent plus ensemble et bash ne reconnait plus le script 
La bidouille faite avec Pauline depuis properties n'est plus le soucis 
Je vais quand même le commit sans avoir pu revérifier si il marchait
Autant pour moi ça remarche très bien j'ai résolu les erreurs de chemins (ouverture du terminal au mauvais endroit) et une erreur de notation de fonction (reminder de leur donné le même nom à chaque ligne sinon on s'emmèle les pinceaux)

## S6 
Correction du script 
Présentation de l'exo supplémentaire 
-> Stats sur Candide 
document pas très propre doit le préparer 


## exos supp 






#### Ne pas oublier
Sous Linux tout est fichier
Bash pense que tout est texte Attention aux nombres
Attention aux espaces (toujours dans les crochet)
$ = affecte la valeur / récupère la valeur 
le séparateur par tab `-e ...\t`


Ctrl+U => Ouvrir Html d'une page


## PROJET 
Pauline et Siman; Anglais, Français et chinois
Mot = Alcohol ou jeux vidéo (peut-être soucis avec le mot composé) 
50 liens 
trois langues 
site web (le plus important c'est liraita fonctionalité) (je sais plus ce que ça veut dire à CHERCHER !!!!)
200 = pas d'erreurs 
Encodage doit être en UTF-8 
mot peut être polysémique mais attention aux langues 

une partie sur ce à quoi on s'attend 
Pas besoin de grosse annalyse doit être motivée 

Premiere ligne qui commence par HHTTP 

