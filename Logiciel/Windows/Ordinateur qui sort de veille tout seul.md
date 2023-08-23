1) Détecter les périphériques qui peuvent réveiller l’ordinateur :
    - Lancer dans le cmd la commande suivante  (les droits administrateurs ne sont pas demandés) :
```bash
    powercfg -devicequery wake_armed
```
Voilà la liste des périphériques qui peuvent sortir le PC de veille.

----------------------------------------------------
(exemple) :

Microsoft Windows [version 10.0.19045.3324]
(c) Microsoft Corporation. Tous droits réservés.

C:\Users\rcsup>powercfg -devicequery wake_armed
NVIDIA USB Type-C Port Policy Controller
Périphérique clavier IHM

----------------------------------------------------

2) Désactiver les périphériques qui peuvent sortir le PC de veille :
Lancer le "gestionnaire de périphériques" (les droits admin ne sont pas demander) :
rechercher les périphériques cités par la commande.

Donc dans notre cas c'est :
    NVIDIA USB Type-C Port Policy Controller
ainsi que :
    Périphérique clavier IHM
qui peuvent poser des problèmes.

une fois trouver, aller dans les propriétés du périphérique, puis Gestion de l'alimentation,
et décocher : "Autoriser ce périphérique à sortir l'ordinateur du mode veille"

3) une fois que vous pensez avoir désactivé tous les périphériques qui peuvent poser problème,
relancer la commande pour être certains que tout est bon :
```bash
    powercfg -devicequery wake_armed
```
vous devez obtenir cela pour que ça soit bon : 

----------------------------------------------------
(Résultat voulu) :

C:\Users\rcsup>powercfg -devicequery wake_armed
AUCUN

----------------------------------------------------

Normalement le PC pourra donc enfin ce mettre en veille !

Infos sympas à savoir :
Ce problème peut apparaitre au moment d'un changement de périphérique sur votre ordinateur;
dans mon cas c'est après avoir changé la carte graphique que ce problème est survenu.

En plus cela se confirme bien car je suis passé d'une carte AMD a NVIDIA;
donc le périphérique "NVIDIA USB Type-C Port Policy Controller"
A donc dû causait ce problème

___________________________________________________________________________________________________________

Cette page a été écrite le [23/08/2023] par [Raphael.C] pour la DMI de France-OPG
___________________________________________________________________________________________________________