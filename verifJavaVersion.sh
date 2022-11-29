#!/bin/bash
# ./verifJavaVersion

# Si java non valide lance la boite de dialogue pour le télechargement
javaInvalide()
{
	if [ $1 -eq 0 ]
	then
		whiptail --title "Installation Java" --yesno "Vous n'avez pas Java\nVoullez-vous télécharger Java jdk 16 ?" 10 50
	else
		whiptail --title "Installation Java" --yesno "Votre version de Java est inférieur a la 16.\nVoullez-vous télécharger Java jdk 16 ?" 10 50
	fi
	if [ $? -eq 0 ]
	then
		xdg-open 'https://www.techspot.com/downloads/downloadnow/7407/?evp=bb667956a140a1a0a56260d7df5d40bf&file=9977' 
		# Au cas où le 1er lien ne marche pas
		#'https://www.techspot.com/downloads/7407-java-se-16.html#download_scroll'
	fi

	return 0

}
# Si java est valide alors on lance une boite de dialogue pour prévenir 
javaValide()
{
	whiptail --title "Java Valide" --msgbox "Votre version de java est valide" 10 50

	return 0
}


# verification de l'existence de java
java --version > a.txt #redirection vers un fichier, pour éviter de poluer le terminal

if [ $? -ne 0 ]
then
	javaInvalide 0
fi
rm -f a.txt

version=$(java --version | cut -d ' ' -f2 | cut -d '.' -f1 | head -1)

if [ $version -ge 16 ]
then
   	javaValide 
else
	javaInvalide 1
fi


