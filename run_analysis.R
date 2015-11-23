## run_analysis.R
##
## run_analysis.R script does the following:
## 	1. Extracts only the measurements on the mean and standard deviation for 
##         each measurement.
## 	2. Uses descriptive activity names to name the activities in the data set.
## 	3. Labels the data set with descriptive activity names.
## 	4. Merges the training and the test sets to create one data set.
## 	5. Create a second, independent tidy data set with the average of each
##         variable.

## Install necessary packages (check to see if they exist already)
if (!require("data.table")) {
        install.packages("data.table")
}

if (!require("reshape2")) {
        install.packages("reshape2")
}	

if (!require("dplyr")) {
        install.packages("dplyr")
}

## Invoke packages 	
library(data.table)
library(reshape2)
library(dplyr)

## File URL to download
fileURL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'

## Set downloaded data file
ucidata <- "c:/Rspace/data/getdata-projectfiles-UCI-HAR-Dataset.zip"

## Set directory
ucidir <- "C:/Rspace/data/UCI HAR Dataset"

## Download the dataset (check for existence)
if (file.exists (ucidata) == FALSE) {
        download.file (fileURL, destfile = ucidata)
}

## Uncompress data file
if (file.exists (ucidir) == FALSE) {
        unzip (ucidata)
}

## Set working directories for downloaded data sets
dataDir      <- "C:/Rspace/data/UCI HAR Dataset"
traindataDir <- "C:/Rspace/data/UCI HAR Dataset/train"
testdataDir  <- "C:/Rspace/data/UCI HAR Dataset/test"

## Read in training and test datasets:
## Set working directory to location of training data sets
setwd(traindataDir) 
xtrainDf <- read.table ("./X_train.txt", header = FALSE)
ytrainDf <- read.table ("./y_train.txt", header = FALSE)
subjecttrainDf <- read.table ("./subject_train.txt", header = FALSE)

## Set working directory to location of test data sets
setwd(testdataDir) 
xtestDf  <- read.table ("./X_test.txt", header = FALSE)
ytestDf  <- read.table ("./y_test.txt", header = FALSE)
subjecttestDf  <- read.table ("./subject_test.txt", header = FALSE)

################################################################################
## 1. Extract just the measurements for mean and standard deviation:
################################################################################

## Set working directory to location of features data sets
setwd(dataDir) 

## Read the activity label descriptions (in 2nd column)
labelsDf <- read.table("./activity_labels.txt", header = FALSE)[,2]

## Read the feature descriptions (in 2nd column)
featuresDf  <- read.table("./features.txt", header = FALSE)[,2]

## Extract only the measurements on the mean and standard deviation for each 
## measurement. Use grepl string function to find all instances of 
## 'mean' or 'std' in features data frame and create a logical data frame.
findfeatures <- grepl("mean|std", featuresDf)

################################################################################
## 2. Appropriately labels the data set with descriptive variable names.
## 3. Uses descriptive activity names to name the activities in the data set.
## 4. Merges the training and the test sets to create one data set.
################################################################################

## Execute naming process for training data:
## Captuture all variable names
names(xtrainDf) <- featuresDf

## Extract subset of measurements:
## Capture only the measurements on the mean and standard deviation for each 
## measurement in the training data
xtrainDf <- xtrainDf[,findfeatures]

## Load activity data for training data
ytrainDf[,2] <- labelsDf[ytrainDf[,1]]

## Apply meaningful activity names to y training data frame
## and test subject data frame
names(ytrainDf) <- c("activity_id", "activity_name")
names(subjecttrainDf) <- "subject_id"

## Combine multiple training datasets into a single training data frame
trainDf <- cbind(as.data.table(subjecttrainDf), ytrainDf, xtrainDf)

## Execute naming process for test data:
## Captuture all variable names
names(xtestDf) <- featuresDf

## Extract subset of measurements:
## Extract only the measurements on the mean and standard deviation for each 
## measurement in the test data
xtestDf <- xtestDf[,findfeatures]

## Load activity data for test data
ytestDf[,2] <- labelsDf[ytestDf[,1]]

## Apply meaningful activity names to test data frame and 
## test subject data frame
names(ytestDf) <- c("activity_id", "activity_name")
names(subjecttestDf) <- "subject_id"

# Combine multiple test datasets into a single test data frame
testDf <- cbind(as.data.table(subjecttestDf), ytestDf, xtestDf)

# Combine test and training data sets into a single data frame 
mergedDf <- rbind(testDf, trainDf)

## Merge data labels; using melt function to reshape data into long form
meltDf  <- melt(mergedDf, id=1:3, measure.vars=list(4:length(mergedDf)))

################################################################################
# 5. Create a second, independent tidy data set with the average of each 
#    variable for each activity and each subject:
################################################################################

## Take the mean of each variable using dcast function; dcast enables
## us to go from long to wide format
tidyAvgDf <- dcast(meltDf, subject_id + activity_name ~ variable, mean)

## Write out second tidy data set to current working directory
write.table(tidyAvgDf, file = "./tidy_data.txt", sep = "|", row.name=FALSE)


