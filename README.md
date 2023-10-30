# Travail à faire
## Comment utiliser les méthodes Git ?
#### Vous devez collaborer avec quelqu'un et ouvrir un conflit en utilisant les méthodes git.












### lab-github <br>

**Steps to make conflict** <br>

After collaborate with someone else to work on same repo 

***First you need to clone your repo*** <br>

```
git clone https://github.com/Jalil-Betroji/lab-github.git

```
***than you need to clone your repo*** <br>

- than you can start changing in files according to your tasks
**=>** but sometimes you may change same line that your group mate changed too <br>
 in this stuation when you try to merge your branch with his branch you will get a conflict.

***Create your branch and push***
```
git checkout -b <branch-name>
```
Replace <branch-name> with the desired name for your new branch. This command creates a new branch and switches to it.<br> 
***If you want to create the branch but stay on your current branch, you can omit the -b flag:***

```
git branch <branch-name>
```
***After creating the branch, you can switch to it later using:***

```
git checkout <branch-name>
```
Or, if you're using Git version 2.23 or later, you can use the git switch command to switch branches:

```
git switch <branch-name>
```

Remember to replace <branch-name> with the actual name you want to give to your new branch.

***To merge branches barnch-1 and branch-2 into the main branch, follow these steps:***<br>

***Ensure You're on the Main Branch:***<br>
Before you start merging, ensure that you are on the main branch. You can switch to the main branch using the following command:

```
git checkout main
```

***Pull the Latest Changes:***<br>

***It's a good practice to ensure your main branch is up-to-date with the remote repository before merging any branches. You can do this with:***

```
git pull origin main
```
***Merge the Branches:***
To merge the barnch-1 into main, use the following command:

```
git merge barnch-1
```

Then, if there are no conflicts, to merge the branch-2 into main, use:

```
git merge hussein
```
**Resolve Conflicts (If Any):**<br>
If there are conflicts during the merge process, Git will pause and allow you to resolve them. You'll need to open the conflicted files, resolve the conflicts

**follow this steps to resolve conflict** <br>

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
***Accept Current Change***<br>
use it if you want to keep the current change ignore the Incoming Change<br>

***Accept Incoming Change***<br>
use it if you want to keep the Incoming Change ignore the current Change<br>
***Accept Both Changes***<br>
use it if you want to keep the both Changes<br>
***Compare Changes***<br>
use it if you want to caompare changes and see what you want to keep and what you want to change <br>


***then stage the resolved files using:***<br>

```
git add <conflicted-file-name>
```
Once all conflicts are resolved, continue the merge process with:

```
git merge --continue
```
***Commit the Merged Changes:***
After resolving any conflicts and making sure everything is as you want it, commit the merged changes:

```
git commit -m "Merge branch-1 and branch-2 into main"
```
***Push the Changes to Remote:***

Finally, push the merged changes to the remote repository:

```
git push origin main
```
Now, the changes from the bracnh-1 and branch-2 branches are merged into the main branch. Make sure to thoroughly test the merged code to ensure everything is working as expected before pushing to production if applicable.