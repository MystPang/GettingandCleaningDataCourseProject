#Code Book
This code book describes the data, transformations or work performed to clean up the data.

##Data Source
Source data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Data Description:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## R Script:
https://github.com/MystPang/GettingandCleaningDataCourseProject/blob/master/run_analysis.R

##Script Requirement:
* Extract the downloaded zip files to the working directory, make sure the folder name is "UCI HAR Dataset"
* Package "plyr" is used, "plyr" should be installed before run the script.

##Script Description:
1. merge the the table loaded from "\test\X_test.txt" and table from "\train\X_train.txt" as X
2. merge the the table loaded from "\test\Y_test.txt" and table from "\train\Y_train.txt" as Y
3. merge the the table loaded from "\test\subject_test.txt" and table from "\train\subject_train.txt" as S
4. Load data from features.txt as header of X
5. Subset the column of X which releted to mean or stand deviation.
6. Factor the column of Y with the data load from "activity_labels.txt"
7. Merge S, X, Y
8. Calcute the means of X columns which group by activity(Y) and subject id (S)
9. Output to file.

##Output Data description:

###subject:  Integer of subject ID

###activity: activity name in:
* walking
* walkingupstairs
* walkingdownstairs
* sitting
* standing
* laying      

##Measured Column:
All variables are mean of following column group by subject, activity

Time domain body accelation (x, y, z)
* meantbodyaccmeanx
* meantbodyaccmeany
* meantbodyaccmeanz
	
Time domain body accelation standard deviation (x, y, z) 
* meantbodyaccstdx
* meantbodyaccstdy
* meantbodyaccstdz

Time domain gravity accelation mean (x, y, z)
* meantgravityaccmeanx
* meantgravityaccmeany
* meantgravityaccmeanz

Time domain gravity accelation standard deviation (x, y, z)
* meantgravityaccstdx
* meantgravityaccstdy
* meantgravityaccstdz

Time domain body accelation jerk mean (x, y, z)
* meantbodyaccjerkmeanx
* meantbodyaccjerkmeany
* meantbodyaccjerkmeanz

Time domain body accelation jerk standard deviation (x, y, z)
* meantbodyaccjerkstdx
* meantbodyaccjerkstdy
* meantbodyaccjerkstdz

Time domain body gyroscrope mean (x, y, z)
* meantbodygyromeanx
* meantbodygyromeany
* meantbodygyromeanz

Time domain body gyroscrope standard deviation (x, y, z)
* meantbodygyrostdx
* meantbodygyrostdy
* meantbodygyrostdz

Time domain body gyroscrope jerk mean (x, y, z)
* meantbodygyrojerkmeanx
* meantbodygyrojerkmeany
* meantbodygyrojerkmeanz

Time domain body gyroscrope jerk standard deviation (x, y, z)
* meantbodygyrojerkstdx
* meantbodygyrojerkstdy
* meantbodygyrojerkstdz

Time domain body acceleration magnitude mean
* meantbodyaccmagmean

Time domain body acceleration standard deviation
* meantbodyaccmagstd

Time domain body acceleration mean 
* meantgravityaccmagmean

Time domain body acceleration magnitude standard deviation 
* meantgravityaccmagstd

Time domain body acceleration jerk magnitude mean
* meantbodyaccjerkmagmean

Time domain body acceleration jerk magnitude standard deviation
* meantbodyaccjerkmagstd



Time domain body acceleration jerk magnitude mwan
* meantbodygyromagmean

Time domain body gyroscrop magnitude standard deviation
* meantbodygyromagstd

Time domain body gyroscrop Jerk magnitude Means
* meantbodygyrojerkmagmean

Time domain body gyroscrop Jerk standard deviation
* meantbodygyrojerkmagstd

Frequency domain body gyroscrop Jerk standard deviation (x, y, z)
* meanfbodyaccmeanx
* meanfbodyaccmeany
* meanfbodyaccmeanz

Frequency domain body gyroscrop Jerk standard deviation (x, y, z)
* meanfbodyaccstdx
* meanfbodyaccstdy
* meanfbodyaccstdz

Frequency domain body Accerlation Jerk Mean (x, y, z)
* meanfbodyaccjerkmeanx
* meanfbodyaccjerkmeany
* meanfbodyaccjerkmeanz

Frequency domain body Accerlation Jerk standard deviation (x, y, z)
* meanfbodyaccjerkstdx
* meanfbodyaccjerkstdy
* meanfbodyaccjerkstdz

Frequency domain body gyroscrop Jerk mean (x, y, z)
* meanfbodygyromeanx
* meanfbodygyromeany
* meanfbodygyromeanz

Frequency domain body gyroscrop Jerk mean (x, y, z)
* meanfbodygyrostdx
* meanfbodygyrostdy
* meanfbodygyrostdz

Frequency domain body accerlation magnitude mean
* meanfbodyaccmagmean

Frequency domain body accerlation magnitude standard deviation
* meanfbodyaccmagstd

Frequency domain body accerlation Jerkmagnitude Mean
* meanfbodybodyaccjerkmagmean

Frequency domain body accerlation Jerkmagnitude standard deviation
* meanfbodybodyaccjerkmagstd

Frequency domain body gyromscrope magnitude mean
* meanfbodybodygyromagmean

Frequency domain body gyromscrope magnitude standard deviation
* meanfbodybodygyromagstd

Frequency domain body gyromscrope Jerk Mean
* meanfbodybodygyrojerkmagmean

Frequency domain body gyromscrope Jerk Standard deviation
* meanfbodybodygyrojerkmagstd 

