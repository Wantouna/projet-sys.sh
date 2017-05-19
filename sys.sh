#!/bin/bash
echo "Bienvenue dans mon projet sys - Waï Wantouna Ndanga Bienvenue 14A375FS"
selection="z"
until [ $selection = "q" ]
do
  echo "Choisir l'option à exécuter:"
  echo "a) Informations des utilisateurs enregistrés il y'a 3 jours"
  echo "b) Acquisition installation et lancement de l'environnement XAMPP"
  echo "c) Archivage des elements du repertoire personnel qui ont été modifiés par l'utilisteur sudoer il y' 2 jours dans un périphérique externe"
  echo "d) Information sur l'utilisation du disque, da la mémoire, du processeur et de la swap"
  echo "q) Quitter"
  read selection
  case $selection in
   a) cat /etc/passwd | grep bash ;;
   b) wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/5.6.28/xampp-linux-x64-5.6.28-1-installer.run/download
      sudo chmod 775 xampp-linux-x64-5.6.28-1-installer.run;
      sudo ./xampp-linux-x64-5.6.28-1-installer.run;
      sudo /lamp/lamp/ start;;
   c) tar -zcvf archivePerso.tar.gz ~/; cp archivePerso.tar.gz /dev/sdb ;;
   d) top ;;
   q) echo "Merçi d'avoir utiliser le programme." ;;
   #default
   *) echo "entrer un choix valide" ;;
  esac
done
