# Workshop notes

Currently, this document is less than a draft. Bear with the bear.

## Automated note-taking for the Carpentries workshops using gitautopush

The ambition of this repository is to share and store the notes of all lessons of all editions of all Carpentries workshops held at the 4TU Research Data44. 

the need is ...

the tool (gitautopush) is ...

## Expected data organisation  

1. Associate branches to workshop editions
    * branch name format is \[yymm\]-\[type of workshop\]-\[institution\]
      * example: Software Carpentry Workshop in May 23 at Delft=> `2305-SCW-TUD`   
2. Associate lessons to files
    * Python uses JupyerLab notebooks (showing input and output) and runs in two days:
      * file name is python\[1|2\].ipynb
        * example: `python1.ipynb`, `python2.ipynb` 
    * Unix Shell and Git use the command history (showing input only) and run in one day each:  
      * file name is \[lesson\].log  
        * example: `unixshell.log` `git.log` 



| Where | What | 
|-------|------| 
| 4turesearchdata-carpentries  | this GitHub account | 
| `workshop_notes` | this repository |
| `2305-SWC-TUD` | a branch |
| `git.log`       | a file with the lesson notes |
| `python1.ipynb` | a file with the lesson notes |
| `python2.ipynb` | a file with the lesson notes |
| `unixshell.log` | a file with the lesson notes |


### What to share with the learners

The URL https://github.com/4TUResearchData-Carpentries/workshop_notes/tree/2305-SCW-TUD points to the list of lesson notes.  
This link can be shared with learners. 

Each branch has an own README.

...

## Requirements for instructors

### data

You need to create the edition branch in the local repository
and switch to it before having gitautopush push into the appropriate remote branch.

...

### software

The gitautopush stuff here

...



