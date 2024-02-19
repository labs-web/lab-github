# Utilisation de git avec Visual Studio Code

## Installation

## Utilisation 

## git fetch automatique

> VS Code is able to periodically fetch changes from your remotes. This enables VS Code to show how many changes your local repository is ahead or behind the remote. This feature is disabled by default and you can use the git.autofetch setting to enable it.

Fichier : lab-github.code-workspace

```json
{
    "folders": [
        {
            "path": "."
        }
    ],
    "settings": {
        "git.autofetch": true
    }
}


```

## Références 

- [Using Git source control in VS Code](https://code.visualstudio.com/docs/sourcecontrol/overview)