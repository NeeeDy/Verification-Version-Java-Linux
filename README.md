# Script permettant de détecter la version de Java sous Linux
Permet de savoir si **Java** est installé sur l'ordinateur sur lequel ce script est lancé.
Si Java est installée, mais n'a pas la bonne version, le script affiche une boite de dialogue interne au terminal permettant de télécharger automatiquement Java jdk 16.

1. Lancement du script
    * Interface graphique Linux
    * Terminal Linux
2. Modification du script
    * Changer les versions valides
    * Changer le lien de téléchargement
 

## 1. Lancement du script
Pour lancer le script, il existe une seule solution, via un terminal.

### Terminal Linux
Après avoir téléchargé le script, ouvrez un terminal, puis placer vous dans le répertoire où se situe le script, à l'aide de la commande "cd".

Une fois le terminal ouvert dans le bon répertoire écrivez `./verifJavaVersion.sh` .

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
xdg-open 'https://www.techspot.com/downloads/7407-java-se-16.html#download_scroll'
```

** Script shell basé sur le script batch de FloRobart ( https://github.com/FloRobart ) **
