# Getting & Cleaning Data Course Project Programming Assignment
The purpose of this assignment is to demonstrate the ability to collect, work with and clean a dataset. The outcome of this assignment is to produce a tidy dataset that can be used for later analysis.

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article] (http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Pre-requisites

- This project expects the all the data files from the above mentioned zip file to be placed in the working directory under a folder called "UCIHAR_Dataset".
- The run_analysis.R script requires the dplyr package to be installed, prior to running this script

## Data set for this assignment
The data for this assignment can be downloaded form the following URL. 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

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
