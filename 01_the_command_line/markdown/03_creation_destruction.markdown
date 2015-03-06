## Creation and Destruction
1. Let's all get back to the same point in the hierarchy before moving on.
  - `$ cd`
  - `$ cd jrc_intro_programming/01_the_command_line`
2. To make a new directory, use the `mkdir` command.
  - `mkdir manuscript`
  - `ls -F manuscript`
3. Now we have a new folder for our manuscript, but how can we edit it at the command line?
  - considerations:
      + ideally something that works at the command line (to fit into our workflows)
      + ideally something that most systems will have installed (for the sake of consistency across systems)
      + definitely something that edits and saves raw text without fooling around with formatting
  - CLI options:
      + `nano`: available on OS X and linux/*nix by default, installed on Windows by the SWC installer (or directly from [here](http://www.nano-editor.org/)).  Very shallow learning curve.  This is what we will use today.
      + `vi` or `emacs`: very powerful, but steeper learning curves than `nano`.  Not using today because we don't want to scare anyone off.
  - GUI options:
      + _Sublime Text_ or _Text Wrangler_ on OS X
      + _Notepad++_ or _Sublime Text_ on Windows
4. Change into the `manuscript` directory (not going to tell you how at this point) and run `nano draft.txt` to create a new text file.  Write anything inside.  The list of commands for `nano` are at the bottom of the window.  The `^` symbol represents holding the Control key, so to exit `nano`, hold Control and press-X (which I'll write as `^X` in the future.)
  - How can you tell whether the file was created?
5. How can we peek at the contents of the file?
  - `$ cat draft.txt`
  - `cat` is short for concatenate.  It concatenates the contents for all files passed as arguments and prints the output to the screen.  It's fine for viewing small text files.
6. That draft was awful, and we aren't smart enough to use a version control system yet, so we're just going to delete it and start over again.  To delete a file, use the `rm` command and pass the filename as an argument.
  - `$ rm draft.txt`
  - How can you tell if the file is gone?
  - How can you remove a file from another directory without changing into that directory?
  - **Important**: Deleting a file from the command line is permanent.  This is not like moving a file into the Recycle Bin in Windows or Trash in OS X.
7. Recreate `draft.txt` using `nano` and move up to the parent directory containing the `manuscript` folder.  If we want to delete the entire folder, how would you do it?
  - `$ rm manuscript`
      + `rm: manuscript: is a directory`
  - `$ rmdir manuscript`
      + `mdir: manuscript: Directory not empty`
  - These error messages are here to protect you.  Deleting a directory is a lot more dangerous than deleting an individual file.
  - `$ rm manuscript/draft.txt`
  - `$ rmdir manuscript`
8. **Here be dragons**: Sure would be tedious to delete every file in a folder before deleting the folder, right?  Well, there's a shortcut, but be very careful with it.
  - `rm -r <folder>`
9. Recreate the `manuscript` folder, along with a `thesis` folder.  Change directories into `manuscript` and create the `draft.txt` file with some filler contents yet again.  What if you decided that `draft.txt` would no longer go in your manuscript, but would go into your thesis instead?  You can move files using the `mv` command.
  - `mv <file name and relative path> <target location>`
10. `mv` is also used to rename files and folders.
  - `mv <old name> <new name>`
11. Create a new text file, `template.txt`, and type and save some filler text.  If this were a real template, you might want to make a copy to edit.  You can do this with the `cp` command.
  - `cp <file name and relative path> <target name or location>`
  - Check to make sure the original file is still there.  Check to make sure the copy has been created.
  - How could we tell that this is really a copy and not just a link or shortcut?  Test for that.
12. In addition to the `.` and `..` special directories that we talked about earlier, there's another alias, `~`, that points to your home directory.  This is the directory that is intially opened when you start a new terminal window.
  - Change to your home directory using this shortcut.
  - Determine the path to your home directory.  This will be different on different operating systems.

### Challenges:
What is the output of the closing `ls` command in the sequence shown below?

`$ pwd`
`/home/jamie/data`
`$ ls`
`proteins.dat`
`$ mkdir recombine`
`$ mv proteins.dat recombine`
`$ cp recombine/proteins.dat ../proteins-saved.dat`

`$ ls`
---
Suppose that:

`$ ls -F`
`analyzed/  fructose.dat    raw/   sucrose.dat`
What command(s) could you run so that the commands below will produce the output shown?

`$ ls`
`analyzed   raw`
`$ ls analyzed`
`fructose.dat    sucrose.dat`

---
What does `cp` do when given several filenames and a directory name, as in:

`$ mkdir backup`
`$ cp thesis/citations.txt thesis/quotations.txt backup`

---
What does `cp` do when given three or more filenames, as in:

`$ ls -F`
`intro.txt    methods.txt    survey.txt`
`$ cp intro.txt methods.txt survey.txt`

---
How can you move or copy a file into the parent of your current working directory?