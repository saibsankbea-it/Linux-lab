# Linux Lab

Projet personnel d'apprentissage en administration systèmes, réseaux et cybersécurité.

## Objectifs

- Maîtriser Linux Ubuntu
- Comprendre les réseaux TCP/IP
- Déployer des services Linux
- Apprendre les bases de la cybersécurité
- Préparer une montée en compétences vers AWS

## Progression

### Jour 1

#### Commandes étudiées
- pwd
- ls
- cd
- mkdir
- touch
- rm

##### Exercices réalisés

###### Commandes utilisées
pwd, ls, cd, mkdir, touch, cp, mv, rm

- Création d’une structure de dossiers
- Manipulation de fichiers
- Copie et déplacement de fichiers
- Suppression de fichiers et dossiers



#### Ce que j'ai appris
- Navigation dans l'arborescence Linux
- Gestion basique des fichiers et dossiers
- J'ai appris à créer, naviguer et supprimer des fichiers sous Linux.
- Linux permet de gérer les fichiers via des commandes simples mais puissantes.

- ## Niveau 2 - Permissions Linux
- Objectif
- Comprendre le système de permissions Linux et la gestion des utilisateurs.

### Commandes étudiées

- ls -l
- chmod
- chown
- whoami
- id
- adduser

### Concepts appris

- r = lecture (read)
- w = écriture (write)
- x = exécution (execute)
- - = aucun droit
- 
- Les permissions sont définies pour :

- Le propriétaire (user)
- Le groupe (group)
- Les autres utilisateurs (others)

### Exercices réalisés

- Observation des permissions
- Modification des droits
- Création d'un utilisateur
- Changement de propriétaire d'un fichier
  
- Ce que j'ai appris
- Comprendre les permissions Linux
- Lire les résultats de ls -l
- Exemple :
- -rw-r----- 1 saib saib 0 Jun 7 21:00 test.txt
- Utiliser chmod
- Exemple : Ajouter un droit d'exécution au propriétaire
- chmod u+x test.txt
- Retirer le droit de lecture aux autres utilisateurs
- chmod o-r test.txt

- Gestion des propriétaires
- Utiliser chown : change le propriétaire et le groupe du fichier.
- Exemple : Changer le propriétaire d'un fichier :
- sudo chown utilisateur:utilisateur fichier.txt

- Comprendre les droits des utilisateurs, groupes et autres

- Permissions numériques
- Valeur 	Permission
- 7	       rwx
- 6	       rw-
- 5      	 r-x
- 4	       r--
- 0        ---

- Exemples
- chmod 640
- rw-r-----
- Propriétaire : lecture + écriture
- Groupe : lecture
- Autres : aucun droit

- chmod 755
- rwxr-xr-x
- Propriétaire : lecture, écriture, exécution
- Groupe : lecture, exécution
- Autres : lecture, exécution

## Niveau 3 - SSH

### Commandes étudiées

- ssh
- localhost
- ip a
- ss -tulpn
- systemctl status ssh

- ## Ce que j'ai appris

- SSH (Secure Shell) est un protocole permettant de se connecter à une machine distante de manière sécurisée via un réseau.

- J'ai réalisé une connexion SSH vers localhost afin de tester le fonctionnement du protocole.

- Le service SSH écoute par défaut sur le port 22.

- Commandes utilisées :
- ssh localhost
- ip a
- ss -tulpn | grep ssh
- systemctl status ssh



## Niveau 4 - Clés SSH

### Commandes étudiées

- ssh-keygen
- ls -la ~/.ssh
- cat ~/.ssh/id_ed25519.pub

### Ce que j'ai appris

- Les clés SSH permettent de s'authentifier sans utiliser de mot de passe.

- Une paire de clés est composée :

- d'une clé privée
- d'une clé publique

- La clé publique peut être ajoutée à un serveur Linux ou à GitHub.

- Le fichier authorized_keys contient les clés publiques autorisées à se connecter à un utilisateur.

- ### Permissions des clés SSH

- Clé privée :

- -rw-------
- (600)

- Seul le propriétaire peut lire et modifier la clé.

- Clé publique :

- -rw-r--r--
- (644)

- La clé publique peut être lue par les autres utilisateurs.

- La clé privée doit rester secrète tandis que la clé publique peut être partagée avec des serveurs pour permettre l'authentification.

### Clés SSH

- J'ai généré une paire de clés SSH avec :

- ssh-keygen -t ed25519

- Une paire de clés est composée :

- d'une clé privée (id_ed25519)
- d'une clé publique (id_ed25519.pub)

- La clé privée doit rester secrète.

- La clé publique peut être ajoutée à des serveurs ou à GitHub pour permettre une authentification sans mot de passe.


## Révision

### Ce que je maîtrise

- pwd
- ls
- cd
- mkdir
- touch
- cp
- mv
- rm
- chmod
- chown
- ssh
- ssh-keygen

- J'ai appris les bases de l'administration Linux. Je sais naviguer dans l'arborescence avec pwd, cd et ls, créer et gérer des fichiers avec mkdir, touch, cp, mv et rm. J'ai également étudié les permissions Linux avec chmod et chown, ainsi que la gestion des utilisateurs. Ensuite, j'ai découvert SSH pour l'administration à distance et j'ai généré une paire de clés SSH Ed25519 afin de comprendre l'authentification par clé publique et clé privée.

## Niveau 6 - Réseaux Linux

### Commandes

- ip a
- ip route
- ping
- hostname
- hostname -I
- cat /etc/resolv.conf

### Ce que j’ai appris

- Une machine a une adresse IP
- La passerelle permet d’accéder à Internet
- Le DNS traduit les noms (google.com → IP)
- On peut diagnostiquer un problème réseau étape par étape


Comment tu diagnostiques un problème réseau ?
Je commence par vérifier l’adresse IP avec ip a.
Ensuite je vérifie la route par défaut avec ip route.
Je teste la connectivité avec ping 8.8.8.8.
Enfin je teste la résolution DNS avec ping google.com.
Cela me permet de distinguer un problème réseau, passerelle ou DNS.


## Niveau 7 - Processus et services Linux

### Commandes

- ps
- ps aux
- top
- kill
- systemctl

### Ce que j’ai appris

Les processus représentent les programmes en cours d’exécution.

Les services sont des processus système importants.

On peut surveiller et gérer les processus avec des commandes Linux.
ps affiche une photo instantanée des processus à un moment donné.
top affiche les processus en temps réel, avec mise à jour continue.
kill envoie un signal à un processus (souvent pour l’arrêter via son PID).

Important :

ce n’est pas toujours “tuer” directement
ça peut envoyer d’autres signaux (restart, stop propre, etc.)
systemctl permet de gérer les services système (start, stop, restart, status).

Exemple :

systemctl status ssh
systemctl start ssh
systemctl restart ssh

