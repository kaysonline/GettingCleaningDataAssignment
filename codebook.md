# Code Book for Getting & Cleaning Data Course Project
The dataset in tidy_data_set.csv is generated by running the run_analysis.R to transform the data from "Human Activity Recognition Using Smartphones Dataset". A full description is available [here] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained.

## About the data set
The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ).

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Features in tidy_data_set

* activityname
..1. WALKING
..2. WALKING_UPSTAIRS
..3. WALKING_DOWNSTAIRS
..4. SITTING
..5. STANDING
..6. LAYING
* subjectid
..*Unique Id assigned to the subject who performed the experiment 
* Avg-tBodyAcc-mean()-X
..*Mean of time domain body acceleration signals in X direction
* Avg-tBodyAcc-mean()-Y
..*Mean of time domain body acceleration signals in Y direction
* Avg-tBodyAcc-mean()-Z
..*Mean of time domain body acceleration signals in Z direction
* Avg-tBodyAcc-std()-X
..*Standard deviation of time domain body acceleration signals in X direction
* Avg-tBodyAcc-std()-Y
..*Standard deviation of time domain body acceleration signals in Y direction
* Avg-tBodyAcc-std()-Z
..*Standard deviation of time domain body acceleration signals in Z direction
* Avg-tGravityAcc-mean()-X
..*Mean of time domain gravity accelaration signals in X direction
* Avg-tGravityAcc-mean()-Y
..*Mean of time domain gravity accelaration signals in Y direction
* Avg-tGravityAcc-mean()-Z
..*Mean of time domain gravity accelaration signals in Z direction
* Avg-tGravityAcc-std()-X
..*Standard Deviation of time domain gravity accelaration signals in X direction
* Avg-tGravityAcc-std()-Y
..*Standard deviation of time domain gravity accelaration signals in Y direction
* Avg-tGravityAcc-std()-Z
..*Standard deviation of time domain gravity accelaration signals in Z direction
* Avg-tBodyAccJerk-mean()-X
..*Mean of time domain body accelaration jerk signals in X direction
* Avg-tBodyAccJerk-mean()-Y
..*Mean of time domain body accelaration jerk signals in Y direction
* Avg-tBodyAccJerk-mean()-Z
..*Mean of time domain body accelaration jerk signals in Z direction
* Avg-tBodyAccJerk-std()-X
..*Standard deviation of time domain body accelaration jerk signals in X direction
* Avg-tBodyAccJerk-std()-Y
..*Standard deviation of time domain body accelaration jerk signals in Y direction
* Avg-tBodyAccJerk-std()-Z
..*Standard deviation of time domain body accelaration jerk signals in Z direction
* Avg-tBodyGyro-mean()-X
..*Mean of time domain angular velocity signals in X direction
* Avg-tBodyGyro-mean()-Y
..*Mean of time domain angular velocity signals in Y direction
* Avg-tBodyGyro-mean()-Z
..*Mean of time domain angular velocity signals in Z direction
* Avg-tBodyGyro-std()-X
..*Standard deviation of time domain angular velocity signals in X direction
* Avg-tBodyGyro-std()-Y
..*Standard deviation of time domain angular velocity signals in Y direction
* Avg-tBodyGyro-std()-Z
..*Standard deviation of time domain angular velocity signals in Z direction
* Avg-tBodyGyroJerk-mean()-X
..*Mean of time domain angular velocity jerk signals in X direction
* Avg-tBodyGyroJerk-mean()-Y
..*Mean of time domain angular velocity jerk signals in Y direction
* Avg-tBodyGyroJerk-mean()-Z
..*Mean of time domain angular velocity jerk signals in Z direction
* Avg-tBodyGyroJerk-std()-X
..*Standard deviation of time domain angular velocity jerk signals in X direction
* Avg-tBodyGyroJerk-std()-Y
..*Standard deviation of time domain angular velocity jerk signals in Y direction
* Avg-tBodyGyroJerk-std()-Z
..*Standard deviation of time domain angular velocity jerk signals in Z direction
* Avg-tBodyAccMag-mean()
..*Mean of magnitude of time domain acceleration signals
* Avg-tBodyAccMag-std()
..*Standard deviation of magnitude of time domain acceleration signals
* Avg-tGravityAccMag-mean()
..*Mean of magnitude of time domain gravity acceleration signals
* Avg-tGravityAccMag-std()
..*standard deviation of magnitude of time domain gravity acceleration signals
* Avg-tBodyAccJerkMag-mean()
..*Mean of magnitude of time domain body acceleration jerk signals
* Avg-tBodyAccJerkMag-std()  
..*Standard deviation of magnitude of time domain body acceleration jerk signals
* Avg-tBodyGyroMag-mean()
..*Mean of magnitude of time domain body angular velocity signals
* Avg-tBodyGyroMag-std()
..*Standard deviation of magnitude of time domain body angular velocity signals
* Avg-tBodyGyroJerkMag-mean()
..*Mean of magnitude of time domain body angular velocity jerk signals
* Avg-tBodyGyroJerkMag-std()
..*Standard deviation of magnitude of time domain body angular velocity jerk signals
* Avg-fBodyAcc-mean()-X
..*Mean of frequency domain body acceleration signals in X direction
* Avg-fBodyAcc-mean()-Y
..*Mean of frequency domain body acceleration signals in Y direction
* Avg-fBodyAcc-mean()-Z
..*Mean of frequency domain body acceleration signals in Z direction
* Avg-fBodyAcc-std()-X
..*Standard deviation of frequency domain body acceleration signals in X direction
* Avg-fBodyAcc-std()-Y
..*Standard deviation of frequency domain body acceleration signals in Y direction
* Avg-fBodyAcc-std()-Z
..*Standard deviation of frequency domain body acceleration signals in Z direction
* Avg-fBodyAccJerk-mean()-X
..*Mean of frequency domain body acceleration jerk signals in X direction
* Avg-fBodyAccJerk-mean()-Y
..*Mean of frequency domain body acceleration jerk signals in Y direction
* Avg-fBodyAccJerk-mean()-Z
..*Mean of frequency domain body acceleration jerk signals in Z direction
* Avg-fBodyAccJerk-std()-X
..*Standard deviation of frequency domain body acceleration jerk signals in X direction
* Avg-fBodyAccJerk-std()-Y
..*Standard deviation of frequency domain body acceleration jerk signals in Y direction
* Avg-fBodyAccJerk-std()-Z
..*Standard deviation of frequency domain body acceleration jerk signals in Z direction
* Avg-fBodyGyro-mean()-X
..*Mean of frequency domain body angular velocity signals in X direction
* Avg-fBodyGyro-mean()-Y
..*Mean of frequency domain body angular velocity signals in Y direction
* Avg-fBodyGyro-mean()-Z
..*Mean of frequency domain body angular velocity signals in Z direction
* Avg-fBodyGyro-std()-X
..*Standard deviation of frequency domain body angular velocity signals in X direction
* Avg-fBodyGyro-std()-Y
..*Standard deviation of frequency domain body angular velocity signals in Y direction
* Avg-fBodyGyro-std()-Z
..*Standard deviation of frequency domain body angular velocity signals in Z direction
* Avg-fBodyAccMag-mean()
..*Mean of magnitude of frequency domain body acceleration signals
* Avg-fBodyAccMag-std()
..*Standard deviation of magnitude of frequency domain body acceleration signals
* Avg-fBodyAccJerkMag-mean()
..*Mean of magnitude of frequency domain body acceleration jerk signals
* Avg-fBodyAccJerkMag-std()
..*Standard deviation of magnitude of frequency domain body acceleration jerk signals
* Avg-fBodyGyroMag-mean()
..*Mean of magnitude of frequency domain body angular velocity signals
* Avg-fBodyGyroMag-std()
..*Standard deviation of magnitude of frequency domain body angular velocity signals
* Avg-fBodyGyroJerkMag-mean()
..*Mean of magnitude of frequency domain body angular velocity jerk signals
* Avg-fBodyGyroJerkMag-std()
..*Standard deviation of magnitude of frequency domain body angular velocity jerk signals

## Transformations performed to generate tidy_data_set
1. Download the zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip the file and place the files in a folder named "UCIHAR_Dataset" in the working folder
3. Load the data from features.txt to load all the variable names as a data frame
4. Load the data from activity_labels.txt to load the activity labels as a data frame
5. Load subject_test.txt, X_test.txt & y_test.txt data files and set the column names
6. Column bind the three data frames to form one test data frame
5. Load subject_train.txt, X_train.txt & y_train.txt data files and set the column names
6. Column bind the three data frames to form one train data frame
7. Merge test and train data frames together
8. Filter the feature names only to ones that have mean() or std() in their name
9. Filter the merged data frame from step 7 to get only the feature names filtered in step 8
10. A few feature names have double "Body" in the name, tidy the feature names
11. Merge the filtered data frame from step 9 with activity labels data frame by activity id to add the activity name feature to the data frame
12. Group the data frame by activity name and subject and calculate the average of all the measurement fields
13. Prefix "Avg-" to all the measurement variables
14. Write the tidy_data_frame to a output file.