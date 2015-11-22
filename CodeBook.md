<p><markdown>
#Markdown Live Editor#
---
#Getting and Cleaning Data Final Project
##Michael Hall
##11/22/2015
output:
  html_document:
  keep_md: yes
---

## Project Description
The purpose of this project is to demonstrate the ability to collect, clean, and reshape a data set into a tidy data set that can be used for further analysis.

##Study design and data processing

###Collection of the raw data
Description of how the data was collected.

###Notes on the original (raw) data 
Data for analysis can be downloaded from the following URL:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip][1]

##Creating the tidy datafile

###Guide to create the tidy data file
Description on how to create the tidy data file (1. download the data, ...)/

###Cleaning of the data
Short, high-level description of what the cleaning script does. [link to the readme document that describes the code in greater detail]()

##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset

(you can easily use Rcode for this, just load the dataset and provide the information directly from the tidy data file)

###Variable 1: Subject – a variable representing the experiment participant or test subject.
Values – an integer from 1 to 30.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly from the tidy data file)

###Variable 2: Activity_Label – a factor variable representing the six levels of activity performed, including 'LAYING', 'SITTING', 'STANDING', 'WALKING', 'WALKING_DOWNSTAIRS', and 'WALKING_UPSTAIRS'.

####Notes on variable 2:
<If available, some additional notes on the variable not covered elsewhere. If no notes are present leave this section out.>
The following variables represent the average of the values collected for each test subject and activity specified in the data row.  Each value has been normalized within a range of -1 to 1.

###Variable 3: tBodyAcc-mean()-X              
###Variable 4: tBodyAcc-mean()-Y              
###Variable 5: tBodyAcc-mean()-Z              
###Variable 6: tBodyAcc-std()-X               
###Variable 7: tBodyAcc-std()-Y               
###Variable 8: tBodyAcc-std()-Z               
###Variable 9: tGravityAcc-mean()-X           
###Variable 10: tGravityAcc-mean()-Y           
###Variable 11: tGravityAcc-mean()-Z           
###Variable 12: tGravityAcc-std()-X            
###Variable 13: tGravityAcc-std()-Y            
###Variable 14: tGravityAcc-std()-Z            
###Variable 15: tBodyAccJerk-mean()-X          
###Variable 16: tBodyAccJerk-mean()-Y          
###Variable 17: tBodyAccJerk-mean()-Z          
###Variable 18: tBodyAccJerk-std()-X           
###Variable 19: tBodyAccJerk-std()-Y           
###Variable 20: tBodyAccJerk-std()-Z           
###Variable 21: tBodyGyro-mean()-X             
###Variable 22: tBodyGyro-mean()-Y             
###Variable 23: tBodyGyro-mean()-Z             
###Variable 24: tBodyGyro-std()-X              
###Variable 25: tBodyGyro-std()-Y              
###Variable 26: tBodyGyro-std()-Z              
###Variable 27: tBodyGyroJerk-mean()-X         
###Variable 28: tBodyGyroJerk-mean()-Y         
###Variable 29: tBodyGyroJerk-mean()-Z         
###Variable 30: tBodyGyroJerk-std()-X          
###Variable 31: tBodyGyroJerk-std()-Y          
###Variable 32: tBodyGyroJerk-std()-Z          
###Variable 33: tBodyAccMag-mean()             
###Variable 34: tBodyAccMag-std()              
###Variable 35: tGravityAccMag-mean()          
###Variable 36: tGravityAccMag-std()           
###Variable 37: tBodyAccJerkMag-mean()         
###Variable 38: tBodyAccJerkMag-std()          
###Variable 39: tBodyGyroMag-mean()            
###Variable 40: tBodyGyroMag-std()             
###Variable 41: tBodyGyroJerkMag-mean()        
###Variable 42: tBodyGyroJerkMag-std()         
###Variable 43: fBodyAcc-mean()-X              
###Variable 44: fBodyAcc-mean()-Y              
###Variable 45: fBodyAcc-mean()-Z              
###Variable 46: fBodyAcc-std()-X               
###Variable 47: fBodyAcc-std()-Y               
###Variable 48: fBodyAcc-std()-Z               
###Variable 49: fBodyAcc-meanFreq()-X          
###Variable 50: fBodyAcc-meanFreq()-Y          
###Variable 51: fBodyAcc-meanFreq()-Z          
###Variable 52: fBodyAccJerk-mean()-X          
###Variable 53: fBodyAccJerk-mean()-Y          
###Variable 54: fBodyAccJerk-mean()-Z          
###Variable 55: fBodyAccJerk-std()-X           
###Variable 56: fBodyAccJerk-std()-Y           
###Variable 57: fBodyAccJerk-std()-Z           
###Variable 58: fBodyAccJerk-meanFreq()-X      
###Variable 59: fBodyAccJerk-meanFreq()-Y      
###Variable 60: fBodyAccJerk-meanFreq()-Z      
###Variable 61: fBodyGyro-mean()-X             
###Variable 62: fBodyGyro-mean()-Y             
###Variable 63: fBodyGyro-mean()-Z             
###Variable 64: fBodyGyro-std()-X              
###Variable 65: fBodyGyro-std()-Y              
###Variable 66: fBodyGyro-std()-Z              
###Variable 67: fBodyGyro-meanFreq()-X         
###Variable 68: fBodyGyro-meanFreq()-Y         
###Variable 69: fBodyGyro-meanFreq()-Z         
###Variable 70: fBodyAccMag-mean()             
###Variable 71: fBodyAccMag-std()              
###Variable 72: fBodyAccMag-meanFreq()         
###Variable 73: fBodyBodyAccJerkMag-mean()     
###Variable 74: fBodyBodyAccJerkMag-std()      
###Variable 75: fBodyBodyAccJerkMag-meanFreq() 
###Variable 76: fBodyBodyGyroMag-mean()        
###Variable 77: fBodyBodyGyroMag-std()         
###Variable 78: fBodyBodyGyroMag-meanFreq()    
###Variable 79: fBodyBodyGyroJerkMag-mean()    
###Variable 80: fBodyBodyGyroJerkMag-std()     
###Variable 81: fBodyBodyGyroJerkMag-meanFreq()


##Sources
Sources you used if any, otherwise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)


  [1]: http://
</markdown></p>