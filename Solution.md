# lab-github <br>

**Étapes pour provoquer un conflit** <br>

Après avoir collaboré avec quelqu'un d'autre pour travailler sur le même référentiel

***Tout d'abord, vous devez cloner votre référentiel*** <br>

```
git clone https://github.com/husseinbouik/lab-github.git
```
***Ensuite, vous devez cloner votre référentiel*** <br>

- puis vous pouvez commencer à modifier les fichiers selon vos tâches
**=>** mais parfois, vous pouvez modifier la même ligne que votre collègue de groupe a également modifiée <br>
Dans cette situation, lorsque vous essayez de fusionner votre branche avec sa branche, vous obtiendrez un conflit.

***Créez votre branche et poussez***
```
git checkout -b <nom-de-la-branche>
```
Remplacez <nom-de-la-branche> par le nom souhaité pour votre nouvelle branche. Cette commande crée une nouvelle branche et passe à celle-ci.<br> 
***Si vous voulez créer la branche mais rester sur votre branche actuelle, vous pouvez omettre le drapeau -b:***

```
git branch <nom-de-la-branche>
```
***Après avoir créé la branche, vous pouvez y passer ultérieurement avec:***

```
git checkout <nom-de-la-branche>
```
Ou, si vous utilisez Git version 2.23 ou ultérieure, vous pouvez utiliser la commande git switch pour changer de branche:

```
git switch <nom-de-la-branche>
```

N'oubliez pas de remplacer <nom-de-la-branche> par le nom réel que vous souhaitez donner à votre nouvelle branche.

***Pour fusionner les branches branche-1 et branche-2 dans la branche principale, suivez ces étapes:***<br>

***Assurez-vous d'être sur la branche principale:***<br>
Avant de commencer la fusion, assurez-vous d'être sur la branche principale. Vous pouvez basculer vers la branche principale avec la commande suivante:

```
git checkout main
```

***Tirez les derniers changements:***<br>

***Il est bon de s'assurer que votre branche principale est à jour avec le référentiel distant avant de fusionner des branches. Vous pouvez le faire avec:***

```
git pull origin main
```
***Fusionnez les branches:***
Pour fusionner la branche-Agadir dans la principale, utilisez la commande suivante:

```
git merge branche-Agadir
```

Ensuite, s'il n'y a pas de conflits, pour fusionner la branche-2 dans la principale, utilisez:

```
git merge branche-Tanger
```
**Résoudre les conflits (le cas échéant):**<br>
S'il y a des conflits lors du processus de fusion, Git fera une pause et vous permettra de les résoudre. Vous devrez ouvrir les fichiers en conflit, résoudre les conflits

**Suivez ces étapes pour résoudre le conflit** <br>

```
<header>
<<<<<<< HEAD
        <h1>Exploring Tanger</h1>
=======
        <h1>Exploring Agadir</h1>
>>>>>>> origin/Agadir

</header>

```
***Accepter le changement actuel***<br>
Utilisez-le si vous voulez conserver le changement actuel et ignorer le changement entrant<br>

***Accepter le changement entrant***<br>
Utilisez-le si vous voulez conserver le changement entrant et ignorer le changement actuel<br>
***Accepter les deux changements***<br>
Utilisez-le si vous voulez conserver les deux changements<br>
***Comparer les changements***<br>
Utilisez-le si vous voulez comparer les changements et voir ce que vous voulez conserver et ce que vous voulez changer<br>


***Ensuite, mettez en scène les fichiers résolus avec:***<br>

```
git add <nom-du-fichier-en-conflit>
```
Une fois que tous les conflits sont résolus, continuez le processus de fusion avec:

```
git merge --continue
```
***Validez les changements fusionnés:***
Après avoir résolu les conflits et vous être assuré que tout est comme vous le souhaitez, validez les changements fusionnés:

```
git commit -m "Fusion des branches branche-1 et branche-2 dans la principale"
```
***Poussez les changements vers le distant:***

Enfin, poussez les changements fusionnés vers le référentiel distant:

```
git push origin main
```
Maintenant, les changements des branches branche-1 et branche-2 sont fusionnés dans la branche principale. Assurez-vous de tester minutieusement le code fusionné pour vous assurer que tout fonctionne comme prévu avant de le déployer en production, le cas échéant.