# Lesson 2 Branching and remote operations

The original list of commands has been edited and decorated with headings corresponding to the [lesson plan](../README.md#1-workshop-program) more clearly. 
Some commands have been either removed or relocated or added for clarity and help self-study after the class. 
Accidental errors have been removed, but intended errors have been kept.

The comments after each line are annotations on whether a command/option appears for the first time (**new**) or is a **known action**. 
Else, the annotation recalls why we typed that certain command, for example to **observe** the state of the play (typically before a certain change) or to **verify** the results of a change.
**routine** commands are the typical commit ssequence learned in Lesson 1.

The original list of commands is available at this commit [as displayed by GitHub](https://github.com/4TUResearchData-Carpentries/workshop_notes/blob/056617efa8abb7d79ffb3e85b3ac8dbbcaed50e6/Lesson2.md).
    


---
---
## Episode 1: Branching

---
### 2.1.1 Create, rename, change and delete branches

    git branch                                                          # new command
    git branch B1                                                       # new argument
    git branch                                                          # verify
    git status                                                          # verify
    cat Lines.txt                                                       # verify
    git branch -m B1 B2                                                 # new short option
    git log --oneline                                                   # verify
    git branch -d B2                                                    # new short option
    git log --oneline                                                   # verify
    git branch -m master foo                                            # known action
    git log --oneline                                                   # verify
    git branch -d foo                                                   # known action (fails)
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
### 2.1.2 Develop and compare branches

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
    git log --oneline --all                                             # new long option
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
    git log --oneline --all --parents                                   # new long option
    git switch main                                                     # on branch main
    git log --oneline --all                                             # verify
    echo 'ninth line (duplicate)' >>Lines.txt                           # routine (an intended mistake)
    git add Lines.txt                                                   # routine
    git commit -m 'Add tenth line on main (with mistake)' Lines.txt     # routine
    cat Lines.txt                                                       # verify

---
### 2.1.3 Visualise and merge branches, and resolve conflicts

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
## Episode 2 Operation with remotes

---
### 2.2.1 Create and explore a bare repository

    pwd                                                                 # observe
    cd ..                                                               # directory of the workshop
    pwd                                                                 # verify
    ls -F                                                               # observe
    git init --bare git-zero.git                                        # new long option
    ls -F git-zero.git                                                  # verify
    ls -Fa git                                                          # observe
    ls -Fa git/.git                                                     # observe
    cd git-zero.git                                                     # directory of the bare repository
    ls                                                                  # observe
    git status                                                          # observe (fails)
    git log                                                             # observe (fails)
    git branch                                                          # observe
    cd ..                                                               # observe
    ls                                                                  # verify

---
### 2.2.2 Cloning and pushing to "remote" bare repositories (upstreams)

    git clone git-zero.git git-one                                      # new command
    ls -Fa git-one                                                      # observe
    ls -Fa git-one/.git                                                 # observe
    ls -F                                                               # observe
    cd git-one                                                          # directory of the first clone
    git status                                                          # observe
    git branch                                                          # observe
    git log                                                             # observe (fails)
    git remote                                                          # new command
    git remote -v                                                       # new short option
    echo 1 >>numbers.txt                                                # routine
    cat numbers.txt                                                     # verify
    git status                                                          # routine with git status
    git add numbers.txt                                                 # routine with git status
    git status                                                          # routine with git status
    git commit -m 'git-one: add first 1' numbers.txt                    # routine with git status
    git log --oneline                                                   # verify
    git status                                                          # verify (ignore the but-warning)
    git push                                                            # new command
    git status                                                          # verify
    cd ../git-zero.git                                                  # directory of the upstreamgit
    git status                                                          # observe (fails)
    git log                                                             # observe
    ls -F                                                               # observe
    cd ..                                                               # in the workshop directory
    pwd                                                                 # verify
    git clone git-zero.git/ git-two                                     # known action
    ls -F                                                               # verify
    cd git-two/                                                         # in the second clone
    ls -aF                                                              # verify
    cat numbers.txt                                                     # observe
    git log                                                             # observe
    git remote -v                                                       # observe
    echo 2 >>numbers.txt                                                # routine
    cat numbers.txt                                                     # verify
    git add numbers.txt                                                 # routine
    git commit -m 'git-two: add first 2' numbers.txt                    # routine
    git log --oneline                                                   # verify
    git push                                                            # known action
    git status                                                          # verify

---
### 2.2.3 Fetching and merging (pulling) from upstreams

    cd ../git-one                                                       # in the first clone
    pwd                                                                 # verify
    git status                                                          # verify
    git log --oneline                                                   # routine
    git fetch                                                           # new command
    git status                                                          # routine
    git log --oneline                                                   # routine
    git log --oneline --all                                             # routine
    cat numbers.txt                                                     # routine
    # git pull = git fetch + git merge                                  # git has compound commands
    git fetch                                                           # known action
    git merge                                                           # see episode 2.1 (no conflict here)
    git log --all                                                       # verify
    cat numbers.txt                                                     # verify
    echo 1 >>numbers.txt                                                # routine
    cat numbers.txt                                                     # routine
    git add numbers.txt                                                 # routine
    git commit -m 'git-one: add second 1' numbers.txt                   # routine
    git log --oneline --all                                             # verify
    git status                                                          # verify
    git push                                                            # known action
    git status                                                          # verify
    git log --oneline --all                                             # verify

### 2.2.3 (continued) Resolving conflicts when pushing
    
    cd ../git-two/                                                      # in the directory of the second clone
    ls                                                                  # observe
    cat numbers.txt                                                     # observe
    git status                                                          # observe
    git log --oneline                                                   # observe
    echo 2 >>numbers.txt                                                # routine
    cat numbers.txt                                                     # verify
    git add numbers.txt                                                 # routine
    git commit -m 'git-two: add second 2' numbers.txt                   # routine
    git status                                                          # verify
    git log --oneline                                                   # verify
    git push                                                            # known action with conflict
    git fetch                                                           # known action
    git status                                                          # observe
    git merge                                                           # known action with conflict
    git diff                                                            # observe
    cat numbers.txt                                                     # observe
    nano numbers.txt                                                    # edit the file within the conflict decorations
    cat numbers.txt                                                     # verify
    git status                                                          # verify
    git add numbers.txt                                                 # mark resolution
    git status                                                          # verify
    git commit -m 'git-two: conclude merge'                             # conclude merge
    git status                                                          # verify
    git log --oneline                                                   # verify
    git push                                                            # known action
    git log --oneline                                                   # verify
    git status                                                          # verify
