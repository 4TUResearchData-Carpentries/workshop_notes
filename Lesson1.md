# Workshop Version Control and Collaborative Development for Research Software Developmentgi (14-16 June 2023)

The type-along notes have been revised after the lesson by removing duplicates, changing the position of a command at places, and grouping similar actions into sections. The comments (the text after the # tokens) outline the context of the command (working tree, index, repository, documentation, shell). The abbreviations used in the comments are:  
* repo = repository  
* v = versus (a comparison)   
* \>, <: direction of information transfer  

## Lesson 1. Fundamental Git Operations
### Preparing the working tree

	pwd						# working tree
	cd ~/Desktop/					# working tree
	pwd						# working tree
	mkdir -p 2306-VC_CD-TUD/L12/git			# working tree
	pwd						# working tree
	cd 2306-VC_CD-TUD/L12/git/			# working tree
	ls						# working tree
	echo $SHELL  					# shell intepreter
---
### Git is a program. The syntax of Git commands
	git						# program
	git --version					# documentation
	git version					# NEW: git version
	git help					# NEW: git help
	git help help					# documentation
	git config					# NEW: git config
	git config --list				# repo
	git config -l					# repo
---
### Initialise a Git repository
	pwd						# working tree
	echo 'first line'				# working tree
	echo 'first line' >lines.txt			# working tree
	ls						# working tree
	cat lines.txt 					# working tree
	git status					# NEW: git status
	git init					# NEW: git init
	ls						# working tree
	ls -a 						# working tree
	ls -aF						# working tree
	ls -aF .git/					# repo in working tree
---	
### Tracking files	
	echo 'second line' >>lines.txt	# working tree
	cat lines.txt 					# working tree
	git add lines.txt 				# NEW: git add
	ls -a .git  					# index in working tree
	git status 					# repo
	echo 'third line' >>lines.txt 			# working tree
	cat lines.txt 					# working tree
	git status					# repo
	git diff lines.txt				# NEW: git diff
	cat lines.txt 					# working tree
	git add lines.txt 				# working tree > index
	git status 					# repo
	git diff lines.txt				# working tree v index
	git add						# working tree > index
	cat lines.txt 					# working tree
	echo 'fourth line' >>lines.txt 			# working tree
	cat lines.txt 					# working tree
	git status 					# repo
	git diff lines.txt				# working tree v index
	git add lines.txt 				# working tree > index
	git status 					# repo
	git diff lines.txt				# working tree v index
---	
### Tracking directories
	ls -FR						# working tree
	mkdir directory					# working tree
	ls -FR						# working tree
	git status 					# repo
	touch directory/emptyfile.txt			# working tree
	ls -FR						# working tree
	git status 					# repo
	git status -u					# repo
---	
### Not tracking untracked files with (gitignore)
	history						# working tree
	history >history.log				# working tree
	ls						# working tree
	cat history.log 				# working tree
	git status					# repo
	echo '*.log' >.gitignore			# NEW: gitignore
	cat .gitignore 					# working tree
	ls -a 						# working tree
	git status					# repo
	git add .gitignore				# working tree > index
	git status 					# repo
---	
### Not tracking untracked directories (gitignore)
	touch directory/trackme.txt			# working tree
	touch directory/donttrackme.txt			# working tree
	ls -FR						# working tree
	echo 'directory' >>.gitignore			# working tree
	cat .gitignore					# working tree
	git status 					# repo
	echo '!directory' >>.gitignore			# working tree
	cat .gitignore 					# working tree
	git status 					# repo
	echo 'directory' >>.gitignore			# working tree
	git status 					# repo
---	
### Tracking selectively inside untracked directories (gitignore)
	echo '!directory/trackme.txt' >>.gitignore 	# working tree
	git status 					# repo
	echo '!directory' >>.gitignore			# working tree
	cat .gitignore 					# working tree
	git status					# repo
	git status -u					# repo
	echo 'directory/*' >>.gitignore			# working tree
	git status 					# repo
	echo '!directory/trackme.txt' >>.gitignore	# working tree
	cat .gitignore 					# working tree
	ls -FR						# working tree
	git status 					# repo
	git status -u					# repo
	git add directory/trackme.txt 			# working tree > index
	git status 					# repo
	git diff .gitignore				# working tree v index
	git add .gitignore 				# working tree > index
	git status 					# repo
	git help gitignore				# documentation
---
### Stop tracking 
	git rm --staged directory/trackme.txt		# NEW: git rm  
	git rm --cached directory/trackme.txt 		# index
	ls -RF						# working tree
	git status 					# repo
	git status -u					# repo
	ls -FR						# working tree
	git add directory/trackme.txt			# working tree > index
	git status 					# repo
	git diff lines.txt				# working tree v index
---
### Undoing changes staged in the index
	cat lines.txt 					# working tree
	echo 'fifth line' >>lines.txt 			# working tree
	cat lines.txt 					# working tree
	git diff lines.txt				# working tree v index
	git restore lines.txt				# NEW: git restore 
	git status 					# repo
	cat lines.txt 					# working tree
	git diff lines.txt				# working tree v index
	git restore lines.txt				# index > working tree
	cat lines.txt					# working tree 
	ls -a 						# working tree
	ls -FR						# working tree
	git help diff					# documentation
---
### Deleting (un)tracked documents 
	rm directory/					# working tree						
	rm -r directory/				# working tree
	ls -FR						# working tree
	git status -u					# repo
	git restore directory				# index > working tree
	ls -RF						# working tree
	touch directory/emptyfile.txt			# working tree
	touch directory/donttrackme.txt			# working tree
	ls -RF						# working tree
	git status					# repo
	git rm directory/				# index + working tree
	git rm -r directory/				# index + working tree
	git rm -rf directory/				# index + working tree
	ls -FR						# working tree
	git restore directory/				# index > working tree
---
### Renaming tracked documents 
	mv directory/donttrackme.txt directory/trackme.txt # working tree
	ls -FR						# working tree
	git status 					# repo
	git status -u					# repo
	ls -FR						# working tree
	git add directory/trackme.txt 			# working tree > index
	git status 					# repo
	git mv directory/trackme.txt directory/trackable.txt # NEW: git mv
	git status 					# repo
	cat .gitignore 					# working tree
	git help gitignore				# documentation
	ls -FR						# working tree
	cat lines.txt 					# working tree
	git status 					# repo
							# PILL EXERCISE:
	git mv lines.txt Lines.txt			# index + working tree
	git status 					# repo
	cat Lines.txt 					# working tree
							# PILL EXERCISE: end
	ls -a .git					# working tree
	history						# working tree
	cat Lines.txt 					# working tree
	git diff Lines.txt				# working tree v index
	git status 					# repo
	git rm --cached directory/trackable.txt		# index 
	git status 					# repo
---
### Commit changes with an identity and a message
	git commit -m 'Add first four lines' Lines.txt	# NEW: git commit
	git config -l					# repo
	git config --global user.email 'wmotion.eu@gmail.com' 	# repo
	git config --global user.name 'Giordano Lipari laptop'	# repo
	git config --global core.editor nano		# repo
	git config --global core.autocrlf false		# repo
	git config --list				# repo
	git status 					# working tree
	git log						# NEW: git log
	git status 					# repo
	git diff 					# working tree v index
	git diff .gitignore				# working tree v index
	git commit -m 'Add .gitignore' .gitignore	# history 
	git log						# history
	git status 					# repo
							# DRILL EXERCISE: 
	echo 'fifth line' >>Lines.txt 			# working tree
	cat Lines.txt 					# working tree
	git status 					# repo
	git add Lines.txt 				# working tree > index
	git status 					# repo
	git commit -m 'Add fifth line' Lines.txt 	# history
	git status 					# repo
	git log 					# history
	git diff Lines.txt				# working tree v index
	echo 'sixth line' >>Lines.txt 			# working tree	
	cat Lines.txt 					# working tree
	git diff Lines.txt				# working tree v index
	git add Lines.txt 				# working tree > index
	git diff Lines.txt				# working tree v index
	git commit -m 'Add sixth line' Lines.txt 	# working tree
	git log						# history
							# DRILL EXERCISE: end
---
### Inspecting the history
	git log --oneline				# history
	echo 'seventh line' >>Lines.txt 		# working tree
	cat Lines.txt 					# working tree
	git diff Lines.txt				# working tree v index
	git add Lines.txt 				# working tree > index
	git status 					# repo
	git log --oneline				# history
	git diff 047ba38 Lines.txt			# working tree v history
	git diff HEAD Lines.txt				# working tree v history
	git diff HEAD~1 Lines.txt			# working tree v history
	git log --oneline				# history
	git diff adbe95d Lines.txt			# working tree v history
	git diff HEAD HEAD~1 Lines.txt			# history v history
	git diff HEAD~1 HEAD Lines.txt			# history v history
	cat Lines.txt 					# working tree	
	git diff HEAD~3 HEAD~1 Lines.txt		# history v history
---
### Tagging commits
	git log --oneline				# history
	git tag 'hey'					# NEW: git tag
	git log --oneline				# history
	git tag 'hey jude' HEAD~1			# history: fail
	git tag HEAD~1 'hey jude'			# history: fail
	git tag HEAD~1 'hey_jude'			# history: fail
	git tag HEAD~1 'heyjude'			# history: fail
	git tag 'hey_jude' HEAD~1			# history: pass
	git tag						# history
	git log --oneline				# history
	git status 					# repo
	git diff Lines.txt				# working tree v index
	git diff HEAD Lines.txt				# working tree v history
	git commit -m 'Add seventh line' Lines.txt 	# history
	git status 					# repo
	git log --oneline				# history
	git diff hey hey_jude				# history v history

~~git tag -m hey_jude v1~~  
~~git tag -m hey v2~~

	git log --oneline				# history
	git help tag					# documentation
---
### Closure day 1
true
false
false 
true
echo
# STARTING WITH DAY 2
pwd
ls
cd 2306-VC_CD-TUD/L12/git/
ls
ls -FR
git history
git log
git log --oneline
git status 
# git tag -m hey v1 
git tag -d hey hey_jude
git log --oneline
git tag -d v1 v2
git log --oneline
git tag ex1 adbe95d
git log --oneline
git tag ex2 047ba
git log --oneline
cat Lines.txt 
git diff HEAD~3 HEAD~1 Lines.txt
cat Lines.txt 
git restore --source HEAD Lines.txt
cat Lines.txt 
git status 
git restore HEAD Lines.txt
git diff HEAD~2 Lines.txt
git diff ex2 Lines.txt
