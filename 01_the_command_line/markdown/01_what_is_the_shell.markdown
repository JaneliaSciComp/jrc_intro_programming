## What is the shell?
1. **CLI** vs **GUI**
  - command line interface
  - graphical user interface
2. the command shell is just a program providing a **REPL** interface with the computer operating system
3. REPL: read-evaluate-print loop
  - similar to MATLAB console, or interactive perl/python environments
  - _read_ the input from the command line (the stuff you typed in)
  - _evaluate_ the input, reading files and calling other programs as necessary
  - _print_ the output back to the screen
  - _loop_ back to the input prompt, ready for new input
4. shells:
  - common: `bash` (Bourne Again SHell), `zsh`, `dash`
  - less common now: `tcsh`, `csh`, `ksh`
5. the prompt: customizable and often different on different systems, but usually represented as a `$`
6. some considerations, before we move on:
  - case-sensitive
  - avoid whitespace in file names
  - other bad characters in file/folder names: all punctuation except . - _
  - `.` is a dot
  - `/` is a forward-slash, `\` is a back-slash
  - `#` is a pound, hash, or octothorpe
  - `$` is a dollar sign
  - `*` is a star, or an asterisk
  - `^` is a caret
  - `()` are parentheses or parens
  - `[]` are square brackets
  - `{}` are braces or curly brackets
  - `_` is an underscore
  - `-` is a hyphen, dash, or minus sign
  - `~` is a tilde
  - ` is a back tick
  - `'` is a single quote
  - `"` is a double quote
  - sometimes I will represent generic placeholders by placing them between a less-than sign and a greater-than sign, `<like so>`.  The angle brackets aren't needed in the actual commands.
  - be careful with pasting from Word, Pages, some email clients, and some web browsers since the straight single and double quotes can be auto-corrected to curly single and double quotes


### Checkpoint:
Open your command line.  In Windows, you will be using Git Bash, which I asked you to install before class.  In OS X, you will be using the built-in program Terminal, or the downloaded program iTerm2.  What does the prompt look like?

At the prompt, type `echo $0` and press enter.  `echo` is a program that prints information to the screen, and `$0` is a variable representing the shell with which you are interacting, so the command should tell us which shell you are running.  For OS X, you should see something like `/bin/bash`, and for Windows with Git Bash you should see something ending with `/sh.exe`.

Let's download some files so that we can all navigate the same environment:
  - Type `git <>` and press enter.
  - If any of the messages say error, ask for help.