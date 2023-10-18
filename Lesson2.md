# Lesson 2 Branching and remote operations


---
---
# Episode 1: Branching

---
# 2.1.1 Create, rename, change and delete branches

    git branch                                                          # new command
    git branch B1                                                       # new argument
    git branch                                                          # verify
    git status                                                          # verify
    cat Lines.txt                                                       # verify
    git branch -m B1 B2                                                 # new option
    git log --oneline                                                   # verify
    git branch -d B2                                                    # new option
    git log --oneline                                                   # verify
    git branch -m master foo                                            # known action
    git log --oneline                                                   # verify
    git branch -d foo                                                   # new action (fails)
    git branch -m foo main                                              # known action
    git branch                                                          # verify
    git status                                                          # verify
    git log --oneline                                                   # verify
    git branch B1                                                       # known action
    git branch                                                          # verify
    git log --oneline                                                   # verify
    git switch                                                          # new commmand (fails)
    git switch B1                                                       # new argument: on branch B1
    git log --oneline                                                   # verify
    git branch B2                                                       # known action
    git log --oneline                                                   # verify
    git switch B2                                                       # known action: on branch B2
    git log --oneline                                                   # verify
    git switch main                                                     # known action: on branch main
    git log --oneline                                                   # verify

**[exercise 1](./exercises/L2-ex01) begins**
    
    (your work)
    git branch                                                          # verify
    git branch -d B1 B2                                                 # known action
    git branch                                                          # verify
    git log --oneline                                                   # verify
    cat Lines.txt                                                       # verify
**exercise 1 ends**

---
# 2.1.2 Develop and compare branches

    git status                                                          # observe
    git branch B1                                                       # known action
    git branch B2                                                       # known action
    git branch                                                          # on branch main
    git status                                                          # routine with git status
    echo 'ninth line' >>Lines.txt                                       # routine with git status
    git status                                                          # routine with git status
    git add Lines.txt                                                   # routine with git status
    git status                                                          # routine with git status
    git commit -m 'Add ninth line on main' Lines.txt                    # routine with git status
    git status                                                          # routine with git status
    git log --oneline                                                   # verify
    git status                                                          # verify
    git switch B1                                                       # on branch B1
    git status                                                          # verify
    git log --oneline                                                   # verify
    git log --oneline --all                                             # new option
    cat Lines.txt                                                       # verify
    git status                                                          # routine with git status
    echo 'ninth line' >>Lines.txt                                       # routine with git status
    git status                                                          # routine with git status
    git add Lines.txt                                                   # routine with git status
    git status                                                          # routine with git status
    git commit -m 'Add ninth line on B1' Lines.txt                      # routine with git status
    git status                                                          # routine with git status
    git log --oneline                                                   # verify
    git log --oneline --all                                             # verify
    git log --oneline --all --parents                                   # new option
    git switch main                                                     # on branch main
    git log --oneline --all                                             # verify
    echo 'ninth line (duplicate)' >>Lines.txt                           # routine (an intended mistake)
    git add Lines.txt                                                   # routine
    git commit -m 'Add tenth line on main (with mistake)' Lines.txt     # routine
    cat Lines.txt                                                       # verify

---
# 2.1.3 Visualise and merge branches, and resolve conflicts

    git log --oneline --all                                             # explore
    git log --oneline --all --parents                                   # explore
    git log --oneline --all --parents --graph                           # explore
    git switch B1                                                       # on branch B1
    cat Lines.txt                                                       # verify
    echo 'tenth line on B1' >> Lines.txt                                # routine
    git add Lines.txt                                                   # routine
    git commit -m 'Add tenth line on B1' Lines.txt                      # routine
    git log --oneline --all --graph                                     # verify
    git switch main                                                     # on branch main
    git diff HEAD HEAD~1 Lines.txt                                      # explore
    git diff main B1 Lines.txt                                          # new arguments
    git diff main B1~1 Lines.txt                                        # new arguments
    git diff main~1 B1~1 Lines.txt                                      # new arguments
    git log --oneline --all --graph                                     # verify
    git status                                                          # verify
    nano Lines.txt                                                      # edit file to fix mistake
    cat Lines.txt                                                       # verify
    git status                                                          # verify
    git add Lines.txt                                                   # routine
    git commit -m  'Correct tenth line on main' Lines.txt               # routine
    git log --oneline --all --graph                                     # routine
    cat Lines.txt                                                       # verify

**[exercise 2](./exercises/L2-ex02)**  

**[exercise 3](./exercises/L2-ex03) starts**

    git switch B2                                                       # on branch B2
    cat Lines.txt                                                       # verify
    echo 'ninth line' >>Lines.txt                                       # routine
    echo 'tenth line' >>Lines.txt                                       # routine
    git add Lines.txt                                                   # routine
    git commit -m 'Add ninth and tenth line on B2' Lines.txt            # routine
    git status                                                          # verify
    git log --oneline --all --graph                                     # verify

**exercise 3 ends**
    
    git switch B1                                                       # on branch B1
    echo 'eleventh line' >>Lines.txt                                    # routine
    echo 'twelfth line' >> Lines.txt                                    # routine
    git diff                                                            # routine
    git add Lines.txt                                                   # routine
    git commit -m 'Add 11th and 12th lines on B1' Lines.txt             # routine
    git log --oneline --all --graph                                     # routine
    git switch main                                                     # on branch main
    git diff main B1 Lines.txt                                          # verify
    git merge -m 'Merge development from branch B1' Lines.txt           # wrong syntax
    git merge -m 'Merge development from branch B1'                     # wrong syntax
    git merge -m 'Merge development from branch B1' B1                  # right syntax: fails because of conflict
    git diff Lines.txt                                                  # verify
    cat Lines.txt                                                       # explore
    nano Lines.txt                                                      # edit the file within the conflict decorations
    cat Lines.txt                                                       # verify
    git diff                                                            # verify
    git status                                                          # verify
    git add Lines.txt                                                   # mark resolution
    git status                                                          # verify
    git commit -m 'Merge changes from B1 into main' Lines.txt           # conclude merge wrong syntax
    git commit -m 'Merge changes from B1 into main'                     s# conclude merge right syntax
    cat Lines.txt                                                       # verify
    git status                                                          # verify
    git log --oneline --all --graph                                     # verify
    git log --oneline --all --graph --parents                           # verify


---
---
# Episode 2 Operation with remotes

---
# 2.2.1 Create and explore a bare repository

    pwd                                                                 # observe
    cd ..                                                               # observe
    pwd                                                                 # observe
    ls -F                                                               # observe
    git init --bare git-zero.git                                        # new action
    ls -Fa git-zero                                                     # verify
    ls -Fa git                                                          # observe
    cd git-zero                                                         # observe
    ls                                                                  # observe
    git status                                                          # observe
    git log                                                             # observe
    cd ..                                                               # observe
    ls                                                                  # observe

---
# 2.2.2 Cloning and pushing to "remote" repositories (upstreams)


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
    git clone git-zero.git/ git-two                                     # known action
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
    git push                                                            # known action
    git status                                                          # verify

---
# 2.2.3 Pulling (fetching and merging) from upstreams and resolving conflicts

    cd ../git-one                                                       # in the first clone
    pwd                                                                 # verify
    git status                                                          # verify
    git fetch                                                           # new action
    git log --oneline                                                   # routine
    git status                                                          # routine
    git log --oneline --all                                             # routine
    cat numbers.txt                                                     # routine
    # git pull = git fetch + git merge                                  # git has compound commands
    git fetch                                                           # known action
    git merge                                                           # see episode 2.1
    git log --all                                                       # verify
    cat numbers.txt                                                     # routine
    echo 1 >>numbers.txt                                                # routine
    cat numbers.txt                                                     # routine
    git add numbers.txt                                                 # routine
    git commit -m 'git-one: add second 1' numbers.txt                   # routine
    git log --oneline --all                                             # verify
    git status                                                          # verify
    git push                                                            # known action
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
    git fetch                                                           # known action
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
    git push                                                            # known action
    git log --oneline                                                   # verify
    git status                                                          # verify

    # TOFIX placeholder for the last exercise
