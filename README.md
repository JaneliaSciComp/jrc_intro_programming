# Table of Contents
- [Setup](#setup)  
  - [OSX](#osx)  
  - [Windows](#windows)  
  - [Linux](#linux)  
- [Syllabus](#syllabus)  
  - [Classes 1 and 2](#classes-1-and-2-march-5th-and-6th)  
  - [Classes 3 and 4](#classes-3-and-4-march-12th-and-13th)  
- [Etherpad](#etherpad)  
- [Links](#links)  
- [Thanks](#thanks)  

***  
# Setup
To participate, you'll need to install the software below.  Please install _all_ of the required software, or at least download the installers, before class begins.  If you need any help, just send me an email or find me in person.

## OSX
### Python
- Download and install [Anaconda](http://continuum.io/downloads).
- Use all of the defaults for installation _except_ make sure to check **Make Anaconda the default Python**.

### Bash
The default shell in all versions of Mac OS X is bash, so no need to install anything. You access bash from the Terminal (found in `/Applications/Utilities`). You may want to keep Terminal in your dock for this workshop.

### Version Control
Install Git for Mac by downloading and running the appropriate installer from the links below.  If you have a recent version of Git from another source ([homebrew](http://brew.sh/)), for instance), that should be fine.

|OS X Version|Git Installation Link|
|:----------:|:-------------------:|
|10.10|[here](http://sourceforge.net/projects/git-osx-installer/files/git-2.2.1-intel-universal-mavericks.dmg/download?use_mirror=autoselect)|
|10.9|[here](http://sourceforge.net/projects/git-osx-installer/files/git-2.2.1-intel-universal-mavericks.dmg/download)|
|10.8|[here](http://sourceforge.net/projects/git-osx-installer/files/git-2.2.1-intel-universal-snow-leopard.dmg/download)|
|10.7|[here](http://sourceforge.net/projects/git-osx-installer/files/git-2.2.1-intel-universal-snow-leopard.dmg/download)|
|10.6|[here](http://sourceforge.net/projects/git-osx-installer/files/git-2.2.1-intel-universal-snow-leopard.dmg/download)|
|10.5|You should really think about upgrading.|

### Editor
During the workshop, we'll be using `nano`, which is pre-installed on your system.  You may wish to try [Text Wrangler](http://www.barebones.com/products/textwrangler/) or [Sublime Text](http://www.sublimetext.com/).

## Windows
### Python
- Download and install [Anaconda](http://continuum.io/downloads).
- Use all of the defaults for installation _except_ make sure to check **Make Anaconda the default Python**.

### Version Control & Bash
Install Git for Windows by downloading and running [this installer](https://github.com/msysgit/msysgit/releases/download/Git-1.9.5-preview20141217/Git-1.9.5-preview20141217.exe).  This will also install a version of Bash that we can use for this course.  It will lack some of the features found on OS X and Linux implementations of Bash, but you will be able to complete most of the tasks in class.

### Software Carpentry Installer
_Note: This installer requires an active internet connection._
After installing Python and Git Bash:
- Download the [installer](http://files.software-carpentry.org/SWCarpentryInstaller.exe).
- Double-click on the file to run it.  Follow the instructions.

### Editor
During the workshop, we'll be using `nano`, which will be installed by the Software Carpentry Installer above.  You may wish to try [Notepad++](http://notepad-plus-plus.org/), but in order to call it from the command line, you will need to add it to your path.  Ask me for help if this is something you want to try.

## Linux
### Python
For the sake of consistency, I recommend the all-in-one scientific Python installer [Anaconda](http://continuum.io/downloads). (Installation requires using the shell and if you aren't comfortable doing the installation yourself, outlined below, just download the installer and I'll help you.)
Download the installer that matches your operating system and save it in your home folder.
1. Open a terminal window.
2. Type `bash Anaconda-` and then press tab. The name of the file you just downloaded should appear.
3. Press enter. You will follow the text-only prompts. When there is a colon at the bottom of the screen press the down arrow to move down through the text. Type `yes` and press enter to approve the license. Press enter to approve the default location for the files. Type `yes` and press enter to prepend Anaconda to your PATH (this makes the Anaconda distribution the default Python).

### Bash
The default shell is usually `bash`, but if your machine is set up differently you can run it by opening a terminal and typing `bash`. There is no need to install anything.

### Git
If Git is not already available on your machine you can try to install it via your distribution's package manager (e.g. `apt-get` or `yum`).

### Editor
During the workshop, we'll be using `nano`, which will be installed by the Software Carpentry Installer above.  There are many GUI editor options for Linux, depending on your distribution.  Ask me for suggestions.


# Syllabus
## Classes 1 and 2 (March 5th and 6th)
Session 1 introduces the command line interface, including navigating directory structures, manipulating files, editing text files, using filter commands, stringing together filters using pipes and redirection, and possibly making simple bash scripts.
Session 2 is an introduction to basic programming concepts in python, including data types/structures, conditional expressions, loops, and functions.  
## Classes 3 and 4 (March 12th and 13th) 
Sessions 3 and 4 are a little more flexible.  We will write a few complete programs in python, learn how to use the version control program `git` to manage work in progress, and try out a few commonly used python libraries for data analysis.  If there's a specific topic you'd like to cover, let me know in an email or in person.

# Etherpad
Please share notes and questions in [this online notepad](https://etherpad.mozilla.org/peNU8PIi2o) during class.  The helpers and I will keep an eye on it and try to answer important questions as they arise.

# Links
   
# Thanks
Thanks to [Software Carpentry](http://software-carpentry.org/) for inspiring the curriculum and providing the Software Carpentry Installer.
