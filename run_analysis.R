run_analysis <- function(){
        library(dplyr)
        library(reshape2)
        
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                      "ucidata.zip")
        unzip("ucidata.zip")
        
        ## Read data
        activities <- read.table('UCI HAR Dataset/activity_labels.txt')
        features <- read.table('UCI HAR Dataset/features.txt')
        test_X <- read.table('UCI HAR Dataset/test/X_test.txt')
        test_Y <- read.table('UCI HAR Dataset/test/Y_test.txt')
        test_subject <- read.table('UCI HAR Dataset/test/subject_test.txt')
        train_X <- read.table('UCI HAR Dataset/train/X_train.txt')
        train_Y <- read.table('UCI HAR Dataset/train/Y_train.txt')
        train_subject <- read.table('UCI HAR Dataset/train/subject_train.txt')
        
        ## Merge the different files of each set with column binding
        test <- cbind(test_subject,test_Y, test_X)
        train <- cbind(train_subject,train_Y, train_X)
        
        ## Merge the sets into one set with row binding
        rawSet <- rbind(test, train)
        
        ## Name the columns from features.txt
        names(rawSet)[3:563] <- as.character(features[,2])
        names(rawSet)[1:2] <- c("subject", "activity")
        
        neededColumns <- grep("(mean\\()|(std\\()|subject|activity", 
                              names(rawSet), value = TRUE)
        meanSTD <- select(rawSet, all_of(neededColumns))
        
        ## Rename activities
        activities[,2] <- gsub("_","",activities[,2])
        for (i in 1:nrow(activities)){ 
                activities[i,2] <- tolower(activities[i,2])
                meanSTD$activity <- gsub(activities[i,1], activities[i,2],
                                           meanSTD$activity)
        }
        
        ## Tidy up the variables
        neededColumns <- gsub("()","",neededColumns,fixed = TRUE)
        neededColumns <- gsub("-","",neededColumns,fixed = TRUE)
        names(meanSTD) <- neededColumns
        
        ## Create tidy set of mean values for each subject and activity
        tidyset <- recast(meanSTD, subject + activity ~ variable, mean, 
                           id.var = c("subject", "activity"))
        
        ## Create the file
        write.table(tidyset, "tidyset.txt", row.names = FALSE)
        
        ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        ## EXTRA UNNECESSARY CODE BELOW
        ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        
        ## Read the file back in with the following:
        ## data <- read.table("tidyset.txt", header = TRUE)
        
        ## The following is what is used to create the codebook.
        ##descriptions <- read.table('descriptions.txt',sep = "\n")
        ##for (i in seq_along(tidyset)){
        ##        attr(tidyset[,i], "shortDescription") <- descriptions[i,1]
        ##}
        ##library(dataMaid)
        ##makeCodebook(tidyset)
        ## library(rmarkdown)
        ##render("codebook_analysis.Rmd", 
        ##       md_document(variant = "markdown_github"))
}