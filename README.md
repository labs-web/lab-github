# lab-github 

## Travail à faire

- Créez un fichier index.html sur la branche principale, dupliquez-le dans deux autres branches, modifiez la même ligne dans ces deux branches et fusionnez-les avec la branche principale.

### Critères de validation 

- Créer deux branches à partir de la branche principale
- Modifier la même ligne dans les deux branches
- Fusionner les branches dans la branche principale en utilisant la fusion
- Créer des conflits
- Résoudre les conflits

#### Référence :

[how to resolve conflicts](https://code.visualstudio.com/docs/sourcecontrol/overview#:~:text=Resolving%20conflicts,shows%20an%20Accept%20Combination%20button.)

##### Commands

1. 

```
git pull origin main
```
1. 

```
git merge barnch-1
```

2. 

```
git merge branch-2
```
3. 

```
<body>
<<<<<<< HEAD
    Hello im jalil betroji a full stack developer and solicode intern
=======
    hussein ipsum dolor sit amet consectetur adipisicing elit. 
>>>>>>> origin/hussein
    Sed maiores quo debitis harum dolorum, itaque aliquid reiciendis 
    quasi repellendus aliquam alias ipsam eligendi earum voluptate totam! Quos deleniti pariatur nemo?
    ll
    lorem
    MMMM
</body>

```


4. 

```
git add <conflicted-file-name>
```
5. 

```
git merge --continue
```
6. 

```
git commit -m "Merge branch-1 and branch-2 into main"
```
7. 

```
git push origin main
```