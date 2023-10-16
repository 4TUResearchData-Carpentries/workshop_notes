# LESSON 3: Collaborative Software Development

**Instructor:** *Manuel G. Garcia*

**Last update:** *16-10-2023*

**Presentation:** *[Collaborative Software Development](https://docs.google.com/presentation/d/1yBy_4r9aHhsUH9AH1s7zLWIQ_h20xNKVYM1somPnz1Q/edit?usp=sharing)*

<!-- **Exercises:** *[Exercises remote operations]()* -->

Lecture notes for the lesson on collaborative software development.

## PREPARATION
The instructor sets up the command history on two terminals do the following:

1. On main terminal:
```bash
 export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
```
2. On second (history) terminal:
```bash
 tail -f ~/.bash_history | nl -w 3
```

### Windows Terminal (Preview) [Keyboard shortcuts]
Useful shortcuts for the Windows Terminal (Preview) App on Windows 11.

| Action             | Shortcut                |
|--------------------|--------------------------|
|Split pane horizontally | Alt + Shift + `-`   | 
|Split pane vertically   | Alt + Shift + `+`   |
|Close a pane            | Ctrl+Shift + `w`     |
|Move pane focus         | Alt + `Arrow keys`   |
|Resize the focused pane | Alt+Shift + `Arrow keys` |

------

## PART 1

### 0. Recapitulation Operations with Remotes

#### a. Common operations with remotes [5 min]

> Recap figure on how local repostories and remotes are connected and how to work with remotes (Slides).

> Recap what `clone, fetch, merge, pull` and `push` commands do.

### A. Collaborative Platforms

#### 1. Connect to GitHub via SSH [ 10 min]

> Ask participants to test the connection with:

```shell
ssh -T git@github.com
```

> GitHub requires authentification via SSH to do pulls an pushes, but not for cloning. **Use illustrations** to explain what a SSH connection entitles.

To connect via SSH do the following [skip if connections have been successfuly set]:

* Create a Key-pair inside the `.ssh`  in the Home directory

    ```shell
    # move to Home directory
    cd ~
    # create key
    ssh-keygen -t ed25519 -C "your_email@example.com"
    # save to the default location and file name: ~/.ssh/id_ed25519
    ```
* Check the keys have been created

    ```shell
    ls ~/.ssh/
    ```

* Start the `ssh-agent` and add private key to agent:

    ```shell
    # start agent
    eval "$(ssh-agent -s)"
    
    # add private key
    ssh-add ~/.ssh/id_ed25519
    ```
    > Instruct SSH to use key files in different locations: `ssh -i <path/private/keyfile>`

> Info on how to (start the ssh-agent automatically)[https://docs.github.com/en/authentication/connecting-to-github-with-ssh/working-with-ssh-key-passphrases#auto-launching-ssh-agent-on-git-for-windows]
Mac and Linux user don't have to worry about this.

* Copy public key to GitHub:

    ```shell
    clip < .ssh/id_ed25519.pub
    ```

* Go to GitHub, explain the basics of the interface and add the SSH key.

Profile > Settings > SSH and GPG keys > New SSH key > Add SSH key

* Test SSH connection

    ```shell
    $ ssh -T git@github.com
    ```

> More information on working with (SSH keys and GitHub.)[https://docs.github.com/en/authentication/connecting-to-github-with-ssh]

> Check the info on (Troubleshooting SSH[https://docs.github.com/en/authentication/troubleshooting-ssh]) for GitHub.

#### 2. Exploring the GitHub GUI [ 5 min]

Collaborative platform host and manage remote repositories to enable collaborative development.

> Ask participants if they are familiar with GitHub. If not, give a short explanation of what it is for how to explore the GUI.

Mention GitLab at TU Delft as an alternative for a collaborative platform: https://gitlab.tudelft.nl/

#### 3. Collaborating [ 5 min ]

> Participants are invited as collaborators to the check-in repository. Participants must have permission to merge pull requets.

a. Demo on how to invite collaborators using the [check-in repository.](https://github.com/manuGil/check-in)

b. Paticipant accept inviation via email or GitHub GUI.

### 4. EXERCISE 1: Startig with Collaboration [10 mins]

- Clone the Check-in repository via SSH: https://github.com/manuGil/check-in  
- Make a copy of the file `check-in/template.md` in the same directory; give it an anonymous name, ex. `<name-initials><3-last-digits-phone>.md`
- Open your copy of `template.md` and add something to the lists in the file.
- Commit your changes, and push them to the remote repository. You might experience difficulties doing that, follow the suggestions given by Git. 
- Reflect on the difficulties you faced, and how we might avoid them.


### B. Collaborative Development for Research Software

Developing high quality software requires more than programming and technical skill. Exceptionally good programmers can produce high quality software by themselves. But good programmers will need to collaborate in order to develop complex, high quality software. 

#### 1. Collaborative Development [ 3 mins]

> An Quick introduction to collaborative development. Definitions  (Slides)

#### 2. When to Aim for a Collaborative Approach? [2 min]

> Explain the difference between private and close collaboration

#### 3. Management Strategies [5 min]

> Explain why management is important for developing software, the key factors to consider, and recommend a management strategy.

**Key Factors:**
- Purpose
- People
- Time
- Maintenance

*ROLES AND RESPONSIBILITIES*

> Describe the responsibilities for each role and why they are important for a research-software development project.

**Roles:**
- Project owner
- Administrator
- Reviewer
- Collaborator

> Questions? [10 min]

### 4. EXERCISE 2: Roles and Responsibilities [8 min]

> Participant make teams, decide on roles and name their teams.

1. Make teams of 3 or 4 people. They will work together during group exercises.
2. Assign roles and responsibilities to each member; you should and up with:
    - One project owner
    - One administrator
    - One or more collaborators
    - Zero or more reviewers
3. Choose a name for the team.


-----------------
## BREAK [10 min]
-----------------
## PART 2

### a. Collaborative Workflows [8 min]

Collaborative workflows are estrategies to organise the work of a developer team so that many developers can contribute to a software project. Two common estrategies that use version control and collaborative platforms as leverage are:

- The **branching workflow** and
- The **forking workflow**

>  A short explanation on branching workflow (slides)

#### 1. EXERCISE 3: Branching workflow [15 min]

Teams work on coding taks using the branch worflow model.

1. [Administrator] Creates a repository using [this template](https://github.com/the-magnificents/collab-branching)
2. [Administrator] Invites all team members to the team's repository as collaborators.
3. [Team] Read the `TODO.md` file and each member choses a tasks for the next step.
4. [Team] Apply the branching model to complete the chosen task.
5. [Team] Commit and push changes to the team's repository.


#### 2. Pull requests [ 5 min]

> ask if they already have experience with making pull request.

Explain what they are and teams follow the steps to create a pull request from their branch to the main branch.

#### 3. EXERCISE 4: Pull requests [6 min]

Working as a team merge the changes made in the previous exercise into the main branch of the team’s repository.
1. [Collaborators] create a pull request for their own branch.
    - Give your pull request a meaning name, and a short description.
2. Are there any conflicts? Resolve them using the GitHuB GUI. Ask for help if you need to.
3. [Collaborators] Merge the pull request to the main branch using the method of their choice.
4. Check the main branch to confirm that your changes have been merged.

#### 4. Forking workflow [5 min]

>  A short explanation on fork workflow (slides)

#### 5. EXERCISE 5: Forking workflow [15 min]

[COTINUE HERE]


 [20 mins]

Breakout session 1: [Working with remote repositories](https://docs.google.com/presentation/d/1p7-n04rVGNNlloMvJDAXApYkwWO1ItMIgCMLG9ScTqQ/edit#slide=id.g2513f0e7587_19_19)

> More on remotes: https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes 

> Questions?

### 12. LESSON SUMMARY [10 min]

