# Workshop notes

**Document status** Currently, this document is an adolescent draft. Bear with the bear.

**Readership** Workshop coordinators and instructors.

---

## 1. Automated note-taking for the Carpentries workshops using gitautopush

**The lesson notes** are the documents containing the commands the instructors type along during a lesson. 
Instructors may not present the material of the lesson episodes following the Carpentries website verbatim.

**The ambition** is to use this repository to share and store the notes of all lessons of all editions of all Carpentries workshops held at the 4TU Research Data. 

**The need** _Learners_ use the lesson notes to catch up with a backlog of instructions when they had to lag behind, for example after receiving a helper's support with an issue. Or as written reference after the workshop. 
Previously, one helper was fully engaged with the task of note-taking. 
The application to the Python lesson by [Maurits Kok (@mwakok)](https://github.com/mwakok) at https://github.com/mwakok/software_carpentry_learner has showed that the note-taking can be automated effectively.

**The key tool** is `gitautopush`, an application that _detects_ changes in a local repository, _commits_ them, and _pushes_ them to the associated remote repository automatically (and uncritically and verbosely too).  
The local repository in the instructor's machine must contain the files to be shared while the instructor keeps on typing. 
(The local repository _performs_ the pushes.)  
The learners can consult the notes in the auto-pushed remote. 
(The remote _receives_ the pushes.)  
`gitautopush` has indeed been conceived to support the Software Carpentries from the start. 
This application is available from the Python Package Index at https://pypi.org/project/gitautopush/ (accessed 19 May 2023); more on the installation below.

**This document** is intended for instructors and explains how to use this remote to serve each edition of a Carpentries workshop and how to prepare your local computer for this. 
As of May 2023, it only comments on the lessons of the Software Carpentry Workshop (SCW): Git, Unix Shell, and Python.
Each lesson fills the working directory and repositories differently. 
The table below organises how the working directory is used in each unassisted lesson:

| Lesson | Contains a repo? | Commands are typed in...| We share... | Notes contain... | Half-days | 
|:-------|:------|:------|:------|:------|:------|
| Git | yes | Shell terminal | Shell command history | input | 1 |
| Unix Shell  | no | Shell terminal | Shell command history | input | 1 |
| Python | no | Browser | Jupyter notebook | in/output | 2 |

---

## 2. Organizing information for automated note-sharing  

Using this repository for automated note-taking/sharing requires that:

1. the _master branch_ only provides instructions to _coordinators/instructors_;
2. this README in the _master branch_ addresses _coordinators/instructors_;
3. workshop _editions_ are tied to specific _branches_;
4. the _lesson notes_ are files tracked by and committed to an _edition branch_; 
5. the README of the _edition branch_ addresses the workshop _learners_.

**Name conventions** To leverage speed reading and finding, the following usage is encouraged:

* **edition-specific branch names** follow the pattern \[yymm\]-\[type of workshop\]-\[institution\].  
  Example: Software Carpentry Workshop in May 2023 at Delft => `2305-SCW-TUD`.
* **shared-file names** start with the lesson they refer to, as follows:  
  `python*`. For example, Python shares JupyterLab notebooks and runs in two sessions => `python1.ipynb`, `python2.ipynb`  
  `unixshell*`, `git*`. For example, Unix Shell and Git both share the command history and run in one session each => `unixshell.log`, `git.log`. 

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

Other usage notes:

* File extensions may vary.  
It is important for proper visualisation in GitHub that human-readable files have extensions typically recognized as such, like `*.log` or `*.txt`.  
* You may share more files than the notes, of course, provided their name is prepended with the originating lesson name, as said just above.
* In principle, one can also use directories to organise contents according to the lessons.  
However, a flat list of files is leaner and discourages sharing in bulks. 
If this pilot takes off, this repository is expected to contain the materials of many editions. 
The leaner from the outset, the better for the instructors' information management and the learners' ['extraneous load'](https://en.wikipedia.org/wiki/Cognitive_load).


---

## 3. Preparations for coordinators/instructors

### 3.1 Data

#### 3.1.1 The remote 'edition branch' 

The workshop coordinator can undertake these actions. 
You do not need to be an instructor to set this up.

##### Where and when
In this repository on GitHub. Its URL is https://github.com/4TUResearchData-Carpentries/workshop_notes.  

After the workshop edition has been planned and the links to the Carpentries workshop site and to the collaboration document are live.  

##### What and how
The table details the steps to prepare the edition branch on this GitHub remote repository.

|Step |Objective |Action |Example
|:-------|:------|:------|:-----|
|1 | create empty edition branch | [create a new branch in this repo](https://github.com/4TUResearchData-Carpentries/workshop_notes/branches) | [`2305-SCW-TUD`](https://github.com/4TUResearchData-Carpentries/workshop_notes/tree/2305-SCW-TUD) |
|2 | customize README for learners | edit workshop type, days, host and links (*) | [README of 2305-SWC-TUD](https://github.com/4TUResearchData-Carpentries/workshop_notes/blob/2305-SCW-TUD/README.md) (Software, 22-25 May 2023, Delft University of Technology, ...)|
|3 | broadcast URL of edition branch | update collaboration document for learners | In the [workshop collaborative document](https://docs.google.com/document/d/1s_LVZVKFA908kGex2wI4Ce-ZF8CqQLfD8S2kDRClL0g/edit#) sections on type-along commands point to the URL of the edition branch https://github.com/4TUResearchData-Carpentries/workshop_notes/tree/2305-SCW-TUD |

(*) As of 19 May, the README contains general usage notes and edition-specific links.


#### 3.1.2 The local 'edition branch'

Instructors must undertake these actions. 
Specific notes of caution apply as to which lessons you are teaching.

##### Where and when

As for the when, after the edition branch is ready in this remote.

As for the where, in the machine the instructor will use for giving the lesson.
You need to make a conditioned choice regarding the paths of:
 
* the **working directory** (WORKINGDIR). 
This is where you carry out the demonstrations for the learners. 
Typically, this is a subdirectory of the desktop. 
The instructor is free to choose any of his/her liking, however. 
You show the learners the terminal working on this directory.
* the **auto-pushing directory** (AUTOPUSHDIR).
This where you save your lesson notes (whether notebooks or command histories) AND clone (the edition branch of) this repository AND have `gitautopush` observe the changes (a terminal is thus needed for launching `gitautopush`).
You do _not_ show the learners the terminal working with this directory.


The table below guides the choice of the AUTOPUSHDIR directory for the different lessons:

| Questions | Unix Shell | Git | Python |
|------:|:------|:------|:------|
| **Will AUTOPUSHDIR = $WORKINGDIR work?** | No. Create another directory unrelated to WORKINGDIR.  |No. Same as Unix Shell. | Yes. |
| **Why?** | You are showing the learners the terminal with WORKINGDIR. gitautopush is verbose and its messages pollute that terminal at any change of the directory content, that is any command you type. | You are showing the learners the terminal with WORKINGDIR (see Unix Shell). Also, you need a Git repository which you have full control on, whereas gitautopush will commit any change of the directory content and try to push it. Let alone that it is unhandy to manage two repositories in one directory. | You are working on the browser and never share the terminal with the learners. The verbose standard output of gitautopush does not interfere with your demonstration. |
| **What do I need to do in AUTOPUSHDIR?** | Redirect the command history to a file contained there. See next section. | Same as Unix Shell. See next section.  | A `.gitignore` file that does not track the hidden clutter that goes with a notebook, like the directory `.ipynb_checkpoints` (plus any notebook output you do not need to share). See next section. |
| **How many terminals are needed?** | Three. | Three. | One. |


##### What and how 

Once you set your WORKINGDIR and AUTOPUSHDIR as convenient and appropriate, clone the edition branch into AUTOPUSHDIR. Conveniently, the following command enables you to clone the edition branch only. (Source: [Git documentation](https://www.git-scm.com/docs/git-clone) and [Stackexchange Q&A](https://stackoverflow.com/a/9920956)). Please set or substitute the variables AUTOPUSHDIR and EDITIONBRANCH (the edition branch name, for example `SWC-2305-TUD`).

    ```bash
    mkdir $AUTOPUSHDIR
    git clone git@github.com:4TUResearchData-Carpentries/workshop_notes.git --branch $EDITIONBRANCH --single-branch $AUTOPUSHDIR
    ```

For **Python**, create a `.gitignore` file (keep single quotes!):

    ```bash
    cd $AUTOPUSHDIR
    echo '.ipynb_checkpoints' >> .gitignore
    echo '.gitignore' >> .gitignore
    ``` 
The last line is not the orthodox way: it works but see `git help gitignore` for cleaner ways to implement the same effect.


For **Unix Shell** and **Git**, use 

1. A terminal to type along your commands. You start off in WORKINGDIR. This terminal shows both input and output. You always share this with the learners.
   There you type: 
   
    ```bash
        export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
    ```
2. Another terminal showing the history of commands typed. This terminal shows only input.  
You may or may not share this terminal with the learners alongside the first. The `tee` command generates the lesson notes upon redirecting to a file the command history displayed on this terminal.
   There you type: 
   
    ```bash
        clear
        tail -n 0 -f ~/.bash_history | tee -a $WORKINGDIR/$LESSON.log
    ```
where `LESSON = [ git | unixshell ]` according to the name convention for the notes file presented in §2. 

You close both terminals after closing the lesson.


### 3.2 Software (gitautopush)

=== hereinafter: work in progress ===

...

+ Autosave interval in JupyterLab.


-----

## Fragments

You are in the master branch, showing general instructions.

https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-and-highlighting-code-blocks
