true
false
echo $PROMPT_COMMAND 
export PROMPT_COMMAND=
echo $PROMPT_COMMAND 
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
true
# end testing gitautopush before the git lesson
ls
cd gitautopush/
ls
git mv git.log git.md
