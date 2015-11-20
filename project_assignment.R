####
#### Getting and Cleaning Data Course Project 
####

#### Set working directory to the UCI HAR Dataset
####
#### 1) Merges the training and the test sets to create one data set.
####
####    First get column names for X files
####    Also clean up invalid characters per request 4

columnNames <- read.table('features.txt')
cleanNames <- gsub("-mean\\(\\)-", "Mean", columnNames[,2])
cleanNames <- gsub("-std\\(\\)-", "STD", cleanNames)
cleanNames <- gsub("\\-", "", cleanNames)
cleanNames <- gsub("\\(", "", cleanNames)
cleanNames <- gsub("\\)", "", cleanNames)

####
#### Get Test files and merge to one table
####

testSubject <- read.table("test/subject_test.txt", header=FALSE, col.names = c('Subject'))
testX <- read.table("test/X_test.txt", header=FALSE, col.names = cleanNames)
testY <- read.table("test/y_test.txt", header=FALSE, col.names = c('Activity'))

testResults <- cbind(testSubject, testY, testX)

####
#### Get Train files and merge to one table
####

trainSubject <- read.table("train/subject_train.txt", header = FALSE, col.names = c('Subject'))
trainX <- read.table("train/X_train.txt", header = FALSE, col.names = cleanNames)
trainY <- read.table("train/y_train.txt", header = FALSE, col.names = c('Activity'))

trainResults <- cbind(trainSubject, trainY, trainX)

####
#### Rowbind the sets into one table
####

completeResults <- rbind(testResults, trainResults)

####
#### 2) Extract only the measurements on the mean and standard deviation (keep Subject and Activity for later use)
####

limitedResults <- completeResults[,grep("Subject|Activity|Mean|STD", colnames(completeResults))]

####
#### 3) Change activity numbers to descriptive label
####    Change the column to a factor and add the levels

activityLabels <- read.table("activity_labels.txt", header = FALSE)

limitedResults$Activity <- as.factor(limitedResults$Activity)
levels(limitedResults$Activity) <- activityLabels$V2

####
#### 4) Appropriately labels the data set with descriptive variable names
####    Follow rules of 'tidy' column names by removing. and capitalizing Mean and STD
####    This was done in step 1 :)
####

####
#### 5) From data set in step 4, creates a second, independenct tidy data set with the average of each 
####    variable for each activity and each subject
####

meanResults <- aggregate(limitedResults[,3:ncol(limitedResults)], by=list(subject=limitedResults$Subject, activity=limitedResults$Activity), mean)

####
#### write out files containing tidy data and tidy mean data

write.table(limitedResults, file="tidydata.txt", row.name=FALSE)
write.table(meanResults, file="meantidydata.txt", row.name=FALSE)



