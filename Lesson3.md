# LESSON 3: Collaborative Software Development

**Instructor:** *Manuel G. Garcia*

**Last update:** *06-10-2023*

**Presentation:** *[Branching and remote operations | remote operations](https://docs.google.com/presentation/d/1p7-n04rVGNNlloMvJDAXApYkwWO1ItMIgCMLG9ScTqQ/edit#slide=id.g2512947bc00_6_14)*

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

## PART 1: RECAP Operations with Remotes

> Participants provide GitHub user names to be invited to collaborative repositories [Google form](https://forms.gle/asj6dAhTh6vcyUhV9), the day before.

### 1. MOST COMMON OPERATIONS WITH REMOTES [5 min]

> Recap figure on how local repostories and remotes are connected and how to work with remotes (Slides).

> Recap what `clone, fetch, pull` and `push` commands do.

### 2. COLLABORATIVE PLATFORMS

#### a. Connect to GitHub via SSH [ 10 min]

> Ask participants to test the connection with:

    ```shell
    $ ssh -T git@github.com
    ```
> GitHub requires authentification via SSH to do pulls an pushes, but not for cloning. **Use illustrations** to explain what a SSH connection entitles.

To connect via SSH do the following [skip if connections have been successfuly set]:

* Create a Key-pair inside the `.ssh`  in the Home directory

    ```shell
    # move to Home directory
    $ cd ~
    # create key
    $ ssh-keygen -t ed25519 -C "your_email@example.com"
    # save to the default location and file name: ~/.ssh/id_ed25519
    ```
* Check the keys have been created

    ```shell
    $ ls ~/.ssh/
    ```

* Start the `ssh-agent` and add private key to agent:

    ```shell
    # start agent
    $ eval "$(ssh-agent -s)"
    
    # add private key
    $ ssh-add ~/.ssh/id_ed25519
    ```
    > Instruct SSH to use key files in different locations: `ssh -i <path/private/keyfile>`

> Info on how to (start the ssh-agent automatically)[https://docs.github.com/en/authentication/connecting-to-github-with-ssh/working-with-ssh-key-passphrases#auto-launching-ssh-agent-on-git-for-windows]
Mac and Linux user don't have to worry about this.

* Copy public key to GitHub:

    ```shell
    $ clip < .ssh/id_ed25519.pub
    ```

* Go to GitHub, explain the basics of the interface and add the SSH key.

Profile > Settings > SSH and GPG keys > New SSH key > Add SSH key

* Test SSH connection

    ```shell
    $ ssh -T git@github.com
    ```

> More information on working with (SSH keys and GitHub.)[https://docs.github.com/en/authentication/connecting-to-github-with-ssh]

> Check the info on (Troubleshooting SSH[https://docs.github.com/en/authentication/troubleshooting-ssh]) for GitHub.

#### b. Exploring the GitHub GUI [ 5 min]

Collaborative platform host and manage remote repositories to enable collaborative development.

> Ask participants if they are familiar with GitHub. If not, give a short explanation of what it is for how to explore the GUI.

### c. Inviting Collaborators [ 5 min ]

> Participants are invited as collaborators to the check-in repository. Participants have permission to merge pull requets.

a. Demo on how to invite collaborators using the check-in repository.

b. Paticipant accept inviation.

c. Mention GitLab at TU Delft as an alternative for a collaborative platform: https://gitlab.tudelft.nl/


### 3. COLLABORATIVE DEVELOPMENT FOR RESEARCH SOFTWARE 

Development high quality software requires more than programming and technical skills. Exceptional programmers can produce high quality for themselves and others. But good programmers will need to collaborate in order to develop complex, high quality research software. 

#### a. Collaborative Development

> An Quick introduction to collaborative development. Definitions  (Slides)

#### b. When to Aim for a Collaborative Approach? 

> Explain the difference between private and close collaboration


### 2. MANAGEMENT STRATEGIES [10 min]

> Explain why management is important for developing software, the key factors to consider and remcommend a management strategy based on experience.

### 3. ROLES AND RESPONSIBILITIES

> Describe the responsibilities for each role and why they are important for a research-software development project.


### 4. EXERCISE [6 min]

Breakout session 1: [Make Teams](#)

-----------------
## BREAK 
-----------------
## PART 2

### 4. EXERCISE [20 mins]

Breakout session 1: [Working with remote repositories](https://docs.google.com/presentation/d/1p7-n04rVGNNlloMvJDAXApYkwWO1ItMIgCMLG9ScTqQ/edit#slide=id.g2513f0e7587_19_19)

> More on remotes: https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes 

> Questions?

### 12. LESSON SUMMARY [10 min]

