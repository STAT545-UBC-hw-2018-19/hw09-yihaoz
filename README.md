# This is Yihao's repository for [STAT 545M]("http://stat545.com/Classroom/") [Homework 9]("http://stat545.com/Classroom/assignments/hw09/hw09.html")

The make file creates data, R and tsv_output folders.

For word length part done by Jenny, [histogram.R](./R/histogram.R) is moved under [./R](./R) and [words.txt](./data/words.txt) is moved under [./data](./data) for a cleaner repository. 

The output html can be viewed [here](https://rawcdn.githack.com/STAT545-UBC-students/hw09-yihaoz/24a93dccde3e0f610d0c0d5c0f74f04e946321bb/report.html)


For implemented letter frequency part, the pipeline is:
![](/out.png)

Included files:

[letter.R](./R/letter.R) 

[word.txt](./data/words.txt) 

[letter_frequency.tsv](./tsv_output/letter_frequency.tsv) 

[report.Rmd](./report.rmd)

Also the md output is kept [here](report.md)



## make-activity
=============

The commit history of this repository reflects what a student might do as she works through [this activity](http://stat545-ubc.github.io/automation04_make-activity.html) from [STAT 545](http://stat545-ubc.github.io). This fully developed example shows:

  * How to run an R script non-interactively
  * How to use `make`
    - to record which files are inputs vs. intermediates vs. outputs
    - to capture how scripts and commands convert inputs to outputs
    - to re-run parts of an analysis that are out-of-date
  * The intersection of R and `make`, i.e. how to
    - run snippets of R code
    - run an entire R script
    - render an R Markdown document (or R script)
  * The interface between RStudio and `make`
  * How to use `make` from the shell
  * How Git facilitates the process of building a pipeline
