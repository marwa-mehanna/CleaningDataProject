# CleaningDataProject
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
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

2. Extracts only the measurements on the mean and standard deviation for each measurement.
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
3. Uses descriptive activity names to name the activities in the data set
				##replace numbers of activity to descriptive names
				Activity_lables <- read.table("/Users/marwamehanna/Data Science/getting&cleaningData/Project/GACDP/UCI HAR Dataset/activity_labels.txt", 
																			header = FALSE)
				ExtractedMeanSTD$Activity[ExtractedMeanSTD$Activity == 1] <- Activity_lables[1,2]
				ExtractedMeanSTD$Activity[ExtractedMeanSTD$Activity == 2] <- Activity_lables[2,2]
				ExtractedMeanSTD$Activity[ExtractedMeanSTD$Activity == 3] <- Activity_lables[3,2]
				ExtractedMeanSTD$Activity[ExtractedMeanSTD$Activity == 4] <- Activity_lables[4,2]
				ExtractedMeanSTD$Activity[ExtractedMeanSTD$Activity == 5] <- Activity_lables[5,2]
4.Appropriately labels the data set with descriptive variable names.
			#rename columns with a descriptive names
			names(ExtractedMeanSTD) <- gsub(x = names(ExtractedMeanSTD), pattern = "\\()", replacement = "")  
			names(ExtractedMeanSTD) <- gsub(x = names(ExtractedMeanSTD), pattern = "\\-", replacement = "")  
			names(ExtractedMeanSTD) <- gsub(x = names(ExtractedMeanSTD), pattern = "mean", replacement = "Mean")  
			names(ExtractedMeanSTD) <- gsub(x = names(ExtractedMeanSTD), pattern = "std", replacement = "STD")
			names(ExtractedMeanSTD) <- gsub(x = names(ExtractedMeanSTD), pattern = "^t", replacement = "TimeOf")  
			names(ExtractedMeanSTD) <- gsub(x = names(ExtractedMeanSTD), pattern = "^f", replacement = "FreqOf")  
			
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
			##2nd data set for the average of each variable for each activity and each subject
			library(reshape2)
			SecondDataFrame <- recast(ExtractedMeanSTD, ExtractedMeanSTD$Activity + ExtractedMeanSTD$Subject ~ variable  , fun.aggregate = mean)
CodeBook			
Tidy dataframe name = 	ExtractedMeanSTD
second tidy data from step 5  = SecondDataFrame 
	

		
