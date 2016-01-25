How does tracking and adding changes make developers' lives easier?
It allows developers to see the various stages that a project may go through, it allows mutliple people to work on a project at once and 
have visibility to whats occuring.

What is a commit?
A commit is a saved version of changes that on has made on a project.

What are the best practices for commit messages?
It should be a short and accurate message of what changes have been made but still includes enough detail that anyone can understand what was done.

What does the HEAD^ argument mean?
HEAD^ refers to the commit that is currently being worked on, the ^ can be replaced with a different number to refer to a prior commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
The 3 phases are Tracking Changes, Making Changes and Pushing Changes.
Tracking Changes - Any time you make a change to a file the changes will be tracked.  These can be observed by using git status.

Making changes - You can use git add to add any changes that you want to make.  You will need to create a new branch for this. Use git commit to save the version of the code/project
you want to save and -m to include a message of what changes have been made, this message should be short and accurate. If you want to change some of the 
commits that you made you can use git reset and the HEAD^ argument to adjust your commits.

Pushing Changes - This is the process of moving the changes you have made to the master on Github.  First make sure you do not have different versions 
locally and remotely, use "git checkout master" and "git pull origin" to verify this.Then you need to merge the changes using "git checkout "branchname""
and "git merge master".  Then the changes need to be pushed back to the remote depository on Github, using "git push origin "branchname"".  Once this has
been completed, you will need to go to github to pull the request (if necessary).

What is a pull request and how do you create and merge one?
A pull request is submitting changes you have made to code to the rest of the team that has to be approved (by you or someone else) to the master in the repo.
To create and merge a pull request, once the changes have been pushed there will be and option to compare and pull the changes that have been made
Select "Compare & Pull Request", verify that the locations are correct, add title and a brief description, and select "Create pull request"
You can then merge the request by selecting "Merge Pull Request" and then confirming the merge.

Why are pull requests preferred when working with teams?"
Pull requests are perferred when working in teams as it allows different memebers to review changes and submit feedback before any 
final changes are made to the code.  This keeps everyone in the loop and can prevent errors or overlap from occuring.