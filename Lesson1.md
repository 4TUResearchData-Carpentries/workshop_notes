# Lesson 1 Fundamental operations with Git

**Disclaimer of work in progress**  
This document is being reviewed (edited and replayed).
The version rolled out during the class, with warts and all, is [here, as displayed by GitHub](https://github.com/4TUResearchData-Carpentries/workshop_notes/blob/056617efa8abb7d79ffb3e85b3ac8dbbcaed50e6/Lesson1.md).



## Episode 1.1 Git repositories for version control


### Introduction to Git

    echo $HOME                                                          # get default setting
    pwd                                                                 # local situation
    cd                                                                  # change directory
    pwd                                                                 # verify
    # cd /c/Users/<accountname>                                         # for Windows users
    pwd                                                                 # verify
    ls                                                                  # verify
    cd Desktop/                                                         # any location you find your work in easily
    ls                                                                  # verify
    mkdir -p 2310-gitcodev/git                                          # make workshop directory and subdirectory for Lesson 1 and 2.1
    ls                                                                  # verify
    ls 2310-gitcodev/                                                   # explore
    cd 2310-gitcodev/git/                                               # explore
    ls                                                                  # explore
    echo $SHELL                                                         # get default setting
    bash                                                                # only for users whose default is the `zsh` shell


### Git command syntax and getting help

    git                                                                 # observe
    git --version                                                       # new option
    git version                                                         # new command
    git help                                                            # new command
    git help help                                                       # new argument
    git config                                                          # new command
    git config --list                                                   # new option
    git config --global core.editor nano                                # new option and arguments
    git config --global core.autocrlf input                             # set false instead of input for Win users
    git config --list                                                   # known action
    git help config                                                     # known action
    git help glossary                                                   # known action (glossary is not a command)
    git help -g                                                         # new option


### Creating an empty repository

    pwd                                                                 # observe
    ls                                                                  # observe
    echo 'first line'                                                   # observe
    echo 'first line' >lines.txt                                        # routine
    ls                                                                  # verify
    cat lines.txt                                                       # verify
    echo 'second line' >>lines.txt                                      # routine
    cat lines.txt                                                       # verify
    git status                                                          # new command
    git init                                                            # new command
    ls                                                                  # verify
    ls -a                                                               # new option
    ls -aF                                                              # new option
    ls -aF .git                                                         # new option
    ls                                                                  # verify



## Episode 1.2 Tracking changes in work documents


### 1.1.2 Tracking changes with the index

#### Tracking files

    git status                                                          #
    git add lines.txt                                                   #
    git status                                                          #
    ls -a .git                                                          #
    git diff lines.txt                                                  #
    echo 'third line' >>lines.txt                                       #
    cat lines.txt                                                       #
    git diff lines.txt                                                  #
    git status                                                          #
    git add lines.txt                                                   #
    git status                                                          #
    git add lines.txt                                                   #
    git status                                                          #
    git diff lines.txt                                                  #
    # instructor experimenting                                          #
    cat ./exercises/L1-ex01                                             #
    # first exercise displayed                                          #
    echo 'fourth line' >>lines.txt                                      #
    cat lines.txt                                                       #
    git status                                                          #
    git diff lines.txt                                                  #
    git add lines.txt                                                   #
    cat lines.txt                                                       #
    git status                                                          #
    git diff lines.txt                                                  #
    # end of exercise                                                   #

#### Tracking directories

    mkdir directory                                                     #
    ls                                                                  #
    ls -F                                                               #
    git status                                                          #
    touch directory/emptyfile.txt                                       #
    ls -R                                                               #
    ls -RF                                                              #
    git status                                                          #
    git status -u                                                       #
    git help status                                                     #
    git add directory                                                   #
    git status                                                          #
    
#### Ignore untracked files

    history                                                             #
    history 20                                                          #
    history 20 >history.log                                             #
    cat history.log                                                     #
    git status                                                          #
    echo '*.log'                                                        #
    echo '*.log' >.gitignore                                            #
    git status                                                          #
    ls -a                                                               #
    ls -aF                                                              #
    git add .gitignore                                                  #
    git status                                                          #
    echo 'lines.txt' >>.gitignore                                       #
    cat .gitignore                                                      #
    git status                                                          #
    git add .gitignore                                                  #
    git status                                                          #
    
#### Ignore untracked directories

    touch directory/trackme.txt                                         #
    touch directory/donttrackme.txt                                     #
    ls directory/                                                       #
    git status                                                          #
    echo 'directory' >> .gitignore                                      #
    cat .gitignore                                                      #
    git status                                                          #
    echo '!directory' >> .gitignore                                     #
    cat .gitignore                                                      #
    git status                                                          #
    cat .gitignore                                                      #
    echo 'directory' >>.gitignore                                       #
    cat .gitignore                                                      #
    git status                                                          #
    git help gitignore                                                  #
    git status                                                          #
    git add .gitignore                                                  #

### 1.2.2 Not tracking and stop tracking

    git status                                                          #
    git rm --staged directory/emptyfile.txt                             #
    git rm --cached directory/emptyfile.txt                             #
    git status                                                          #
    ls -FR                                                              #

### 1.2.3 Undoing changes with the index

    cat lines.txt                                                       #
    echo 'fifth line' >>lines.txt                                       #
    cat lines.txt                                                       #
    git status                                                          #
    git diff lines.txt                                                  #
    git restore lines.txt                                               #
    cat lines.txt                                                       #
    git status                                                          #
    git diff lines.txt                                                  #
    git restore lines.txt                                               #
    cat lines.txt                                                       #
    git status                                                          #
    echo '!directory' >>.gitignore                                      #
    ls                                                                  #
    git status                                                          #
    git status -u                                                       #
    git add directory/trackme.txt                                       #
    git status -u                                                       #
    git add directory/donttrackme.txt                                   #
    git add directory/emptyfile.txt                                     #
    git status                                                          #
    git add .gitignore                                                  #
    git status                                                          #


### 1.2.4 Deleting and renaming tracked files and directories

    git rm --cached directory/donttrackme.txt                           #
    git status                                                          #
    rm directory/                                                       #
    rm -r directory/                                                    #
    ls -FR                                                              #
    git status                                                          #
    git restore directory                                               #
    git status                                                          #
    ls -FR directory/                                                   #
    # restart                                                           #
    touch directory/donttrackme.txt                                     #
    git status                                                          #
    git rm directory                                                    #
    git rm -r directory                                                 #
    git status                                                          #
    git rm -rf directory                                                #
    git status                                                          #
    ls -FR directory/                                                   #
    git restore directory                                               #
    git status                                                          #
    git status -u                                                       #
    mv directory/donttrackme.txt directory/trackne.txt                  #
    git status -u                                                       #
    # use the command `git mv <oldname> <newname>`                      #
    # lines.txt Lines.txt                                               #
    git status -u                                                       #
    git mv lines.txt Lines.txt                                          #
    git status -u                                                       #



## Episode 1.3 Organising tracked changes in a Git history


### 1.3.1 Committing changes with a configured identity and a message


    cat Lines.txt                                                       #
    git diff                                                            #
    git status                                                          #
    git commit -m 'Add first four lines' Lines.txt                      #
    git status                                                          #
    git log                                                             #
    # exercise                                                          #
    cat ./exercises/L1-ex04                                             #
    git status                                                          #
    git commit -m 'Add .gitignore' .gitignore                           #
    git status                                                          #
    rm -r directory  # to keep things clean                             #
    git status                                                          #
    ls                                                                  #
    git log                                                             #
    cat ./exercises/L1-ex05                                             #
    cat ./exercises/L1-ex06                                             #
    echo 'fifth line' >>Lines.txt                                       #
    cat Lines.txt                                                       #
    git status                                                          #
    git add Lines.txt                                                   #
    git status                                                          #
    git commit -m 'Add fifth lines' Lines.txt                           #
    git status                                                          #
    history                                                             #
    git log                                                             #

exercise 5 


### 1.3.2 Inspecting changes using the history

    git status                                                          # observe
    git diff Lines.txt                                                  # routine with git diff
    echo 'sixth line' >>Lines.txt                                       # routine with git diff
    git diff Lines.txt                                                  # routine with git diff
    git add Lines.txt                                                   # routine with git diff
    git diff Lines.txt                                                  # routine with git diff
    git commit -m 'Add sixth line' Lines.txt                            # routine with git diff
    git diff Lines.txt                                                  # routine with git diff
    git status                                                          # verify
    git log                                                             # verify 
    git log --oneline                                                   # verify
    echo 'seventh line' >>Lines.txt                                     # routine without commit
    git diff Lines.txt                                                  # routine without commit
    git add Lines.txt                                                   # routine without commit
    git diff Lines.txt                                                  # routine without commit
    git status                                                          # routine without commit
    git log --oneline                                                   # observe
    git diff e278702 Lines.txt                                          # new argument
    git diff HEAD Lines.txt                                             # new argument 
    git diff HEAD~1 Lines.txt                                           # new argument
    git log --oneline                                                   # observe
    git diff 7f2ca Lines.txt                                            # observe
    git diff Lines.txt                                                  # observe
    git diff HEAD~2 Lines.txt                                           # observe
    git diff HEAD~3 Lines.txt                                           # observe
    git diff HEAD~7 Lines.txt                                           # observe
    git diff HEAD~3 Lines.txt                                           # observe
    git diff HEAD HEAD~1 Lines.txt                                      # new argument
    git diff HEAD~1 HEAD Lines.txt                                      # observe
    git diff HEAD~4 HEAD~2 Lines.txt                                    # observe
    git diff HEAD~3 HEAD~2 Lines.txt                                    # observe
    git diff HEAD HEAD Lines.txt                                        # observe
    git diff HEAD~2 HEAD~2 Lines.txt                                    # observe

[exercise](./exercises/L1-ex07)

#### Lightweight tags

    git log --oneline                                                   #
    git tag 'hey'                                                       #
    git log --oneline                                                   #
    git log                                                             #
    git tag 'hey' HEAD~1                                                #
    git tag 'hey2' HEAD~1                                               #
    git log --oneline                                                   #
    git tag 'hey3' HEAD~5                                               #
    git tag 'hey4' 87ab7b6                                              #
    git log --oneline                                                   #
    git diff HEAD HEAD~1 Line.txt                                       #
    git diff HEAD HEAD~1 Lines.txt                                      #
    git diff hey hey2 Lines.txt                                         #
    git log --oneline                                                   #
    git diff hey hey2 Lines.txt                                         #
    echo 'eighth line' >>Lines.txt                                      # routine with git status
    cat Lines.txt                                                       # routine with git status
    git status                                                          # routine with git status
    git add Lines.txt                                                   # routine with git status
    git status                                                          # routine with git status
    git commit -m 'Add eighth line' Lines.txt                           # routine with git status
    git log --oneline                                                   #
    git tag -d hey1                                                     #
    git tag -d hey4                                                     #
    git log --oneline                                                   #
    git diff hey hey4 Lines.txt                                         #
    git log --oneline                                                   #
    git tag -d hey2                                                     #
    git tag -d hey                                                      #
    git tag HEAD~4 v1                                                   #
    git tag v1 HEAD~4                                                   #
    git log --oneline                                                   #
    git tag v2 HEAD~3                                                   #
    git tag v3 HEAD~2                                                   #
    git log --onelein                                                   #
    git log --oneline                                                   #
    git tag v4 HEAD~1                                                   #
    git tag v5 HEAD                                                     #
    git log --oneline                                                   #
                                                                        #
#### Annotated tags

    git tag -a                                                          #
    git tag -a -m 'First annotated tag'                                 #
    git tag -a -m 'First annotated tag' TAG1                            #
    git log --oneline                                                   #
    git tag                                                             #
    git show                                                            #
    git show HEAD~1                                                     #
    true                                                                #
    
TODO edit exercise for tags v1 v2 v3


### 1.3.3 Undoing changes with the history


    cat Lines.txt                                                       # observe
    git status                                                          # observe
    ls                                                                  # observe
    git restore --source HEAD Lines.txt                                 # new long option
    cat Lines.txt                                                       # verify
    git log --oneline                                                   # verify
    git diff Lines.txt                                                  # verify
    git restore -s HEAD~1 Lines.txt                                     # short option
    cat Lines.txt                                                       # verify
    git log --oneline                                                   # verify
    git diff                                                            # verify
    git diff HEAD                                                       # verify
    git status                                                          # verify
    cat Lines.txt                                                       # verify
    echo 'EIGHTH LINE' >>Lines.txt                                      # routine
    cat Lines.txt                                                       # verify
    git diff Lines.txt                                                  # routine
    git status                                                          # verify
    git add Lines.txt                                                   # routine
    git commit -m 'Add EIGHTH LINE' Lines.txt                           # routine
    git diff HEAD HEAD~1                                                # verify
    git status                                                          # verify
    git log --oneline                                                   # verify

exercise (10) to be added
