# Workshop notes

**Document status** Currently, this document is an adolescent draft. Bear with the bear.

**Readership** Workshop coordinators and instructors.

---

## 1. Automated note-taking for the Carpentries workshops using gitautopush

**The ambition** is to use this repository to share and store the notes of all lessons of all editions of all Carpentries workshops held at the 4TU Research Data. 

**The lesson notes** are the documents containing the commands the instructors type along during a lesson. 
Instructors may not present the material of the lesson episodes following the Carpentries website verbatim.

**The need** _Learners_ use the lesson notes to catch up with a lesson when they had to lag behind, for example after receiving a helper's support with an issue. 
Previously, one helper was fully engaged with the task of note-taking. 
The application to the Python lesson by [Maurits Kok (@mwakok)](https://github.com/mwakok) at https://github.com/mwakok/software_carpentry_learner has showed that the note-taking can be automated effectively.

**The key tool** is `gitautopush`, an application that detects changes in a local repository and pushes them to the associated remote repository automatically (and uncritically and verbosely too).  
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

| Lesson | Contains a repo? | What to share? | Notes content | Half-days | 
|:-------|:------|:------|:------|:------|
| Git | yes | Shell command history | input | 1 |
| Unix Shell  | no | Shell command history | input | 1 |
| Python | no | Jupyter notebook | in/output | 2 |

---

## 2. Information organisation for automated note sharing  

Using this repository for automated note-taking/sharing requires that:

1. the _master branch_ only provides instructions to _instructors_;
2. the README of the _master branch_ is the file you are reading;
3. workshop _editions_ are tied to _branches_;
4. the _lesson notes_ are files tracked by and committed to the _edition branch_; 
5. the README of the _edition branch_ addresses the workshop _learners_.

To leverage speed reading and finding, the following name conventions are encouraged:

* **branch names** follow the pattern \[yymm\]-\[type of workshop\]-\[institution\].  
  Example: Software Carpentry Workshop in May 23 at Delft => `2305-SCW-TUD`.
* **shared-file names** start with the lesson they refer to, as follows:  
  `python*`. For example, Python shares JupyterLab notebooks and runs in two sessions => `python1.ipynb`, `python2.ipynb`  
  `unixshell*`, `git*`. For example, Unix Shell and Git both share the command history and run in one session each => `unixshell.log`, `git.log`. 

Other usage notes:

* You may share more files than the notes, of course, provided their name is prepended with the originating lesson name, as said just above.
* File extensions may vary.  
It is important for proper visualisation in GitHub that human-readable files have typical extensions like `*.log` or `*.txt`.  
* In principle, one can also use directories to organise contents according to the lessons.  
However, a flat list of files is leaner and discourages sharing in bulks. 
If this pilot takes off, this repository is expected to contain the materials of many editions. 
The leaner from the outset, the better for the information management and ['extraneous load'](https://en.wikipedia.org/wiki/Cognitive_load).

The table is an example of the eventual data hierarchy:

| Name | Content | Name format |
|:-------|:------|:------|
| `4TUResearchData-Carpentries`  | this GitHub account | -- |
| `workshop_notes` | this (remote) repository | -- |
| `2305-SWC-TUD` | an edition branch | \[yymm\]-\[type of workshop\]-\[institution\] |
| `git.log`       | lesson notes in the edition branch | `git*` |
| `python1.ipynb` | lesson notes in the edition branch | `python*` |
| `python2.ipynb` | lesson notes in the edition branch | `python*` |
| `unixshell.log` | lesson notes in the edition branch | `unixshell*` |

---

## 3. Preparations for coordinators/instructors

### 3.1 Data

#### 3.1.1 The remote 'edition branch' 

The workshop coordinator can undertake these actions. 
You do not need to be an instructor for this.

##### Where and when
In this repository on GitHub: https://github.com/4TUResearchData-Carpentries/workshop_notes.  

After the workshop edition has been planned and the links to the Carpentries workshop site and to the collaboration document are live.  

##### What and how
The table details the steps to prepare the edition branch on this GitHub remote repository.

|Step |Objective |Action |Example
|:-------|:------|:------|:-----|
|1 | create empty edition branch | [create a new branch in GitHub](https://github.com/4TUResearchData-Carpentries/workshop_notes/branches) | [`2305-SCW-TUD`](https://github.com/4TUResearchData-Carpentries/workshop_notes/tree/2305-SCW-TUD) |
|2 | customize README for learners | edit workshop days, place and links | [README of 2305-SWC-TUD](https://github.com/4TUResearchData-Carpentries/workshop_notes/blob/2305-SCW-TUD/README.md)
|3 | broadcast URL of edition branch | update collaboration document for learners | In the [workshop collaborative document](https://docs.google.com/document/d/1s_LVZVKFA908kGex2wI4Ce-ZF8CqQLfD8S2kDRClL0g/edit#) sections on type-along commands point to the URL of the edition branch https://github.com/4TUResearchData-Carpentries/workshop_notes/tree/2305-SCW-TUD |



#### 3.1.2 The local 'edition branch'


=== hereinafter: work in progress ===

Instructors must undertake these actions. 
Specific notes of caution apply as to which lessons you are teaching.

##### Where and when

In the machine the instructor will use for giving the lesson.   
Which working directory.
 
After the remote edition branch is ready.


##### What and how 

The issue of ...

The table details the actions for edition repository on GitHub:

`git clone <url> --branch <branch> --single-branch <folder>`   
source: https://stackoverflow.com/a/9920956

You need to create the edition branch in the local repository
and switch to it before having gitautopush push into the appropriate remote branch.
...

### 3.2 Software (only local)

The gitautopush stuff here

...

-----

## 4. What to share with the learners

The URL https://github.com/4TUResearchData-Carpentries/workshop_notes/tree/2305-SCW-TUD points to the list of lesson notes.  

This link can be shared with learners. 

Each branch has an own README.

As of 19 May, it contains general usage notes and edition-specific links (which have to be updated)


-----

## Fragments

You are in the master branch, showing general instructions.


https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-and-highlighting-code-blocks
