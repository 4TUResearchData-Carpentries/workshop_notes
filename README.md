# Workshop notes

**Document status** Currently, this document is an adolescent draft. Bear with the bear.

**Readership** Workshop coordinators and instructors.

## 1. Automated note-taking for the Carpentries workshops using gitautopush

**The ambition** is to use this repository to share and store the notes of all lessons of all editions of all Carpentries workshops held at the 4TU Research Data. 

**The lesson notes** are the documents containing the commands the instructors type along during a lesson. 
Instructors may not present the material of the lesson episodes following the Carpentries website verbatim.

**The need** Learners use the lesson notes to catch up with a lesson when they had to lag behind, for example after receiving a helper's support with an issue. 
Previously, one helper was fully engaged with the task of note-taking. 
The application to the Python lesson by [Maurits Kok (@mwakok)](https://github.com/mwakok) at https://github.com/mwakok/software_carpentry_learner has showed that the note-taking can be automated effectively.

**The key tool** is `gitautopush`, an application that detects changes in a local repository and pushes them to the associated remote repository automatically. 
The local repository in the instructor's machine thus contains the files to be shared as the instructor keeps on typing. 
(The local repository _performs_ the pushes.)  
The learners can consult the notes in the auto-pushed remote. 
(The remote _receives_ the pushes.) 
`gitautopush` has indeed been conceived to support the Software Carpentries from the start. 
This application is available from the Python Package Index at https://pypi.org/project/gitautopush/ (accessed 19 May 2023).

**This document** is intended for instructors and explains how to use this remote to serve each edition of a workshop carpentry and prepare your local computer for this. 
As of May 2023, it only comments on the lessons of the Software Carpentry Workshop (SCW): Git, Unix Shell, and Python.
Each lesson fills the working directory and repositories differently. 
The table below organises how the working directory is used in each unassisted lesson:

| Lesson | Contains a repo? | What to share? | 
|-------|------|------| 
| Git | yes | command history |
| Unix Shell  | no | command history |
| Python | no | notebook |

## Expected data organisation  

This is the eventual organisation

| What | What | Name format |
|-------|------|------|
| `4turesearchdata-carpentries`  | this GitHub account | -- |
| `workshop_notes` | this repository | -- |
| `2305-SWC-TUD` | a branch | \[yymm\]-\[type of workshop\]-\[institution\] |
| `git.log`       | a file with the lesson notes | `git*` |
| `python1.ipynb` | a file with the lesson notes | `python*` |
| `python2.ipynb` | a file with the lesson notes | `python*` |
| `unixshell.log` | a file with the lesson notes | `unixshell*` |




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


## Fragments


