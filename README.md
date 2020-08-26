# Welcome to my Data Cleaning course project!
This is the readme. Below are answers to questions you were going to ask about this.

## How many scripts are there?
There is only one script made for simplicity's sake, titled run_analysis.R. 

## How do I get the data created by this script?
Just run the run_analysis.R script, then use the following line of code to read the data into R:
```
data <- read.table("tidyset.txt", header = TRUE)
```

## What happens in the code?

The code downloads the original data from UC Irvine's website, unzips the package, then reads each file into a table. The various datasets are combined into one set that is more simple both for readability and to comply with tidy data principles. More details on why these choices were made can be found in the codebook. 

The respective training and test data sets use cbind to merge the different sets into one. The training and test sets are combined into one set named "rawSet" with rbind, due to the fact that they have the same variables. Column names are then changed to make the set more malleable, and then only the needed variables of mean and standard deviation (std) are extracted into one set, titled "meanSTD".

The numbered activities in each row are then renamed to their actual names, and are also renamed for tidy data principles. The variable names are then also tidied up.

The entire set is then changed to comply with the tidy data rule, "each observation must have its own row", by combining the repeated activity observations for each subject into an average, resulting in one row for each observation. This is done with the recast function.

## What's created by this script?

A new data set that complies with tidy data principles is written to a txt file named "tidyset.txt". This is done in the script using write.table(). 

## Anything else?

There are some lines in the script that have been commented out. The first of these lines is one that reads the data from the created set into R. It's the same line of code mentioned towards the beginning of this readme. The following lines of code are unnecessary for creating and manipulating the dataset, but retained for posterity (i.e. so I can look at this in the future and see what I did). It changes the "shortDescription" attribute for every variable in the data table, which is used by the dataMaid package that I used to create the codebook. If the codebook looks nice to you, then feel free to try that package yourself! If you don't like it, then FINE.

## Wait, I liked the codebook! How do I make that?

Use the dataMaid package's function, makeCodebook(). This creates a fancy RMD file. To convert that file to a .MD (for github), use the rmarkdown package's function "render". 

## Anything ELSE else?

Please let me know if I did something incorrect here, as I've spent an embarrasingly long time figuring out this project, and I'd like to know if something is missing.