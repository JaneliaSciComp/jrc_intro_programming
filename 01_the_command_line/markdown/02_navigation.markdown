## Files, directories, and navigation
1. For our first real bash command, let's get existential.  Type `whoami` at the prompt and press enter.  (I'm going to stop telling you to press enter now.)  What is happening here in terms that we covered earlier today?  How does `bash` know what `whoami` means?
2. four basic types of CLI commands:
  - built-ins: part of the shell
  - aliases: user- or system-defined macros
  - scripts: executable text files written in scripting languages like perl, python, shell, etc
  - binaries: compiled executable files
3. `$ which whoami`
  - In this case, `which` is the command and `whoami` is the **argument**.  (You  may also hear it called the parameter.  _Argument_ and _parameter_ have very slightly different meanings in the world of programming, but it's mostly a semantic difference.)
  - `which` returns the _absolute path_ to the program name passed as argument
  - **path** is exactly what it sounds like.
      + a hierarchical structure
      + absolute paths start at the _root_ directory, represented as a a forward-slash
      + relative paths are relative to your current working directory
      + folders followed by forward-slashes (`/`)
      + case-sensitive
4. How can we find out _where we are_?
  - Whichever directory we are currently in is our current working directory.
  - `pwd`, print working directory
  - If `whoami` tells me who the user is, and `which` tells me where a program is located, why is it `pwd` instead of `whereami`.  Legacy.  Colorful, painful legacy.
5. What is in our current working directory?
  - `$ ls`
6. What kinds of things are they?  Files, directories, links, executable files?
  - `$ ls -F`
  - `-F` is a flag (also called a switch) that lets us specify an option or setting
7. **Important Detour:** to find out which flags are available, you can use a few options:  
    1. the `--help` flag on many commands prints basic usage information
    2. the command `man`, passing the program name as the argument.  For instance, `man ls`.  This opens the _manual_ page for this program, with detailed usage information.
    3. `man` is not available in Git Bash, but you can also type "man <command>" into Google and view the man pages there.
8. Detour: `man` pages open in something called a _pager_.  Pagers are used to display output that won't fit in one screen.  <UP>, <DOWN>, and <SPACE> will move around within the document.  You can search by typing a forward slash followed by the search term and step through the search results using `n`.  **You can exit a pager by hitting `q`.**
9. Detour: File extensions are short suffixes to filenames that can give us a hint about what is inside of the file.  For instance, `.txt` files contain text, `.jpg` files are JPEG images, and `.py` files are python scripts.
10. Can we get directory listings for other directories?
  - Pass the absolute or relative path to the directory as an argument to `ls`.
  - `$ ls /`
  - `$ ls jrc_intro_programming`
11. How do we change directories?
  - `$ cd jrc_intro_programming`
  - to change to the last working directory, `cd -`
  - to go "up" one directory, `cd ..`
  - to go "up" two directories with one command, `cd ../..`
12. Detour: What does `..` mean?
  - `ls -a` gives you a list of "all" files, including invisible files.
  - Any file beginning with a `.` is invisible.
  - Every directory has two _special_ "folders", `.` and `..`. `.` points at the directory itself, and `..` points at the parent directory.
13. Detour: tab completion
  - Typing things is hard.
  - If you press the Tab key while typing, `bash` will attempt to automatically complete your thought, as if reading your mind.  Ok, really it just matches up to the first point of ambiguity.  For example, if your directory is empty except for data files named:
    + `data1.txt`
    + `data2.txt`
    + `data3.txt`
    + `data4.txt`
  then if you type `d` (without pressing enter) and press the Tab key, it would be automatically extended to `data`, waiting for you to disambiguate before moving on.
  - Use tab-completion to your advantage.  It reduces errors due to typos and allows you to move much more quickly.
  - While we're on the subject of saving time, you can use the <UP> and <DOWN> arrows to cycle through previous commands in your history, and if you want a complete history, try the `history` command.


### Challenges:
This is your directory tree for the first two exercises:

![Directory Tree](filesystem-challenge.svg)

If `pwd` displays `/users/thing`, what will `ls ../backup` display?

1. `../backup: No such file or directory`
2. `2012-12-01 2013-01-08 2013-01-27`
3. `2012-12-01/ 2013-01-08/ 2013-01-27/`
4. `original pnas_final pnas_sub`

If `pwd` displays `/users/backup`, and `-r` tells `ls` to display things in reverse order, which command(s) will display: `pnas-sub/ pnas-final/ original/`

1. `ls pwd`
2. `ls -r -F`
3. `ls -r -F /users/backup`
4. Either #2 or #3 above, but not #1.

---
What does the command `cd` without a directory name do?

1. It has no effect.
2. It changes the working directory to `/`.
3. It changes the working directory to the user's home directory.
4. It produces an error message.

---
What does the command `ls` do when used with the `-s` and `-h` arguments?