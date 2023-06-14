	pwd
	cd ~/Desktop/
	pwd
	mkdir -p 2306-VC_CD-TUD/L12/git
	pwd
	cd 2306-VC_CD-TUD/L12/git/
	ls
	echo $SHELL
	git
	git --version
	git version
	git help
	git config
	git config --list
	git config -l
	git help help
	pwd
	echo 'first line'
	echo 'first line' >lines.txt
	ls
	cat lines.txt 
	git status
	git init
	ls
	ls -a
	ls -aF
	ls -aF .git/
	echo 'second line' >>lines.txt
	cat lines.txt 
	git add lines.txt 
	ls -a .git
	git status 
	echo 'third line' >>lines.txt 
	cat lines.txt 
	git status
	git diff lines.txt
	cat lines.txt 
	git add lines.txt 
	git status 
	git diff lines.txt
	git add
	cat lines.txt 
	echo 'fourth line' >>lines.txt 
	cat lines.txt 
	git status 
	git diff lines.txt
	git add lines.txt 
	git status 
	git diff lines.txt
	ls -FR
	mkdir directory
	ls -FR
	git status 
	touch directory/emptyfile.txt
	ls -FR
	git status 
	git status -u
	history
	history >history.log
	ls
	cat history.log 
	git status
	echo '*.log' >.gitignore
	cat .gitignore 
	git status
	ls -a
	cat .gitignore
	git status 
	git add .gitignore
	git status 
	touch directory/trackme.txt
	touch directory/donttrackme.txt
	ls-FR
	ls -FR
	echo 'directory' >>.gitignore
	cat .gitignore
	git status 
	echo '!directory' >>.gitignore
	cat .gitignore 
	git status 
	cat .gitignore 
	git status 
	echo 'directory' >>.gitignore
	git status 
	echo '!directory/trackme.txt' >>.gitignore
	git status 
	echo '!directory' >>.gitignore
	cat .gitignore 
	git status
	git status -u
	echo 'directory/*' >>.gitignore
	git status 
	echo '!directory/trackme.txt' >>.gitignore
	cat .gitignore 
	ls -FR
	git status 
	git status -u
	git add directory/trackme.txt 
	git status 
	git diff .gitignore
	git add .gitignore 
	git status 
	git rm --staged directory/trackme.txt 
	git rm --cached directory/trackme.txt 
	ls -RF
	git status 
	git status -u
	git status 
	git status -u
	ls -FR
	git add directory/trackme.txt
	git status 
	git diff lines.txt
	cat lines.txt 
	echo 'fifth line' >>lines.txt 
	cat lines.txt 
	git diff lines.txt
	git help diff
	git help gitignore
	git diff lines.txt
	git restore lines.txt
	git status 
	cat lines.txt 
	git diff lines.txt
	git restore lines.txt
	cat lines.txt
	ls -FR
	ls _a
	ls -a
	ls -FR
	rm directory/
	rm -r directory/
	ls -FR
	git status -u
	git restore directory
	ls -RF
	touch directory/emptyfile.txt
	touch directory/donttrackme.txt
	ls -RF
	git status
	git rm directory/
	git rm -r directory/
	git rm -rf directory/
	ls -FR
	git restore directory/
	mv directory/donttrackme.txt directory/trackme.txt
	ls -FR
	git status 
	git status -u
	ls -FR
	git add directory/trackme.txt 
	git status 
	git mv directory/trackme.txt directory/trackable.txt 
	git status 
	cat .gitignore 
	git help gitignore
	ls -FR
	cat lines.txt 
	git status 
	git mv lines.txt Lines.txt
	git status 
	cat Lines.txt 
	ls -a .git
	history
	cat Lines.txt 
	git diff Lines.txt
	git status 
	git rm --cached directory/trackable.txt 
	git status 
	git commit -m 'Add first four lines' Lines.txt 
	git config -l
	git config --global --unset user.email
	git config --global --unset user.name
	git config -l
	git commit -m 'Add first four lines (instructor)' Lines.txt 
	git config --global user.email 'wmotion.eu@gmail.com'
	git config --global user.name 'Giordano Lipari laptop'
	git config --global core.editor nano
	git config --global core.autocrlf false
	git config --list
	# WE RESUME AT 16:05
	git status 
	git log
	git status 
	git diff 
	git diff .gitignore
	git commit -m 'Add .gitignore' .gitignore 
	git log
	git status 
	echo 'fifth line' >>Lines.txt 
	git status 
	git add Lines.txt 
	git status 
	git commit -m 'Add fifth line' Lines.txt 
	git status 
	git log 
	git diff
	git diff Lines.txt
	echo 'sixth line' >>Lines.txt 
	cat Lines.txt 
	git diff Lines.txt
	git add Lines.txt 
	git diff Lines.txt
	git commit -m 'Add sixth line' Lines.txt 
	git lof
	git log
	git log --oneline
	echo 'seventh line' >>Lines.txt 
	cat Lines.txt 
	git diff Lines.txt
	git add Lines.txt 
	git status 
	git log --oneline
	git diff 047ba38 Lines.txt
	git diff HEAD Lines.txt
	git diff HEAD~1 Lines.txt
	git log --oneline
	git diff adbe95d Lines.txt
	git diff HEAD HEAD~1 Lines.txt
	git diff HEAD~1 HEAD Lines.txt
	cat Lines.txt 
	git diff HEAD~3 HEAD~1 Lines.txt
	git log --oneline
	git tag 'hey'
	git log --oneline
	git tag 'hey jude' HEAD~1
	git tag HEAD~1 'hey jude'
	git tag HEAD~1 'hey_jude'
	git tag HEAD~1 'heyjude'
	git tag 'hey_jude' HEAD~1
	git log --oneline
	git status 
	git diff Lines.txt
	git diff HEAD Lines.txt
	git commit -m 'Add seventh line' Lines.txt 
	git status 
	git tag
	git log --oneline
	git diff hey hey_jude
	git tag -m hey_jude v1
	git tag -m hey v2
	git tag
	git log --oneline
	git help tag
