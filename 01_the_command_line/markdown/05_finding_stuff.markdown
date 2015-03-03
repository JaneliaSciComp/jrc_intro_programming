## Finding Stuff

1. `ls` is great for getting a directory listing, and with wildcards you can narrow the listing down a bit.  If you want anything more complicated, you should use the `find` command.
  - `find . -name '*_0*.txt'`
  - `man find`
  - `find . -ctime 2d`
2. There are advantages and disadvantages of storing data in plain text format.  I won't cover all of them here.  But, one advantage of storing data in plain text is the ability to search the contents of files.  The most commonly used command for this is `grep`.  Sorry for another arcane name, a contraction of _global/regular expression/print_.
  - `grep` prints lines matching a pattern.
  - `man grep` to get the basic idea of how it works.
  - `grep 243 data/*`

## Making our first shell script

1. Introduce the Chipotle `.csv` file.
2. Take a look at the contents with `head` and `tail`.
3. How can we find all of the 'Steak Burrito' orders?
4. What if we only want to see 'Steak Burrito' orders with 'Tomatillo Salsa'?
5. Create a shell script by copying that line of code into a text file.
6. Introduce concept of $1.
7. Replace hard-coded values with tokens to make this a script.
8. Run it with `bash orders.sh`.  Add shebang, chmod +x and run it with `./orders.sh`.