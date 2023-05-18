# gitautopush-sandbox
Repository to test the implementation of gitautopush in all lessons of the Software Carpentries

## Ideas in motion
1. Associate branches to editions
    * branch names is \[yymm\]-\[type of workshop\]
      * example: Software Carpentry Workshop in May 23 => `2305-SCW`   
2. Associate lessons to files
    * Python uses JupyerLab notebooks (showing input and output) and runs in two days:
      * file name is python\[1|2\].ipynb
        * example: `python1.ipynb`, `python2.ipynb` 
    * Unix Shell and Git use the command history (showing input only) and run in one day each:  
      * file name is \[lesson\].log  
        * example: `unixshell.log` `git.log` 

Expected organisation  
    4turesearchdata-carpentries  
      gitautopush-sandbox
        2305-sWC
          git.log
          python1.ipynb
          python2.ipynb
          unixshell.lo
          
      

### Requirements for instructors

You need to create the edition branch in the local repository
and switch to it before having gitautopush push into the appropriate remote branch.

### What to share with the learners

A link to your lesson's file in the edition's branch in this repository.  
Example: https://github.com/mwakok/software_carpentry_learner/blob/notes-oct-2022/python_day1.ipynb  
Example: https://github.com/4turesearchdata-carpentries/blob/2305-SCW/python1.ipynb

Or even shorter  
https://github.com/mwakok/software_carpentry_learner/blob/notes-oct-2022/  
https://github.com/4turesearchdata-carpentries/blob/2305-SCW/  
which the workshop coordinator can do when setting up a new workshop edition
