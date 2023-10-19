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
    mkdir -p 2310-gitcodev/git                                          # make workshop directory and subdirectory
    ls                                                                  # verify
    ls 2310-gitcodev/                                                   # explore
    cd 2310-gitcodev/git/                                               # explore
    ls                                                                  # explore
    echo $SHELL                                                         # get default setting
    bash                                                                # only for users who have the zsh shell


### Git command syntax and getting help

    git                                                                 #
    git --version                                                       #
    git version                                                         #
    git help                                                            #
    git helphelp                                                        #
    git help help                                                       #
    git config                                                          #
    git config --list                                                   #
    git config --global core.editor nano                                #
    git config --global core.autocrlf input # false for Win             #
    git config --list                                                   #
    git help config                                                     #
    git help glossary                                                   #
    git help -g                                                         #


### Creating an empty repository

    pwd                                                                 #
    ls                                                                  #
    echo 'first line'                                                   #
    echo 'first line' >lines.txt                                        #
    ls                                                                  #
    cat lines.txt                                                       #
    echo 'second line' >>lines.txt                                      #
    cat lines.txt                                                       #
    git status                                                          #
    git init                                                            #
    ls                                                                  #
    ls -a                                                               #
    ls -aF                                                              #
    ls -aF .git                                                         #
    ls                                                                  #



## Episode 1.2 Tracking changes in work documents


### Tracking changes with the index

    # TRACKING CHANGES IN FILES                                         #
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
    #                                                                   #
    # end of exercise                                                   #
    # TRACKING DIRECTORIES                                              #
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
    # NOT TRACKING FILES                                                #
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
    # IGNORE UNTRACKED DIRECTORIES (before it was about files)          #
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

### Not tracking and stop tracking

    git status                                                          #
    git rm --staged directory/emptyfile.txt                             #
    git rm --cached directory/emptyfile.txt                             #
    git status                                                          #
    ls -FR                                                              #

### Undoing changes with the index

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


### Deleting and renaming tracked files and directories

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


### Committing changes with a configured identity and a message


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
    # exercise 5                                                        #


### Inspecting changes using the history

                                                                        #
    git status                                                          #
    git diff                                                            #
    echo 'sixth line' >>Lines.txt                                       #
    git diff                                                            #
    git add Lines.txt                                                   #
    git diff                                                            #
    git diff Lines.txt                                                  #
    git commit -m 'Add sixth line' Lines.txt                            #
    git diff                                                            #
    git log                                                             #
    git log --oneline                                                   #
    git status                                                          #
    echo 'seventh line' >>Lines.txt                                     #
    git diff Lines.txt                                                  #
    git add Lines.txt                                                   #
    git diff Lines.txt                                                  #
    git status                                                          #
    git log --oneline                                                   #
    git diff HEAD Lines.txt                                             #
    git diff e278702 Lines.txt                                          #
    git diff HEAD~1 Lines.txt                                           #
    git log --oneline                                                   #
    git diff 7f2ca Lines.txt                                            #
    git diff HEAD~2 Lines.txt                                           #
    git diff HEAD~3 Lines.txt                                           #
    git diff HEAD~7 Lines.txt                                           #
    git diff Lines.txt                                                  #
    git diff HEAD~3 Lines.txt                                           #
    git diff HEAD HEAD~1 Lines.txt                                      #
    git diff HEAD~1 HEAD Lines.txt                                      #
    git diff HEAD~4 HEAD~2 Lines.txt                                    #
    git diff HEAD~3 HEAD~2 Lines.txt                                    #
    git log                                                             #
    pwd                                                                 #
    git status                                                          #
    git log --oneline                                                   #
    git diff Lines.txt                                                  #
    git diff HEAD Lines.txt                                             #
    git diff HEAD~1 Lines.txt                                           #
    git diff HEAD HEAD~1 Lines.txt                                      #
    git diff HEAD~1 HEAD Lines.txt                                      #
    diff HEAD HEAD Lines.txt                                            #
    git diff HEAD HEAD Lines.txt                                        #
    git diff HEAD~2 HEAD~2 Lines.txt                                    #
    cat ./exercises/L1-ex07                                             #
    cat Lines.txt                                                       #
    cat ./exercises/L1-ex07                                             #
                                                                        #
    # LIGHTWEIGHT TAGS                                                  #
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
    echo 'eighth line' >>Lines.txt                                      #
    cat Lines.txt                                                       #
    git status                                                          #
    git add Lines.txt                                                   #
    git status                                                          #
    git commit -m 'Add eighth line' Lines.txt                           #
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
    # ANNOTATED TAGS                                                    #
    git tag -a                                                          #
    git tag -a -m 'First annotated tag'                                 #
    git tag -a -m 'First annotated tag' TAG1                            #
    git log --oneline                                                   #
    git tag                                                             #
    git show                                                            #
    git show HEAD~1                                                     #
    true                                                                #
    # TODO edit exercise for tags v1 v2 v3                              #
                                                                        #
    # TOFIX there is a gap in the notes                                 #


### Undoing changes with the history


    cat Lines.txt                                                       # observe
    git status                                                          # observe
    ls                                                                  # observe
    git restore --source HEAD Lines.txt                                 # new long option
    cat Lines.txt						                                # verify
    git log --oneline  							                        # verify
    git diff Lines.txt 							                        # verify
    git restore -s HEAD~1 Lines.txt 			                        # short option
    cat Lines.txt 								                        # verify
    git log --oneline							                        # verify
    git diff 									                        # verify
    git diff HEAD								                        # verify
    git status 									                        # verify
    cat Lines.txt 								                        # verify
    echo 'EIGHTH LINE' >>Lines.txt 				                        # routine
    cat Lines.txt 								                        # verify
    git diff Lines.txt							                        # routine
    git status 								                            # verify
    git add Lines.txt 							                        # routine
    git commit -m 'Add EIGHTH LINE' Lines.txt 	                        # routine
    git diff HEAD HEAD~1 						                        # verify
    git log --oneline					                                # verify
    git status 									                        # verify

    exercise 10
