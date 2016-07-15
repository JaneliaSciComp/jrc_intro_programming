# Git and Github

Sign up for github

Open github desktop

Set up github desktop


Click on + -> Add
	-choose name and path (root directory)

Now let's make some files
	cd [path+directory]
	touch hello.py

Look at the status
	Notice that clicking on a file shows you something

Commit changes
	Type a detailed commit message in summary
	(Can add a longer description if you want)
	Click Commit to master button

Let's check the history now
	Click on History at the top

We'll make some more changes
	Delete a line
	commit
	check log
	Change a line
	commit 
	check log

Undo a commit
	click undo
	make a better commit message and commit again

Add a file
	add a new text file
	update our program to read file and print out data
	separate this into two commits

Ignoring files
	have our program write a file
	run our program
	right click new file and click ignore
	notice we have a new file to add. .gitignore is a special file that tells you what types of files to ignore. When you start a new project it is nice to search for something like 'python git ignore' and copy that into your own file
	commit changes
	look at .gitignore file it created

Resetting
	Add some bash commands to the file and commit
	In History, click on the offending commit
	Click on the settings icon and select revert commit.
	All good!

Creating a remote
	Click Publish
	Write a description for your repo and then click Publish repository.
	Go to Github and check out your new repo.

Readme
	Oh, looks like we need a readme. Write something that helps users understand how to use your repository. Github uses markdown to display formatting: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
	Create readme.txt
	Commit to repo

Pushing Changes
	Click the sync button to push your changes to your repo

Pulling from remote
	Make a change on github by clicking the edit button.
	Now click the sync button to bring those changes back to your repo

Branching
	Click the +branch button
	Create a new branch called destruction
	You've created a copy of all your code.
	But changes here won't affect the code in master (unless we let it)
	To switch between branches use the dropdown
	add a file and commit it.
	Switch to master
	Click on compare and select destruction
	Click update from destruction


Merging
	Switch to master
	Click on compare and select destruction
	Click update from destruction


Merging gone wrong
	in branch master
	make a file called quantum.txt and put one line 'True' in it
	commit this file
	in branch destruction
	make a file called quantum.txt and put one line 'False' in it
	commit this file
	switch back to master and
	merge destruction into master

Uh-oh!
	Choose open with external editor
	Delete all lines besides the ones you want to keep.
	Save the file
	Commit the changes in branch master (all better)


Cloning
	Your clone will be prepopulated with your own repos and those from orginazations you belong to
	To get one from somewhere else on github:
	Find an interesting repo at github.com 
	Click on Clone or Download
	Select Open in Desktop

Forking
	If you want to be able to push changes to github for someone else's repo you will need to fork it
	On github click the fork link 
	Now you can clone it from your location onto your desktop.

Adding an existing folder
	Click the +-> Add and select the repo you want to add
	Make your first commit and that's it!
