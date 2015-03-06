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