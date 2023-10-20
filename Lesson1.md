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
    git config --list                                                   # new long option
    git config --global core.editor nano                                # new long option and arguments
    git config --global core.autocrlf input                             # Win users set false instead of input
    git config --list                                                   # known action
    git help config                                                     # known action
    git help glossary                                                   # known action (glossary is not a command)
    git help -g                                                         # new option


### Creating an empty repository

    pwd                                                                 # observe
    ls                                                                  # observe
    echo 'first line'                                                   # observe
    echo 'first line' >lines.txt                                        # Git routine
    ls                                                                  # verify
    cat lines.txt                                                       # verify
    echo 'second line' >>lines.txt                                      # Git routine
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

    git status                                                          # observe
    git add lines.txt                                                   # new command
    git status                                                          # known action
    ls -a .git                                                          # verify
    git diff lines.txt                                                  # new command
    echo 'third line' >>lines.txt                                       # Git routine
    cat lines.txt                                                       # verify
    git diff lines.txt                                                  # known action
    git status                                                          # verify
    git add lines.txt                                                   # new command
    git status                                                          # verify
    git add lines.txt                                                   # known action
    git status                                                          # verify
    git diff lines.txt                                                  # known action

**[exercise 1](./exercises/L1-ex01) begins**

        echo 'fourth line' >>lines.txt                                  # Git routine
        cat lines.txt                                                   # verify
        git status                                                      # verify
        git diff lines.txt                                              # verify
        git add lines.txt                                               # Git routine
        cat lines.txt                                                   # verify
        git status                                                      # verify
        git diff lines.txt                                              # verify
**exercise 1 ends** 


#### Tracking directories

    mkdir directory                                                     # shell: create empty directory
    ls                                                                  # verify 
    ls -F                                                               # verify
    git status                                                          # verify
    touch directory/emptyfile.txt                                       # create empty file in directory
    ls -RF                                                              # verify
    git status                                                          # verify
    git help status                                                     # known action
    git status -u                                                       # new option
    git add directory                                                   # Git routine
    git status                                                          # verify


### 1.2.2 Not tracking and stop tracking

#### Ignore untracked files

    history                                                             # history of **shell** commands
    history 20                                                          # new option
    history 20 >history.log                                             # create baseline file
    cat history.log                                                     # verify
    git status                                                          # verify
    echo '*.log'                                                        # mind single quotes
    echo '*.log' >.gitignore                                            # new file with reserved name
    git status                                                          # verify
    ls -a                                                               # verify
    ls -aF                                                              # verify
    git add .gitignore                                                  # Git routine
    git status                                                          # verify
    echo 'lines.txt' >>.gitignore                                       # Git routine
    cat .gitignore                                                      # verify
    git status                                                          # verify
    git add .gitignore                                                  # Git routine
    git status                                                          # verify
    
#### Ignore untracked directories

    touch directory/trackme.txt                                         # create baseline file
    touch directory/donttrackme.txt                                     # create baseline file
    ls directory/                                                       # verify
    git status                                                          # verify
    echo 'directory' >> .gitignore                                      # routine
    cat .gitignore                                                      # verify
    git status                                                          # verify
    echo '!directory' >> .gitignore                                     # ! means negation (also for file names)
    cat .gitignore                                                      # verify
    git status                                                          # verify
    cat .gitignore                                                      # verify
    echo 'directory' >>.gitignore                                       # routine
    cat .gitignore                                                      # verify
    git status                                                          # verify
    git help gitignore                                                  # known command
    git status                                                          # observe
    git add .gitignore                                                  # Git routine

#### Stop tracking
    
    git status                                                          # observe
    git rm --staged directory/emptyfile.txt                             # new command and long option (fails)
    git rm --cached directory/emptyfile.txt                             # new long option
    git status                                                          # verify
    ls -FR                                                              # verify


### 1.2.3 Undoing changes with the index

    cat lines.txt                                                       # observe
    echo 'fifth line' >>lines.txt                                       # Git routine
    cat lines.txt                                                       # verify
    git status                                                          # verify
    git diff lines.txt                                                  # verify
    git restore lines.txt                                               # new command
    cat lines.txt                                                       # verify
    git status                                                          # verify
    git diff lines.txt                                                  # verify
    git restore lines.txt                                               # known action
    cat lines.txt                                                       # verify
    git status                                                          # verify


### 1.2.4 Deleting and renaming tracked files and directories

    echo '!directory' >>.gitignore                                      # make directory trackable
    ls                                                                  # verify
    git status                                                          # verify
    git status -u                                                       # verify
    git add directory/trackme.txt                                       # Git routine
    git status -u                                                       # verify
    git add directory/donttrackme.txt                                   # Git routine
    git add directory/emptyfile.txt                                     # Git routine
    git status -u                                                       # verify
    git add .gitignore                                                  # Git routine
    git status                                                          # verify
    git rm --cached directory/donttrackme.txt                           # known action
    git status                                                          # verify

#### Remove in the working tree only
    rm directory/                                                       # remove directory (fails)
    rm -r directory/                                                    # new short option
    ls -FR                                                              # verify
    git status                                                          # verify
    git restore directory                                               # known action
    git status                                                          # verify
    ls -FR directory/                                                   # verify

#### Remove in the working tree and index
    touch directory/donttrackme.txt                                     # restart for a new round
    git status                                                          # verify
    git rm directory                                                    # known command without option
    git rm -r directory                                                 # new short option
    git status                                                          # verify
    git rm -rf directory                                                # new short option
    git status                                                          # verify
    ls -FR directory/                                                   # verify
    git restore directory                                               # known action
    git status                                                          # verify
    git status -u                                                       # verify

#### Renaming
    mv directory/donttrackme.txt directory/trackne.txt                  # restart from another round
    git status -u                                                       # verify
    git mv lines.txt Lines.txt                                          # new command (pill-like exercise)
    git status -u                                                       # verify



## Episode 1.3 Organising tracked changes in a Git history


### 1.3.1 Committing changes with a configured identity and a message


    cat Lines.txt                                                       # observe
    git diff Lines.txt                                                  # observe
    git status                                                          # observe
    git commit -m 'Add first four lines' Lines.txt                      # new command
    git status                                                          # verify
    git log                                                             # verify

**[exercise 2](./exercises/L1-ex04) begins**

		git status                                                      #
		git commit -m 'Add .gitignore' .gitignore                       # Git routine
		git status                                                      # verify
		git log                                                         # verify
**exercise 2 ends**

    rm -r directory														# to keep the working tree lean
    git status                                                          # verify
    ls                                                                  # verify

**[exercise 3](./exercises/L1-ex05) begins**  

		git status                                                      # Git routine with git status
		echo 'fifth line' >>Lines.txt                                   # Git routine with git status
		cat Lines.txt                                                   # Git routine with git status
		git status                                                      # Git routine with git status
		git add Lines.txt                                               # Git routine with git status
		git status                                                      # Git routine with git status
		git commit -m 'Add fifth lines' Lines.txt                       # Git routine with git status
		git status                                                      # Git routine with git status
		git log                                                         # verify
**exercise 3 ends**

**[exercise 4](./exercises/L1-ex06) begins**  

		git diff Lines.txt                                              # Git routine with git diff
		echo 'sixth line' >>Lines.txt                                   # Git routine with git diff
		git diff Lines.txt                                              # Git routine with git diff
		git add Lines.txt                                               # Git routine with git diff
		git diff Lines.txt                                              # Git routine with git diff
		git commit -m 'Add sixth line' Lines.txt                        # Git routine with git diff
		git diff Lines.txt                                              # Git routine with git diff
		git status                                                      # verify
		git log                                                         # verify
**exercise 4 ends**



### 1.3.2 Inspecting changes using the history


	git status                                                          # observe
    git log                                                             # verify 
    git log --oneline                                                   # verify
    echo 'seventh line' >>Lines.txt                                     # Git routine without commit
    git diff Lines.txt                                                  # Git routine without commit
    git add Lines.txt                                                   # Git routine without commit
    git diff Lines.txt                                                  # Git routine without commit
    git status                                                          # Git routine without commit
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

**[exercise 5](./exercises/L1-ex07) begins**
	
	# for example...
    git diff HEAD~4 HEAD~2 Lines.txt                                    # observe
    git diff HEAD~3 HEAD~2 Lines.txt                                    # observe
    # ad libitum
**exercise 5 ends**

	git diff HEAD HEAD Lines.txt                                        # observe
    git diff HEAD~2 HEAD~2 Lines.txt                                    # observe


#### Lightweight tags

    git log --oneline                                                   # observe
    git tag 'hey'                                                       # new command
    git log --oneline                                                   # verify
    git log                                                             # verify
    git tag 'hey' HEAD~1                                                # new option
    git tag 'hey2' HEAD~1                                               # known action
    git log --oneline                                                   # verify
    git tag 'hey3' HEAD~5                                               # known action (fails)
    git tag 'hey4' 87ab7b6                                              # new argument (commmit name will vary)
    git log --oneline                                                   # verify
    git diff HEAD HEAD~1 Lines.txt                                      # known action
    git diff hey hey2 Lines.txt                                         # new arguments
    git log --oneline                                                   # verify
    echo 'eighth line' >>Lines.txt                                      # Git routine with git status
    cat Lines.txt                                                       # Git routine with git status
    git status                                                          # Git routine with git status
    git add Lines.txt                                                   # Git routine with git status
    git status                                                          # Git routine with git status
    git commit -m 'Add eighth line' Lines.txt                           # Git routine with git status
    git log --oneline                                                   # verify
    git tag -d hey1                                                     # new option
    git tag -d hey4                                                     # known action
    git log --oneline                                                   # verify
    git diff hey hey4 Lines.txt                                         # new arguments
    git log --oneline                                                   # verify
    git tag -d hey2                                                     # known action
    git tag -d hey                                                      # known action

**[exercise 5](./exercises/L1-ex09) begins**

		git tag HEAD~4 v1                                               # new arguments (fails)
		git tag v1 HEAD~4                                               # new arguments
		git log --oneline                                               # verify
		git tag v2 HEAD~3                                               # known action
		git tag v3 HEAD~2                                               # known action
		git log --oneline                                               # verify
		git tag v4 HEAD~1                                               # known action
		git tag v5 HEAD                                                 # known action
		git log --oneline                                               # known action
**exercise 5**


#### Annotated tags

    git tag -a                                                          # new option
    git tag -a -m 'First annotated tag'                                 # new option
    git tag -a -m 'First annotated tag' TAG1                            # new argument
    git log --oneline                                                   # verify
    git tag                                                             # known command without options
    git tag -n                                                          # new option


### 1.3.3 Undoing changes with the history


    cat Lines.txt                                                       # observe
    git status                                                          # observe
    git show                                                            # new command
    git show HEAD                                                       # new argument  
    git show HEAD~1                                                     # new argument  
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
    echo 'EIGHTH LINE' >>Lines.txt                                      # Git routine
    cat Lines.txt                                                       # verify
    git diff Lines.txt                                                  # Git routine
    git status                                                          # verify
    git add Lines.txt                                                   # Git routine
    git commit -m 'Add EIGHTH LINE' Lines.txt                           # Git routine
    git diff HEAD HEAD~1                                                # verify
    git status                                                          # verify
    git log --oneline                                                   # verify

END OF LESSON 1 
