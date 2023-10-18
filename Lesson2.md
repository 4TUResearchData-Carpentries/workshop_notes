# Lesson 2 Branching and remote operations 


---
---
## Episode 1: Branching

---
### 2.1.1 Create, rename, change and delete branches

    git status 
    git branch
    git branch B1
    git branch
    git status 
    cat Lines.txt 
    git log --oneline
    git branch -m B1 B2
    git log --oneline
    git branch -d B2
    git log --oneline
    git branch -m master foo
    git log --oneline
    git branch -d foo
    git branch -m foo main
    git branch
    git status 
    git log --oneline
    git branch B1
    git branch
    git log --oneline
    git switch
    git switch B1
    git log --oneline
    git branch B2
    git log --oneline
    git switch B2
    git log --oneline
    git switch main 
    git log --oneline
    [exercise](./exercises/L2-ex01)
    git branch
    git branch -d B1 B2
    git branch
    git log --oneline 
    cat Lines.txt

---    
### 2.1.2 Develop and compare branches

    git branch B1
    git branch B2
    git branch                                                          # on branch main
    echo 'ninth line' >>Lines.txt 
    git status 
    git add Lines.txt 
    git commit -m 'Add ninth line on main' Lines.txt 
    git log --oneline
    git status 
    git switch B1                                                       # on branch B1
    git status 
    git log --oneline
    git log --oneline --all
    cat Lines.txt 
    echo 'ninth line' >>Lines.txt                                       # routine 
    git status                                                          # routine 
    git add Lines.txt                                                   # routine 
    git commit -m 'Add ninth line on B1' Lines.txt                      # routine          
    git status                                                          # routine
    git log --oneline
    git log --oneline --all
    git log --oneline --all --parents
    git switch main                                                     # on branch main
    git log --oneline --all
    echo 'ninth line (mistake)' >>Lines.txt                             # routine 
    git add Lines.txt                                                   # routine
    git commit -m 'Add tenth line on main (with mistake)' Lines.txt     # routine
    cat Lines.txt 

---
### 2.1.3 Visualise and merge branches, and resolve conflicts

    git log --oneline --all
    git log --oneline --all --parents
    git log --oneline --all --parents --graph
    git switch B1                                                       # on branch B1
    cat Lines.txt 
    echo 'tenth line on B1' >> Lines.txt                                # routine
    git add Lines.txt                                                   # routine
    git commit -m 'Add tenth line on B1' Lines.txt                      # routine
    git log --oneline --all --graph                                 
    git switch main                                                     # on branch main
    git diff HEAD HEAD~1 Lines.txt
    git diff main B1 Lines.txt
    git diff main B1~1 Lines.txt
    git diff main~1 B1~1 Lines.txt
    git log --oneline --all --graph
    git status
    nano Lines.txt                                                      # edit file to fix mistake
    cat Lines.txt 
    git status 
    git add Lines.txt 
    git commit -m  'Correct tenth line on main' Lines.txt 
    git log --oneline --all --graph
    cat Lines.txt 
    git switch B2                                                       # on branch B2
    cat Lines.txt 
    [exercise](./exercises/L2-ex02)
    [exercise](./exercises/L2-ex03)
    cat Lines.txt 
    echo 'ninth line' >>Lines.txt                                       # routine
    echo 'tenth line' >>Lines.txt                                       # routine
    git add Lines.txt                                                   # routine
    git commit -m 'Add ninth and tenth line on B2' Lines.txt            # routine
    git log --oneline --all --graph                     
    git switch B1                                                       # on branch B1
    echo 'eleventh line' >>Lines.txt
    echo 'twelfth line' >> Lines.txt 
    git diff
    git add Lines.txt 
    git commit -m 'Add 11th and 12th lines on B1' Lines.txt 
    git log --oneline --all --graph
    git switch main                                                     # on branch main
    git diff main B1 Lines.txt
    git merge -m 'Merge development from branch B1' Lines.txt           # wrong syntax
    git merge -m 'Merge development from branch B1'                     # wrong syntax
    git merge -m 'Merge development from branch B1' B1                  # right syntax
    git diff Lines.txt
    cat Lines.txt 
    nano Lines.txt                                                      # edit the files                                           
    cat Lines.txt 
    git diff
    git status
    git add Lines.txt                                                   # resolve conflict
    git status 
    git commit -m 'Merge changes from B1 in main' Lines.txt             # close merge wrong syntax
    git commit -m 'Merge changes from B1 in main'                       # close merge right syntax
    cat Lines.txt 
    git status 
    git log --oneline --all --graph
    git log --oneline --all --graph --parents


---
---
## Episode 2 Operation with remotes

---
### 2.2.1 Create and explore a bare repository

    pwd                                                                # observe
    cd ..                                                              # observe
    pwd                                                                # observe
    ls -F                                                              # observe
    git init --bare git-zero.git                                       # new action
    ls -Fa git-zero                                                    # verify
    ls -Fa git                                                         # observe
    cd git-zero                                                        # observe
    ls                                                                 # observe
    git status                                                         # observe
    git log                                                            # observe
    cd ..                                                              # observe
    ls                                                                 # observe
 
---    
### 2.2.2 Cloning and pushing to "remote" repositories (upstreams)    

 
    git clone git-zero.git git-one                                      # new action
    ls -Fa git-one                                                      # observe
    ls -Fa git-one/.git                                                 # observe
    ls -F                                                               # observe
    cd git-one                                                          # in the first clone
    git status                                                          # observe
    git log                                                             # observe
    git remote                                                          # new information
    git remote -v                                                       # new information
    echo 1 >>numbers.txt                                                # routine
    cat numbers.txt                                                     # routine
    git status                                                          # routine
    git add numbers.txt                                                 # routine
    git status                                                          # routine
    git commit -m 'git-one: add first 1' numbers.txt                    # routine
    git log --oneline                                                   # verify
    git branch                                                          # verify
    git status                                                          # verify
    git push                                                            # new action
    cd ../git-zero.git                                                  # in the upstream
    git status                                                          # observe
    git log                                                             # observe
    ls -F                                                               # observe
    cd ..                                                               # in the workshop directory
    pwd                                                                 # verify
    git clone git-zero.git/ git-two                                     # repeat action
    ls -F                                                               # verify
    cd git-two/                                                         # in the second clone
    ls -aF                                                              # verify
    git remote -v                                                       # verify
    echo 2 >>numbers.txt                                                # routine
    cat numbers.txt                                                     # routine
    git log                                                             # routine
    git add numbers.txt                                                 # routine
    git commit -m 'git-two: add first 2' numbers.txt                    # routine
    git log --oneline                                                   # verify
    git push                                                            # repeat action
    git status                                                          # verify

---
### 2.2.3 Pulling (fetching and merging) from upstreams and resolving conflicts

    cd ../git-one                                                       # in the first clone
    pwd                                                                 # verify
    git status                                                          # verify
    git fetch                                                           # new action
    git log --oneline                                                   # routine
    git status                                                          # routine
    git log --oneline --all                                             # routine
    cat numbers.txt                                                     # routine
    # git pull = git fetch + git merge                                  # git has compound commands
    git fetch                                                           # repeat action
    git merge                                                           # see episode 2.1
    git log --all                                                       # verify
    cat numbers.txt                                                     # routine
    echo 1 >>numbers.txt                                                # routine
    cat numbers.txt                                                     # routine
    git add numbers.txt                                                 # routine
    git commit -m 'git-one: add second 1' numbers.txt                   # routine
    git log --oneline --all                                             # verify
    git status                                                          # verify
    git push                                                            # repeat action
    git log --oneline --all                                             # verify
    git status                                                          # verify
    cd ../git-two/                                                      # in the second clone
    ls                                                                  # observe
    cat numbers.txt                                                     # observe
    git status                                                          # observe
    git log --oneline                                                   # observe
    echo 2 >>numbers.txt                                                # routine
    cat numbers.txt                                                     # routine
    git add numbers.txt                                                 # routine
    git commit -m 'git-two: add second 2' numbers.txt                   # routine
    git status                                                          # verify
    git log --oneline                                                   # verify
    git push                                                            # conflict
    git fetch                                                           # repeat action
    git status                                                          # observe
    git merge                                                           # conflict
    git diff                                                            # observe
    cat numbers.txt                                                     # observe
    nano numbers.txt                                                    # fix conflict
    git status                                                          # verify
    git add numbers.txt                                                 # mark resolution
    git status                                                          # verify
    git commit -m 'git-two: conclude merge'                             # conclude merge
    git status                                                          # verify
    git log --oneline                                                   # verify
    git push                                                            # repeat action
    git log --oneline                                                   # verify
    git status                                                          # verify
    # TOFIX placeholder for the last exercise
