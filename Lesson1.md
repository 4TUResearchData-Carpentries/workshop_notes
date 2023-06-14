test
true
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
