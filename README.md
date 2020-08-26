# datacleaning-project
Project for Data Cleaning course

# How many scripts are there?
There is only one script made for simplicity's sake, titled run_analysis.R. 

# How do I get the data created by this script?
Just run the run_analysis.R script, then use the following line of code to read the data into R:
```data <- read.table("tidyset.txt", header = TRUE)

# What happens in the code?

The code downloads the original data from UC Irvine's website, unzips the data, then reads each file into a table. The various datasets are combined into one set that is more simple both for readability and to comply with tidy data principles. More details on why these choices were made can be found in the codebook. 

The respective training and test data sets use cbind to merge the different sets into one. The training and test sets are combined into one set named "rawSet" with rbind, due to the fact that they have the same variables. Column names are then changed to make the set more malleable, and then only the needed variables of mean and standard deviation (std) are extracted into one set, titled "meanSTD".

The numbered activities in each row are then renamed to their actual names, and are also renamed for tidy data principles. The variable names are then also tidied up.

The entire set is then changed to comply with the tidy data rule, "each observation must have its own row", by combining the repeated activity observations for each subject into an average, resulting in one row for each observation. This is done with the recast function.

The new data set is then written to a txt file using write.table(). 