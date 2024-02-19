---
layout: default

order: 2
---


# utiliser-scripts-comme-sous-module-git

Exemple pratique : création d'un sous module pour le projet scrips dans le lab-powershell

## Création d'un sous module pour le projet : scripts

```bash
 git submodule add https://github.com/labs-web/scripts.git
```

remarquez la création du fichier ``.gitmodules`` avec le contenue suivant : 

```conf
[submodule "scripts"]
	path = scripts
	url = https://github.com/labs-web/scripts.git
```

## Modification de /script depuis l'intérieur

```bash
cd ./scripts
git fetch
git pull
git add .
git commit -m "modification dans script"
git push
```

## Clone 

```bash
git clone --recurse-submodules https://github.com/labs-web/lab-powershell.git
```

## git status 

```bash
git status  --recurse-submodules
```

## git fetch

```bash
git fetch --recurse-submodules
```

## git pull

```bash
git submodule update --init 
git submodule update --remote
```
ou

```bash
git submodule update --init --remote
```

si le submodule contient aussi un submodule
```bash
git submodule update --init --recursive
git submodule update --recursive --remote
```

## git push


## Références 
- [Utilitaires Git - Sous-modules](https://git-scm.com/book/fr/v2/Utilitaires-Git-Sous-modules)
