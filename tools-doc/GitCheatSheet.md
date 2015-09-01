## Git Cheat Sheet

### Comenzi

1. Connect Bare:master ///disconect
--------------------------------------------------------------------------
pushd //robucsw111/RND/RD_DE_ESTW/L905/b_method/shared/Project/PROJECT.git

popd


02. remote add
--------------------------------------------------------------------------
git remote add server //robucsw111/RND/RD_DE_ESTW/L905/b_method/shared/Project/PROJECT.git



03. history
--------------------------------------------------------------------------
git hist -all  //alias



04. fetch --pull fara actualizare
--------------------------------------------------------------------------
git fetch server



05. pull --face si merge
--------------------------------------------------------------------------
git pull server



06. add
--------------------------------------------------------------------------
git add fis1.x fis2.x fis3.x



07. commit-dupa git add
--------------------------------------------------------------------------
git commit -m "mesaj pt commit"



08. push
--------------------------------------------------------------------------
git push server master(branch)




09. status
--------------------------------------------------------------------------
git status



10. modificare commit
--------------------------------------------------------------------------
git commit --amend -m "Add an author/email comment"



11. config 
--------------------------------------------------------------------------
git config --global --edit



12. check server status
--------------------------------------------------------------------------
git remote show server



13. reset to previous version
--------------------------------------------------------------------------
git reset --hard 0d1d7fc32



### GIT Config file

git config --global --edit

```
[user]
        name = Adi Ghidel
        ename = marius-adrian.ghidel@thalesgroup.com
        email = marius-adrian.ghidel@thalesgroup.com
[alias]
        co = checkout
        br = branch
        ci = commit
        st = status
        pul = pull server master
        pus = push server master
        sstat = remote show server
        conf = config --global --edit
        hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
		
```