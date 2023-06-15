	# LESSON 2
	git log --oneline				#
	git status				#
	git branch				#
	cat Lines.txt				#
	git branch B1				#
	git branch				#
	git log --oneline				#
	git status				#
	git branch -m B1 B2				#
	git log --oneline				#
	git branch -d B2				#
	git log --oneline				#
	git branch -d master				#
	git branch -m master foo				#
	git status				#
	git branch -d foo				#
	git branch -m foo main				#
	git status				#
	# WE RESUME AT 13:43				#
	git branch				#
	cat Lines.txt				#
	git branch B1				#
	git log --oneline				#
	git switch				#
	git switch B1				#
	git log --oneline				#
	git status				#
	git branch				#
	git branch				#
	git branch -d B1				#
	git switch main				#
	git branch -d B1				#
	git branch B1				#
	git branch B2				#
	git branch				#
	git status				#
	echo 'ninth line' >>Lines.txt				#
	git add Lines.txt				#
	git status				#
	git commit -m 'main: add ninth line ' Lines.tvxt
	git log --oneline				#
	git switch B1v
	git status				#
	git log --oneline				#
	git log --oneline --all				#
	git switch B2				#
	git switch B1				#
	git switch B2				#
	git log --oneline --all				#
	git switch B1				#
	git log --oneline				#
	git log --oneline --all				#
	git switch main				#
	git switch B1				#
	cat Lines.txt				#
	git switch main				#
	cat Lines.txt				#
	git switch B1				#
	cat Lines.txt				#
	git log --onelin				#
	git log --oneline				#
	git log --oneline --all				#
	git branch				#
	cat Lines.txt				#
	echo 'Ninth Line' >>Lines.txt				#
	cat Lines.txt				#
	git switch B2				#
	cat Lines.txt				#
	git log --oneline				#
	git switch B1				#
	cat Lines.txt				#
	git log --oneline --all				#
	git branch yidong				#
	git log --oneline --all				#
	git branch -d yidong				#
	git status				#
	git diff Lines.txt				#
	git switch main				#
	git stash -m 'switching to main aborted' push				#
	git stash push -m 'switching to main aborted'				#
	git stash list				#
	cat Lines.txt				#
	git switch main				#
	cat Lines.txt				#
	echo 'tenth line' >>Lines.txt				#
	git add Lines.txt				#
	git commit -m 'Add tenth line'				#
	git status				#
	git log --oneline --all				#
	cat Lines.txt				#
	git switch B1				#
	cat Lines.txt				#
	git stash list				#
	git stash pop				#
	git stash list				#
	cat Lines.txt				#
	git log --oneline --all				#
	git status				#
	git diff Lines.txt				#
	git add Lines.txt				#
	git commit -m 'B1: add Ninth Line'				#
	git log --oneline --all				#
	# WE RESUME AT 14:56				#
	git log --oneline --all				#
	git log --graph --oneline --all				#
	git log --parents --oneline --all				#
	git log --parents --oneline --all				#
	git log --graph --parents --oneline --all				#
	git log --graph --parents --oneline --all -n 5				#
	git log --graph --parents --oneline --all -n 4				#
	cat Lines.txt				#
	git diff main Lines.txt				#
	git diff main~1 Lines.txt				#
	git diff main~2 Lines.txt				#
	git diff main~2 main~3 Lines.txt				#
	git status				#
	git diff main Lines.txt				#
	git switch main				#
	git diff B1 Lines.txt				#
	git merge -m 'Merge development on B1 into main' Lines.txt				#
	git merge -m 'Merge development on B1 into main'				#
	git merge -m 'Merge development on B1 into main' B1				#
	git diff Lines.txt				#
	cat Lines.txt				#
	git log --onelin				#
	git log --oneline				#
	# resume autogitpush				#
	git status				#
	nano Lines.txt				#
	cat Lines.txt				#
	git add Lines.txt				#
	git status				#
	git commit -m 'Merge changes from B1 into main'					#
	git log --online --all				#
	git log --oneline --all				#
	git log --parents --oneline --all				#
	git log --parents --oneline --all --graph				#
