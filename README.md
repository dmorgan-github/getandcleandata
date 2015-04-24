# Course Project
## Script
The script run_analysis.R should be executed from the same directory where the data is located.

    UCI HAR Dataset/
        run_analysis.R
        features.txt
	    test/
		    subject_test.txt
		    X_test.txt
		    y_test.txt
	    train/
		    subject_train.txt
		    X_train.txt
		    y_train.txt

The script does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

When the script is run it will place a variable named result in your enviroment.

## Data

The original dataset used for the script is the Human Activity Recognition Using Smartphones Dataset Version 1.0. The result dataset prepared by the script includes 180 observations and 66 features - a subset of the original data.

### Subjects

The subjects from the original dataset were 30 volunteer subjects ranging from 19 to 48 years of age. They are identified by numeric ids 1 to 30 in the "subject" column of the result dataset.

### Activities

The activities observed were:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

These can be found in the "activity" column of the result dataset.

### Features

The original measurements were recorded from the embedded accelerometers and gyroscopes in the smartphones worn by the subjects on their waists.

The 66 variables included in the result dataset include the averages of the readings for each subject for each activity. Only the features with mean and std in their names from the original dataset are included. The features can be divided into two main categories: time domain analysis and frequency domain analysis.

#### Time domain analysis
* TimeBodyAccMeanX
* TimeBodyAccMeanY
* TimeBodyAccMeanZ
* TimeBodyAccStdX
* TimeBodyAccStdY
* TimeBodyAccStdZ
* TimeGravityAccMeanX
* TimeGravityAccMeanY
* TimeGravityAccMeanZ
* TimeGravityAccStdX
* TimeGravityAccStdY
* TimeGravityAccStdZ
* TimeBodyAccJerkMeanX
* TimeBodyAccJerkMeanY
* TimeBodyAccJerkMeanZ
* TimeBodyAccJerkStdX
* TimeBodyAccJerkStdY
* TimeBodyAccJerkStdZ
* TimeBodyGyroMeanX
* TimeBodyGyroMeanY
* TimeBodyGyroMeanZ
* TimeBodyGyroStdX
* TimeBodyGyroStdY
* TimeBodyGyroStdZ
* TimeBodyGyroJerkMeanX
* TimeBodyGyroJerkMeanY
* TimeBodyGyroJerkMeanZ
* TimeBodyGyroJerkStdX
* TimeBodyGyroJerkStdY
* TimeBodyGyroJerkStdZ
* TimeBodyAccMagMean
* TimeBodyAccMagStd
* TimeGravityAccMagMean
* TimeGravityAccMagStd
* TimeBodyAccJerkMagMean
* TimeBodyAccJerkMagStd
* TimeBodyGyroMagMean
* TimeBodyGyroMagStd
* TimeBodyGyroJerkMagMean
* TimeBodyGyroJerkMagStd

#### Frequence domain analysis
* FreqBodyAccMeanX
* FreqBodyAccMeanY
* FreqBodyAccMeanZ
* FreqBodyAccStdX
* FreqBodyAccStdY
* FreqBodyAccStdZ
* FreqBodyAccJerkMeanX
* FreqBodyAccJerkMeanY
* FreqBodyAccJerkMeanZ
* FreqBodyAccJerkStdX
* FreqBodyAccJerkStdY
* FreqBodyAccJerkStdZ
* FreqBodyGyroMeanX
* FreqBodyGyroMeanY
* FreqBodyGyroMeanZ
* FreqBodyGyroStdX
* FreqBodyGyroStdY
* FreqBodyGyroStdZ
* FreqBodyAccMagMean
* FreqBodyAccMagStd
* FreqBodyBodyAccJerkMagMean
* FreqBodyBodyAccJerkMagStd
* FreqBodyBodyGyroMagMean
* FreqBodyBodyGyroMagStd
* FreqBodyBodyGyroJerkMagMean
* FreqBodyBodyGyroJerkMagStd
