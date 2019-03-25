library(stringr)
library(dplyr)

## Set the folder name where files are placed
datasetFolder <- './UCIHAR_Dataset'

## Load the features data and set variable names
features_file <- paste(datasetFolder, 'features.txt', sep = '/')
features <- read.table(features_file, header = FALSE)
names(features) <- c("featureid", "featurename")

## Load the activity labels data and set variable names
activity_file <- paste(datasetFolder, 'activity_labels.txt', sep = '/')
activity_labels <- read.table(activity_file, header = FALSE)
names(activity_labels) <- c("activityid", "activityname")

## Get the test subject, data file paths
subject_test_file <- paste(datasetFolder, 'test', 'subject_test.txt', sep = '/')
x_test_file <- paste(datasetFolder, 'test', 'X_test.txt', sep = '/')
y_test_file <- paste(datasetFolder, 'test', 'y_test.txt', sep = '/')

## Load test subject & data files
subject_test <- read.table(subject_test_file, header = FALSE)
x_test <- read.table(x_test_file, header = FALSE)
y_test <- read.table(y_test_file, header = FALSE)

## Set the variable names to the test data frames and bind all dataframes
## into one data frame
names(subject_test) <- c("subjectid")
names(x_test) <- features$featurename
names(y_test) <- c("activityid")
test_dataset <- cbind(subject_test, x_test, y_test)

## Get the train subject, data file paths
subject_train_file <- paste(datasetFolder, 'train', 'subject_train.txt', sep = '/')
x_train_file <- paste(datasetFolder, 'train', 'X_train.txt', sep = '/')
y_train_file <- paste(datasetFolder, 'train', 'y_train.txt', sep = '/')

## Load train subject & data files
subject_train <- read.table(subject_train_file, header = FALSE)
x_train <- read.table(x_train_file, header = FALSE)
y_train <- read.table(y_train_file, header = FALSE)

## Set the variable names to the train data frames and bind all dataframes
## into one data frame
names(subject_train) <- c("subjectid")
names(x_train) <- features$featurename
names(y_train) <- c("activityid")
train_dataset <- cbind(subject_train, x_train, y_train)

## Merge test and train data frames
merged_dataset <- rbind(test_dataset, train_dataset)

## Get the list of columns which are for the mean and standard deviation
## measurement columns and add other columns that we need in our data frame
mean_std_cols <- features %>% filter(grepl('mean\\(\\)|std\\(\\)', featurename)) %>% select(featurename)
mean_std_cols <- as.character(mean_std_cols[,1])
required_cols <- c(c("activityid", "subjectid"), mean_std_cols)

## Get a subset of columns which are required
filtered_df <- merged_dataset[, required_cols]

## Tidy up the field names
names(filtered_df) <- gsub(pattern = "BodyBody", replacement = "Body", names(filtered_df))
## Merge the data frame with activity labels
all_data_df <- merge(activity_labels, filtered_df, by = "activityid") 

## Summarize the data and find the averages of all the measurement columns
data_summary <- all_data_df %>%
              select(-activityid) %>%
              group_by(activityname, subjectid) %>%
              summarize_all(funs(mean)) %>%
              ungroup

## Prefix the measurement columns with "Avg-" since they represent the average
## values of the measurements
newnames_summary <- c(names(data_summary[c(1, 2)]),
                      paste0("Avg-",names(data_summary[-c(1, 2)])))
  
names(data_summary) <- newnames_summary

## Write the tidy_data_set.csv file to the working directory
write.table(data_summary, "tidy_data_set.csv", row.names = FALSE, sep = ",")