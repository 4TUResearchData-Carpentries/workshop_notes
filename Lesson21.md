# Workshop Version Control and Collaborative Development for Research Software Development (14-16 June 2023)

The type-along notes have been revised after the lesson by removing duplicates, changing the position of a command at places, and grouping similar actions into sections. The comments (the text after the # tokens) outline the context of the command (working tree, stash, index, repository, documentation, shell). The abbreviations used in the comments are:
* repo: repository = tracked documents and index and history
* v: versus (a comparison)
* \>, <: direction of information transfer
* &: merge

## LESSON 2. BRANCHING AND REMOTE OPERATIONS

### 2.1 Branching and remote operations

#### Create, rename, change, and delete branches

	git log --oneline				# history
	git status					# repo
	git branch					# NEW: git branch
	cat Lines.txt					# working tree
	git branch B1					# repo
	git branch					# repo
	git log --oneline				# history
	git status					# repo
	git branch -m B1 B2				# repo
	git log --oneline				# history
	git branch -d B2				# repo
	git log --oneline				# history
	git branch -d master				# repo
	git branch -m master foo			# repo
	git status					# repo
	git branch -d foo				# repo
	git branch -m foo main				# repo
	git status					# repo
	git branch					# repo
	cat Lines.txt					# working tree
	git branch B1					# repo
	git log --oneline				# history
	git switch					# NEW: git switch
	git switch B1					# repo
	git log --oneline				# history
	git status					# repo
							# DRILL EXERCISE:
	git branch delft, technology, university
	# switch around branches and explore consequences
	git branch -d delft, technology, university
							# DRILL EXERCISE: end
	git branch					# repo
	git branch -d B1				# repo

#### Develop and compare branches

	git switch main					# repo
	git branch B1					# repo
	git branch B2					# repo
	git branch					# repo
	git status					# repo
	echo 'ninth line' >>Lines.txt			# working tree
	git add Lines.txt				# working tree > index
	git status					# repo
	git commit -m 'main: add ninth line' Lines.txt 	# index > history
	git log --oneline				# history
	git switch B1					# repo
	git status					# repo
	git log --oneline				# history
	git log --oneline --all				# NEW option
	git switch B2					# repo
	git log --oneline --all				# history
	git switch B1					# repo
	git log --oneline				# history
	git log --oneline --all				# history
	cat Lines.txt					# working tree
	git switch main					# repo
	cat Lines.txt					# working tree
	git switch B1					# repo
	cat Lines.txt					# working tree
	git log --oneline				# history
	git log --oneline --all				# history
	git branch					# repo
	cat Lines.txt					# working tree
	echo 'Ninth Line' >>Lines.txt			# working tree
	cat Lines.txt					# working tree
	git switch B2					# repo
	cat Lines.txt					# working tree
	git log --oneline				# history
	git switch B1					# repo
	cat Lines.txt					# working tree
	git log --oneline --all				# history
	git status					# repo
	git diff Lines.txt				# index
	git switch main					# repo
	git stash -m 'switching to main aborted' push	# NEW: git stash
	git stash push -m 'switching to main aborted'	# working tree > stash
	git stash list					# stash
	cat Lines.txt					# working tree
	git switch main					# repo
	cat Lines.txt					# working tree
	echo 'tenth line' >>Lines.txt			# working tree
	git add Lines.txt				# working tree > index
	git commit -m 'main: add tenth line'		# index > history
	git status					# repo
	git log --oneline --all				# history
	cat Lines.txt					# working tree
	git switch B1					# repo
	cat Lines.txt					# working tree
	git stash list					# stash
	git stash pop					# stash > working tree
	git stash list					# stash
	cat Lines.txt					# working tree
	git log --oneline --all				# history
	git status					# repo
	git diff Lines.txt				# working tree v index
	git add Lines.txt				# index
	git commit -m 'B1: add Ninth Line'		# index > history
	git log --oneline --all				# history

#### Visualise and merge branches, and resolve conflicts

	git log --oneline --all				# history
	git log --graph --oneline --all			# history
	git log --parents --oneline --all		# history
	git log --graph --parents --oneline --all	# history
	git log --graph --parents --oneline --all -n 5	# history
	cat Lines.txt					# working tree
	git diff main Lines.txt				# working tree v history
	git diff main~1 Lines.txt			# working tree v history
	git diff main~2 Lines.txt			# working tree v history
	git diff main~2 main~3 Lines.txt		# history v history
	git status					# repo
	git diff main Lines.txt				# working tree v history
	git switch main					# repo
	git diff B1 Lines.txt				# history v working tree
	git merge -m 'Merge development on B1 into main' Lines.txt	# NEW: git merge
	git merge -m 'Merge development on B1 into main'		# repo & repo
	git merge -m 'Merge development on B1 into main' B1		# repo & repo
	git diff Lines.txt				# working tree v index
	cat Lines.txt					# working tree
	git log --oneline				# history
	git status					# repo
	nano Lines.txt					# working tree
	# resolve conflict in overlapping area manually # working tree
	cat Lines.txt					# working tree
	git add Lines.txt				# working tree > index
	git status					# repo
	git commit -m 'Merge changes from B1 into main'	# index > history
	git log --oneline --all				# history
	git log --parents --oneline --all		# history
	git log --parents --oneline --all --graph	# history

##### End of 2.1
---
