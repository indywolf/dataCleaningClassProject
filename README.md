# Getting and Cleaning Data Course Project

## Purpose

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. This repo will provide
 * Readme.md file that gives a description of the activity and the code.  
 * The R script file that performs the work.  
 * A file called CodeBook.md that names the variables in the data tables
 
Data to be used for this work is described here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data for the project resides here: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The run_analysis.R scrip should perform the following activities:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How it works

After downloading and extracting the zip file, you can either run the file run_analysis.R in the directory of the extract ("UCI HAR Dataset") via comand line or open the file in R Studio and set the working directory to the same place. The script will combine data files and produce 2 text files.  It will product tidydata.txt which reflects work done in the first 4 activities and then meantidydata.txt which follows step numbr 5.

The run_analysis.R file is commented to show all steps being executed.