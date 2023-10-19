# LESSON 3: Collaborative Software Development

**Instructor:** *Manuel G. Garcia*

**Last update:** *17-10-2023*

**Presentation:** *[Collaborative Software Development](https://docs.google.com/presentation/d/1yBy_4r9aHhsUH9AH1s7zLWIQ_h20xNKVYM1somPnz1Q/edit?usp=sharing)*

<!-- **Exercises:** *[Exercises remote operations]()* -->

Lecture notes for the lesson on collaborative software development.

## PREPARATIONS FOR THE INSTRUCTOR
The instructor sets up the command history on two terminals do the following:

1. On main terminal:

    export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

2. On second (history) terminal:

    tail -f ~/.bash_history | nl -w 3


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


* Ask participants using Windows not to start Git Bash clicking on the desktop icon, as they did in Lesson 1. Instead,
    * use the app menu (the Windows logo)
    * pick up Git Bash from the list
    * launch Git Bash with the option **Run as administrator** available from the drop-down submenu.
    The participants need to type in their credentials as local administrators.
This gain authority to have SSH installing its own features in their laptop next.

    Take note: at their first `git push`, Git might complain about a mismatch between the credentials of local and global administrator.
The warning itself suggests another Git command as the remedy to this impasse.


* Ask participants to test the connection with:

        ssh -T git@github.com

    The message for a successful outcome is friendly and plain.
    Ask participants whether git@github.com has welcomed them.

* GitHub requires authentication via SSH to do pulls and pushes, but not for cloning. **Use illustrations** to explain what a SSH connection entitles.

    To connect via SSH do the following [skip if connections have been successfuly set]:

    1. Create a Key-pair inside the `.ssh`  in the Home directory

            # move to Home directory
            cd ~
            # create key
            ssh-keygen -t ed25519 -C "your_email@example.com"
            # save to the default location and file name: ~/.ssh/id_ed25519

    2. Check the keys have been created

            ls ~/.ssh/

    3. Start the `ssh-agent` and add private key to agent:

            # start agent
            eval "$(ssh-agent -s)"

            # add private key
            ssh-add ~/.ssh/id_ed25519

    4. Instruct SSH to use key files in different locations:

            ssh -i <path/private/keyfile>

    5. Info on how to [start the ssh-agent automatically](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/working-with-ssh-key-passphrases#auto-launching-ssh-agent-on-git-for-windows)
    Mac and Linux user don't have to worry about this.

* Copy public key to GitHub:

        clip < .ssh/id_ed25519.pub

* Go to GitHub, explain the basics of the interface and add the SSH key.

        Profile > Settings > SSH and GPG keys > New SSH key > Add SSH key

* Test SSH connection

        ssh -T git@github.com

> More information on working with [SSH keys and GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

> Check the info on [Troubleshooting SSH for GitHub](https://docs.github.com/en/authentication/troubleshooting-ssh]).


### 2. Publish local remository to GitHub [5 min]

**a. Create GitHub Repo**

> Go to Github and create an empty and public repository called `patients-analysis`.

- Repo description: *analysis of treatments for inflammation*

**Add Remote to Local Repo**

> before this remove any existing remotes in the repository with: `git remote remove <name>`

Move back to the repo directory: `~/Desktop/
> In your local repository (on the terminal), add the remote repository and push the content.

* Connect to remote
    ```shell
    $ git remote add origin git@github.com:<user-name>/<repo-name>.git
    ```

* Check that remote was added
    ```shell
    $ git remote -v
    $ git branch -M main # [Optional if config was changed. This will change the name of the main branch of the repo to make it more friendly]
    $ git push -u origin main
    ```

#### c. Check the Content's Repositoy is in GitHub
* Go back to your repo page and refresh the browser.


> **Questions?**


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

> Slides

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

### 4. EXERCISE 2: Roles and Responsibilities [6 min]

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

#### 0. Issues

Document and track ideas and tasks in a development project. They’re facilitate planning, discussing  and tracking the progress of a software project.

> Do-along on how to crate issues in a repository. Use the recently pushed repository.

Collaborative workflows are estrategies to organise the work of a developer team so that many developers can contribute to a software project. Two common estrategies that use version control and collaborative platforms as leverage are:

- The **branching workflow** and
- The **forking workflow**

>  A short explanation on branching workflow (slides)

#### 1. EXERCISE 3: Branching workflow [15 min]

Teams work on coding taks using the branch worflow model.

1. [Administrator] Creates a repository using [this template](https://github.com/the-magnificents/collab-branching)
2. [Administrator] Invites all team members to the team's repository as collaborators.
3. [Team] Read the `TODO.md` file and each member choses a tasks for the next step.
4. [Collaborator] each member opens an issue  for the chosen  task.
5. [Collaborator] Apply the branching model to complete the chosen task.
6. [Collaborator] Commit and push changes to the team's repository.

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

working in teams, apply FAIR principle to a Git repository using a [FAIR software checklist.](https://tu-delft-dcc.github.io/software/checklist.html)

1. [Administrator] creates a repository for the team using the [collab-faircode template repository](https://github.com/the-magnificents/collab-faircode). As name for the reposotory use <team-name>-faircode
3. [Team] Go thru the Fair software checklist and assign one item from the list to each member.
3. [Collaborator] open an issue about the item you chose.
2. [Collaborator] fork the team's repository to their accounts.
4. [Collaborator] Clone their fork to their local machine, make changes to address ther issue and push changes to their forks.
5. [Collaborator] Make a pull request from your fork to the base repository.

> Questions?

### 12. LESSON SUMMARY [5 min]

- SHH is a secure way to connect to Code repositories.
- Collaborative workflows provide a way to organize a team around a software project.
- Workflows: branching (centralized) and forking (shared)
- High quality software requires good planning and management.
- Adopting roles and responsibilities can help teams to organize their work.
