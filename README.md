# Script permettant de détecter la version de Java sous Linux
Permet de savoir si **Java** est installé sur l'ordinateur sur lequel ce script est lancé.
Si Java est installée, mais n'a pas la bonne version, le script affiche une boite de dialogue interne au terminal permettant de télécharger automatiquement Java jdk 16.

1. Lancement du script
    * Terminal Linux
2. Modification du script
    * Changer les versions valides
    * Changer le lien de téléchargement
 

## 1. Lancement du script
Pour lancer le script, il existe une seule solution, via un terminal.

### Terminal Linux
Après avoir téléchargé le script, ouvrez un terminal, puis placer vous dans le répertoire où se situe le script, à l'aide de la commande "cd".

Une fois le terminal ouvert dans le bon répertoire écrivez `chmod u+x verifJavaVersion.sh` puis `./verifJavaVersion.sh` .

## 2. Modification du script
### Changer les versions valides
Si vous voulez changer les versions de java valide, il vous faut remplacer le nombre `16` ou la valeur de comparaison numérique `-ge` à la ligne 41 afin de sélectionner que les versions souhaitée.

Extrait de la ligne 41 :
```sh
if [ $version -ge 16 ]
```


### Changer le lien de téléchargement
Si vous voulez changer la version de Java installée en cas d'absence de Java ou de version de Java non-valide, il faut changer le lien après `xdg-open` à la ligne 15.

Extrait de la ligne 15 :
```sh
xdg-open 'https://www.techspot.com/downloads/downloadnow/7407/?evp=bb667956a140a1a0a56260d7df5d40bf&file=9977' 
```

Il est important de noter que sous le lien de la ligne 15 se trouve un autre lien au cas où le premier ne serais plus valide. 

**Script shell basé sur le script batch de FloRobart ( https://github.com/FloRobart/detecte_java-version/ )**
