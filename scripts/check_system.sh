#!/bin/bash

echo "====================================="
echo "       ETAT DU SERVEUR LINUX"
echo "====================================="


echo
echo "Nom de la machine : $(hostname)"


echo
echo "Utilisateur : $(whoami)"


echo
echo "Date : $(date)"


echo
echo "Adresse IP : $(hostname -I)"


echo
echo "Temps de fonctionnement :"
uptime


echo
echo "Mémoire RAM :"
free -h


echo
echo "Espace disque :"
df -h


echo
echo "Utilisateurs connectés :"
who


echo
echo "Etat du service SSH :"
systemctl status ssh --no-pager


echo
echo "=========== Analyse terminée ========="
