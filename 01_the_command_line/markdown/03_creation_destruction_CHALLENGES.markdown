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