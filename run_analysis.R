##read training data
training_df <- read.table("/Users/marwamehanna/Data Science/getting&cleaningData/Project/GACDP/UCI HAR Dataset/train/X_train.txt", 
                 header = FALSE)
##read training labels
training_labels_df <- read.table("/Users/marwamehanna/Data Science/getting&cleaningData/Project/GACDP/UCI HAR Dataset/train/Y_train.txt", 
                                 header = FALSE)
##read training subjects
training_subject_df <- read.table("/Users/marwamehanna/Data Science/getting&cleaningData/Project/GACDP/UCI HAR Dataset/train/subject_train.txt", 
                                 header = FALSE)
##read test data
test_df <- read.table("/Users/marwamehanna/Data Science/getting&cleaningData/Project/GACDP/UCI HAR Dataset/test/X_test.txt", 
                         header = FALSE)
##read test labels
test_labels_df <- read.table("/Users/marwamehanna/Data Science/getting&cleaningData/Project/GACDP/UCI HAR Dataset/test/y_test.txt", 
                      header = FALSE)
##read test subjects
test_subject_df <- read.table("/Users/marwamehanna/Data Science/getting&cleaningData/Project/GACDP/UCI HAR Dataset/test/subject_test.txt", 
                             header = FALSE)
##Merge traing data with labels and subjects
merged_training_df <- cbind(training_df,training_labels_df,training_subject_df)
##Merge test data with labels and subjects
merged_test_df <- cbind(test_df,test_labels_df ,test_subject_df)
##Merge training sets and test sets
merged_df <- rbind(merged_training_df,merged_test_df)
## read columns names from features
features_names <- read.table("/Users/marwamehanna/Data Science/getting&cleaningData/Project/GACDP/UCI HAR Dataset/features.txt", 
                             header = FALSE)
## take the list of names and convert it to vector
x <- features_names[,2]
x <- as.vector(x)
y <- c("Activity","Subject")
z <- c(x,y)
##rename all columns with the correct values from features
names(merged_df) <- z
##extract only the mean and standard deviation for each meaurements
ExtractedMeanSTD <- merged_df[, grep(pattern=".mean|.std|Activity|Subject", colnames(merged_df))]
##replace numbers of activity to descriptive names
Activity_lables <- read.table("/Users/marwamehanna/Data Science/getting&cleaningData/Project/GACDP/UCI HAR Dataset/activity_labels.txt", 
                              header = FALSE)
ExtractedMeanSTD$Activity[ExtractedMeanSTD$Activity == 1] <- Activity_lables[1,2]
ExtractedMeanSTD$Activity[ExtractedMeanSTD$Activity == 2] <- Activity_lables[2,2]
ExtractedMeanSTD$Activity[ExtractedMeanSTD$Activity == 3] <- Activity_lables[3,2]
ExtractedMeanSTD$Activity[ExtractedMeanSTD$Activity == 4] <- Activity_lables[4,2]
ExtractedMeanSTD$Activity[ExtractedMeanSTD$Activity == 5] <- Activity_lables[5,2]
##rename columns with a descriptive names
names(ExtractedMeanSTD) <- gsub(x = names(ExtractedMeanSTD), pattern = "\\()", replacement = "")  
names(ExtractedMeanSTD) <- gsub(x = names(ExtractedMeanSTD), pattern = "\\-", replacement = "")  
names(ExtractedMeanSTD) <- gsub(x = names(ExtractedMeanSTD), pattern = "mean", replacement = "Mean")  
names(ExtractedMeanSTD) <- gsub(x = names(ExtractedMeanSTD), pattern = "std", replacement = "STD")
names(ExtractedMeanSTD) <- gsub(x = names(ExtractedMeanSTD), pattern = "^t", replacement = "TimeOf")  
names(ExtractedMeanSTD) <- gsub(x = names(ExtractedMeanSTD), pattern = "^f", replacement = "FreqOf")  
##2nd data set for the average of each variable for each activity and each subject
library(reshape2)
SecondDataFrame <- recast(ExtractedMeanSTD, ExtractedMeanSTD$Activity + ExtractedMeanSTD$Subject ~ variable  , fun.aggregate = mean)


