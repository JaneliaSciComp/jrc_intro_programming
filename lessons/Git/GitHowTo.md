# Git and Github

## Preperation
Sign up for a github account. Download Github Desktop, install it, and set it up with the account you just signed up for at github.

## Adding a project
Let us add a project to version control. This tells git that we will want to track some of the files under this local directory.

Click on + -> Add
	- choose name and path (root directory)
	- Name: Pirate, Path ~/Documents (you can let it be anything, but please remember the path)

## Creating files to track
Version control only works if you have files to track, so let's make some files 

	cd <path>/Pirate
	nano pirate.py
	
	# In pirate.py
	import random
	print "arr, matey"

## Status
The status tells you what changes you've made that are not in git yet

Look at the status
	Notice that clicking on a file shows you something

## Your first Commit
When you commit, you are telling git to keep track of all of the changes you have made. You create a checkpoint that you can go back to at anytype, and view differences from.

Commit changes
	Type a detailed commit message in summary "Inital load of pirate treasue."
	(You can add a longer description if you want)
	Click Commit to master button
	
## History	
This history let you see a history of all the commits you have made over time.

Let's check the history now
	Click on History at the top

## The git process
What will typically happen is that you make a few small changes, and then commit as you go. Make sure you put a detailed commit message for each commit so that you know what you did when (and why). This makes it easy to figure out where a bug came from or what your process was.

We'll make some more changes
	# Delete a line
	We are not using the random module, delete it
	Commit "Removed unessary random module"
	Check log
	
	#Change a line
	Capitilize 'Arr, matey'
	Commit "Correct capitalization"
	Check log
	
	# Add some lines
	
	for i in range(100):
		print "Walk " + str(i) + " paces left"
		
	Commit "Walk paces 1-100"
	Check log

## Undoing a commit
Sometimes you make a commit and shortly afterwards realize something went wrong, you spelled something wrong, the code doesn't do exactly what you wanted, etc. We can undo our most recent commit

Undo a commit
	Click undo
	Make a better commit message and commit again "Walk paces 0-99"

## Adding a file
We can track more than one file at a time (otherwise version control would be pretty useless)

Add a file
	Add a new text file 'treasure.txt'
		Rubies
		Diamonds
		
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
