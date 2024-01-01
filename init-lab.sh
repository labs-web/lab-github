# Création de fichier .code-workspace de vs code
new-item lab.code-workspace
Set-Content lab.code-workspace '{"folders": [{"path": "."}],"settings": {}}'

# init gitflow 
git flow init

#  set develop branch as default 
gh repo edit --default-branch develop

# Add Branch protection rules