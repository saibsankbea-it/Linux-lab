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
Objectif
Comprendre le système de permissions Linux et la gestion des utilisateurs.

### Commandes étudiées

- ls -l
- chmod
- chown
- whoami
- id
- adduser

### Concepts appris

r = lecture (read)
w = écriture (write)
x = exécution (execute)
- = aucun droit
- 
Les permissions sont définies pour :

Le propriétaire (user)
Le groupe (group)
Les autres utilisateurs (others)

### Exercices réalisés

- Observation des permissions
- Modification des droits
- Création d'un utilisateur
- Changement de propriétaire d'un fichier
  
- Ce que j'ai appris
Comprendre les permissions Linux
Lire les résultats de ls -l
Exemple :
-rw-r----- 1 saib saib 0 Jun 7 21:00 test.txt
Utiliser chmod
Exemple : Ajouter un droit d'exécution au propriétaire
chmod u+x test.txt
Retirer le droit de lecture aux autres utilisateurs
chmod o-r test.txt

Gestion des propriétaires
Utiliser chown : change le propriétaire et le groupe du fichier.
Exemple : Changer le propriétaire d'un fichier :
sudo chown utilisateur:utilisateur fichier.txt

Comprendre les droits des utilisateurs, groupes et autres

Permissions numériques
Valeur	Permission
7	       rwx
6	       rw-
5      	 r-x
4	       r--
0        ---

Exemples
chmod 640
rw-r-----
Propriétaire : lecture + écriture
Groupe : lecture
Autres : aucun droit

chmod 755
rwxr-xr-x
Propriétaire : lecture, écriture, exécution
Groupe : lecture, exécution
Autres : lecture, exécution
