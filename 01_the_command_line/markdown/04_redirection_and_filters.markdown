## Redirection and Filters

1. We know how to navigate folder structures, see which files are in a folder, and make simple text files.  So far, the command line doesn't seem any more powerful than `File Explorer` or `Finder`.  What's the big deal about the command line, then, and why are we wasting a day on it instead of learning about Python?
  - There are a lot of small command line tools, and a system for redirecting input/output using these small tools (or your own scripts) to build more complicated pipelines or workflows.
2. **Wildcards:** You're probably already famiilar with using the asterisk (`*`) as a wildcard to represent any number of any characters.  There are some other wildcards or wildcard expressions that you can use to match multiple files.
  - `ls` examples:
      + `*` - any number of characters
      + `?` - any single character
      + `[AC]` - specific characters (in this case, `A` or `C`)
      + `[!AC]` - exclude specific characters (in this case, `A` or `C`)
      + `[A-C]` - range of specific characters (in this case, `A`, `B`, or `C`)
      + `{abc,def}` - terms (in this case, `abc` or `def`) (no spaces)
  - Try out a few examples in the `data` directory.
3. So, what if you wanted to make a list of all of the data files in your folder?  How can we send the _output_ of `ls` somewhere other than the screen?
  - We can redirect the output of your `ls` command using the `>` syntax.
  - Try a couple examples.
  - Find all of the files from the experiments in the 30s and store them as `thirties.txt`.
  - Find all of the files from even-numbered experiments and store the names as `even.txt`.
  - Before we move on, `ls -lah experiment*.txt > data_files.txt`
  - How can we tell whether it worked?
4. **Warning:** The `>` operator completely overwrites the file if it already exists.  If you want to append to the file instead, use `>>`.
5. There are a couple commands we can use to peek inside and get a feel for what is inside a file.
  - `head` and `tail`
      + How many results does head show by default?  Where do you think you could find this out if you didn't want to check empirically?  How could you get more or fewer lines?
  - pagers, like `less` or `more` (or `most`)
      + What interface is this similar to?  How do you navigate?  How do you exit?
6. **Detour:** INPUT/OUTPUT.  CLI programs take input from the command line, typically called _standard input_, or `stdin`, and send output back to the screen, typically called _standard output_, or `stdout`.  There's a third I/O stream called _standard error_ (`stderr`) that conveys error messages.
  - So, what actually happens when you use the `>` operator is that `stdout` is redirected into a file.  The implied command is `1> output`
  - You can redirect `stderr` to a file using `2> output`.
  - You can direct something as `stdin` using the `<` operator.  This is usually unnecessary, but it's good to know that this syntax exists.
7. So, what if instead of redirecting output to a file, we wanted to redirect the output (`stdout`) from one command to use as the input (`stdin`) for another command?
  - We can _pipe_ `stdout` to `stdin` using the `|` operator.
8. In the `data` folder for this class session, there are 100 simulated experiment files.  They each have a data series of varying length.  We want to get the names of the 15 longest experiments.  This isn't as easy as sorting by file size in this case, because of the way the numbers are stored.
  - Peek inside a few files.  experiment 91, 8, 77.  What would be an easy way for us to tell how many data points there are in each file?
  - `wc`
      + How can we clean up the output to only show the kind of information we're interested in?
      + `wc -l experiment_*.txt`
  - Now we have a list of the experiments and their length.  Now what do we need to do?
      + First off, now's a good time to start using the <UP> arrow to cycle through history.
      + `sort`
      + How can we reverse the order such that the largest files are at the top?
      + `sort -r`
  - Now we have a sorted list, but we just want the names of the 15 biggest files.  What command that we learned earlier today will do that?
      + `head -16`:  Ok, so this kind of works, but it also returns the summary for the folder.  Not a huge deal, but Can we combine it with anything else to remove the summary line?
      + `head -16 | tail -15`
  - And, finally, we want to store this information in a text file, `longest_datasets.txt`.
      + `> longest_datasets.txt`
  - `wc -l experiment_*.txt | sort -r | head -16 | tail -15 > longest_datasets.txt`
9. There's a related syntax to embed the output from one program in the call for another program.  It's good to know that it exists, but you don't need it right away.
  - `$()`