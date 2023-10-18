    # DEVELOP AND COMPARE BRANCHES
    git branch B1 B2
    git branch B1
    git branch B2
    git branch
    echo 'ninth line' >>Lines.txt 
    git status 
    git add Lines.txt 
    git commit -m 'Add ninth line on main' Lines.txt 
    git log --oneline
    git status 
    git switch B1
    git status 
    git log --oneline
    git log --oneline --all
    cat Lines.txt 
    echo 'ninth line' >>Lines.txt 
    git status 
    git add Lines.txt 
    git commit -m 'Add ninth line on B1' Lines.txt
    git status 
    git log --oneline
    git log --oneline --all
    git log --oneline --all --parents
    git switch main
    git log --oneline --all
    echo 'ninth line (mistake)' >>Lines.txt 
    git add Lines.txt 
    git commit -m 'Add tenth line on main (with mistake)' Lines.txt
    cat Lines.txt 
    git log --oneline --all
    git log --oneline --all --parents
    git log --oneline --all --parents --graph
    git switch B1
    cat Lines.txt 
    echo 'tenth line on B1' >> Lines.txt 
    git add Lines.txt 
    git commit -m'Add tenth line on B1' Lines.txt 
    git log --oneline --all --graph
    git switch main
    git diff HEAD HEAD~1 Lines.txt
    git diff main B1 Lines.txt
    git diff main B1~1 Lines.txt
    git diff main~1 B1~1 Lines.txt
    git log --oneline --all --graph
    git status
    nano Lines.txt 
    cat Lines.txt 
    git status 
    git add Lines.txt 
    git commit -m'Correct tenth line on main' Lines.txt 
    git log --oneline --all --graph
    cat Lines.txt 
    git switch B1
    git switch B2
    cat Lines.txt 
    cat ~/dx/P/onderwijs/2310-gitcodev-tud/workshop_notes/exercises/L2-ex02
    cat ~/dx/P/onderwijs/2310-gitcodev-tud/workshop_notes/exercises/L2-ex03
    cat Lines.txt 
    echo 'ninth line' >>Lines.txt 
    echo 'tenth line' >>Lines.txt 
    git add Lines
    git add Lines.txt
    git commit -m 'Add ninth and tenth line on B2' Lines.txt
    git log --oneline --all --graph
    git switch B1
    echo 'eleventh line' >>Lines.txt
    echo 'twelfth line' >> Lines.txt 
    git diff
    git add Lines.txt 
    git commit -m'Add 11th and 12th lineson B1' Lines.txt 
    git log --oneline --all --graph
    git switch main
    git diff main B1 Lines.txt
    git merge -m 'Merge development from branch B1' Lines.txt
    git merge -m 'Merge development from branch B1' 
    git merge -m 'Merge development from branch B1' B1
    git diff Lines.txt
    cat Lines.txt 
    nano Lines.txt 
    cat Lines.txt 
    git diff
    git status
    git add Lines.txt 
    git status 
    git commit -m 'Merge changes from B1 in main' Lines.txt 
    git commit -m 'Merge changes from B1 in main'
    git log --oneline --all --graph
    git status 
    cat Lines.txt 
    git log --oneline --all --graph
    git log --oneline --all --graph --parents
    # REMOTES
    pwd
    cd ..
    pwd
    ls -F
    git init --bare git-zero
    ls -F
    ls -Fa git
    ls -Fa git-zero
    cd git-zeo
    cd git-zero
    ls
    git status 
    git log
    cd ..
    ls
    ls -F
    rm -rf git-zero/
    git init --bare git-zero.git
    ls -F
    git clone git-zero.git git-one
    ls -F
    ls -Fa git-one
    ls -Fa git-one/.git
    cd git-one
    ls -a
    git status 
    git log
    git remote
    git remote -v
    echo 1 >>numbers.txt
    cat numbers.txt 
    git status 
    git add numbers.txt 
    git status 
    git commit -m 'git-one: add first 1' numbers.txt 
    git log --oneline
    git branch
    git status 
    git push
    cd ../git-zero.git
    ls
    git status 
    git log
    pwd
    ls -F
    git clone --bare git-zero.git/ git-two
    ls -F
    cd git-two/
    ls -Fa
    cd ..
    rm -rf git-two  # fix mistake
    git clone git-zero.git/ git-two
    pwd
    ls -FR
    pwd
    ls -F
    cd git-two/
    ls -aF
    git remote -v
    echo 2 >>numbers.txt 
    cat numbers.txt 
    git log
    git add numbers.txt 
    git commit -m'git-two: add first 2' numbers.txt 
    git log --oneline
    git push
    git status 
    pwd
    cd ../git-one
    git status 
    git fetch
    git status 
    git log --oneline
    git log --oneline --all
    cat numbers.txt 
    # git pull = git fetch + git merge
    git fetch
    git merge
    cat numbers.txt 
    git log --all
    echo 1 >>numbers.txt 
    cat numbers.txt 
    git add numbers.txt 
    git commit -m 'git-one: add second 1' numbers.txt 
    git --oneline --all
    git log --oneline --all
    git status 
    git push
    git log --oneline --all
    git status 
    cd ../git-two/
    ls
    cat numbers.txt 
    git status 
    git log --oneline
    echo 2 >>numbers.txt 
    cat numbers.txt 
    git add numbers.txt 
    git commit -m'git-two: add second 2' numbers.txt 
    git status 
    git log --oneline
    git push
    git fetch
    git status 
    git merge
    git diff
    cat numbers.txt 
    nano numbers.txt 
    git status 
    git add numbers.txt 
    git status 
    git commit -m 'git-two: conclude merge'
    git status 
    git log --oneline
    git push
    git log --oneline
    git status 
    true
    echo
    # placeholder after the merge to fix these notes
