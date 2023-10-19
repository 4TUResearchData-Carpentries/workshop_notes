# LESSON 4: Collaborative Software Development - Part 2

**Instructor:** *Manuel G. Garcia*

**Last update:** *19-10-2023*

**Presentation:** *[Collaborative Software Development - Part 2](https://docs.google.com/presentation/d/1TvWIrBsVNwmEyvZodd4V7gueATeECKMubUqSSYKMyuU/edit?usp=sharing)*

Lecture notes for the lesson on collaborative software development.

### Recap on Workflows

#### Exercise 1: [15 mins]

Working in teams, define and implement a workflow to collaborate in a repository.

1. [Administrator] create a repository for the team using the template: https://github.com/the-magnificents/collab-review
2. [Team] dicuss and agree on which workflow to implement for this exercise.
3. [Team] each member choses one task from the `faircode-checklist.md` and make changes.
4. [Team] each member opens a pull request to the `main` branch with the their changes. Important: do not merge
5. [Team] each member makes some other changes to the repository, commits and push. Do not merge.
6. [Team] go back to your pull request and see how the latest changes affected your pull request. Do not merge.


### A. Code Reviews

> An introduction to code reviews (slides)

**Type along:**

Assign reviewers via the GitHub interface.

**Type along**
How to check out a pull request locally for the purpose of reviwing it (testing).

- Use the following comand in the CLI to create a new branch with the content of the pull request:

```shell
git fetch origin pull/<#>/head:<local_branch_name>
git switch <local_branch_name>
```

> More in [GitHub documentation](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/checking-out-pull-requests-locally)

### Exercise 2: Code Review [10 min]

Practice reviewing code in pull requests on GitHub. 
1. [Author]Assign one or two team members as reviewers in your pull request (PR).
2. [Reviewer] Reviews, discuss, and suggest changes to the pull request(s) following recommendation mentioned so far.
3. [Author] Make changes to PR based on the reviewer's suggestions, and updates the PR.
4. [Reviewer] Approves the PR.
5. [Author] Merges the PR into the repository.

### B. Contributing Guidelines and Licensing

- Show where to find templates for guidelines. Templare fair-code. 
- Show the tool to generate CITATION files: https://citation-file-format.github.io/cff-initializer-javascript/#/ 


### Exercise 3: Contributing guidelines [10 min]

Add contributing guidelines to your very first repository (workshop-git?), using the template available in: https://github.com/manuGil/fair-code 


### Exercise 4: Licensing and Citation [10 min] 

Add a license and citation file to your first repository (workshop-git?)

1. Add an open-source license to the repository.  Use the Creative Common license tool to decide which license to use: https://chooser-beta.creativecommons.org 
2. Check the GitHub documentation to know how to add a license file. Use this tool to generate a CITATION  file and add it to your repository: https://citation-file-format.github.io/cff-initializer-javascript/#/ 


### C. Software releases

> Explain how is a realease, and the meaning of semantic versioning.

 **Do along**

 - Using the first repository show how to make a release in Github, use semantic versioning for the name of the release.

> if time allows it shows reference materials, and DCC guides

### D. Summary

- Code reviews a essential to produce high quality software
- Be mindful when giving feedback to someone else code.
- Collaborative guidelines let potential collaborators to know how they can contribute to a software.
- It is important to think about citing an licensing your software.
- Use semantic versioning when releasing software.
