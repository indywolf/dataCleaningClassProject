# Getting and Cleaning Data Course Project Code Book

## Variables

Subject - Value from 1-30, this is the pariticipant identification code.
Activity - Value of the actual physical activity: [WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING].

*After the first 2 variables above the rest are named below.  After the list they will be described:*
                        
tBodyAccMeanX                      
tBodyAccMeanY                     
tBodyAccMeanZ                      
tBodyAccSTDX                       
tBodyAccSTDY                       
tBodyAccSTDZ                      
tGravityAccMeanX                   
tGravityAccMeanY                   
tGravityAccMeanZ                   
tGravityAccSTDX                   
tGravityAccSTDY                    
tGravityAccSTDZ                    
tBodyAccJerkMeanX                  
tBodyAccJerkMeanY                 
tBodyAccJerkMeanZ                  
tBodyAccJerkSTDX                   
tBodyAccJerkSTDY                   
tBodyAccJerkSTDZ                  
tBodyGyroMeanX                     
tBodyGyroMeanY                     
tBodyGyroMeanZ                     
tBodyGyroSTDX                     
tBodyGyroSTDY                      
tBodyGyroSTDZ                      
tBodyGyroJerkMeanX                 
tBodyGyroJerkMeanY                
tBodyGyroJerkMeanZ                 
tBodyGyroJerkSTDX                  
tBodyGyroJerkSTDY                  
tBodyGyroJerkSTDZ                 
fBodyAccMeanX                      
fBodyAccMeanY                      
fBodyAccMeanZ                      
fBodyAccSTDX                      
fBodyAccSTDY                       
fBodyAccSTDZ                       
fBodyAccJerkMeanX                  
fBodyAccJerkMeanY                 
fBodyAccJerkMeanZ                  
fBodyAccJerkSTDX                   
fBodyAccJerkSTDY                   
fBodyAccJerkSTDZ                  
fBodyGyroMeanX                     
fBodyGyroMeanY                     
fBodyGyroMeanZ                     
fBodyGyroSTDX                     
fBodyGyroSTDY                      
fBodyGyroSTDZ                      
angletBodyAccMean.gravity          
angletBodyAccJerkMean.gravityMean 
angletBodyGyroMean.gravityMean     
angletBodyGyroJerkMean.gravityMean 
angleX.gravityMean                 
angleY.gravityMean                
angleZ.gravityMean

## Description of measurements

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean