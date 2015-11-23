**Readme.md**

The data in *tidy_data_set.txt* can be read into R with the following code:
read.table("tidy_data_set.txt", header=TRUE)

**Overview**

**Codebook.md** describes the variables, the data, and the work performed to clean up the data. There you can find the specific details of variables, values, and units in the tidy data set.  The *tidy_data_set.txt* file in this directory is a tidy subset of the data provided in the Human Activity Recognition Using Smartphones data set.  The source data is available from the following link and is also included the UCI HAR Dataset directory in this repository.

*tidy_data_set.txt* includes the training and test data sets from the following files:

Training data sets:

 - UCI HAR Dataset/test/subject_train.txt  
 - UCI HAR Dataset/test/X_train.txt  
 - UCI HAR Dataset/test/y_train.txt


Test data sets:

 - UCI HAR Dataset/test/subject_test.txt
 - UCI HAR Dataset/test/X_test.txt
 - UCI HAR Dataset/test/y_test.txt

   
The general idea is to prepare a tidy data set that meets the following principles:

 1. Each column represents a variable or measure or characteristic
 2. Each variable is in one column
 3.  Each observation of the variable is in a different row

In this project the final tidy data set dimensions were 180 rows and 68 columns.

**Codebook.md** describes the tidy data set.

**Description of run_analysis.R**

----------
This R script takes source data from the UCI HAR dataset directory, imports it into R, and transforms it into a tidy data set.
The script performs the following operations to import, clean, and transform the data set. 

 1. Install the necessary R packages to
    assist with the data
    transformations.  This includes the
    packages data.table, rshape2, and
    dplyr.  The script checks to see if
    they are already present in the
    namespace of the user. 
`
 2. The files are downloaded from the aforementioned
    link and uncompressed into a local
    directory on the user’s desktop.
 3. Working directories are set to the
    locations of the training and test
    data sets. 
 4. The files are read into
    the working directory in R. 
 5. Next a series of R statements are performed
    to merge the training and test data
    sets into a single dataset, one for
    training and one for test.
 6. Read the
    activity label descriptions from the
    second column of the activity labels
    data file. 
`
 7. Read the feature
    descriptions from the second columns
    of the features data file. 
`
 8. Create a
    vector containing the list of all
    training files and a second vector
    containing a list of all the test
    files. 
 9. Merge all the training and
    test files together into a single
    training and test data frame.  This
    is possible because each file has
    the same number of observations –
    7,352 observations for training and
    2,947 observations for test.  There
    are no null or ‘NA’ values in any of
    the data sets. 
`
 10. Merge both the
    training and test sets into a single
    data frame through row binding. 
 11. Extract just the measurements for
    mean and standard deviation.  This
    is accomplished by using the grep
    function and a regular expression to
    match on all occurrences of ‘mean’
    and ‘std’ in the data set.  These
    attributes are extracted from the
    data frame and loaded into a new
    data frame. 
`
 12. The data is ‘melted’ from a wide format (many columns) to
    a long format using the melt function from the reshape2 package.
    Basically this is done so each row
    is a unique id-variable combination.

 13. A second tidy data set was created
    to contain the average of each
    variable (mean and standard
    deviation) for each activity and
    each subject.  This was accomplished
    by using the dcast function to cast
    the melted data back into a new data
    frame, converted to wide format from
    the long format. 

 14. The final tidy data
    set was written to a pipe-delimited
    (|) text file named tidy_data.txt. 
    It contains 180 observations and 80
    columns.  There are two columns for
    Subject ID and Activity Name, plus
    78 columns for the measurement
    variables.

**Special Instructions or Running run_analysis.r**


----------

The script assumes you are working on a Windows operating system.  If you are working on a Mac/Linux system, the directory paths in the script will have to be modified.
