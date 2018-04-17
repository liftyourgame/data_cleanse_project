# CodeBook
## Description of output.txt

The data this project is based on comes from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data was captured from subjects performing a number of activities while carrying their smart phone.

The features/columns of output.txt

The data is grouped by SubjectId and Activity with all other fields summarised as means.

|Feature|Description|
|-----|-----|
|	SubjectId	|	The subject - The preson observed	|
|	Activity	|	The activity undertaken: Eg: Walking	|
|	tBodyAcc.mean...X	|	The mean of the X coord of the body accelerator	|
|	tBodyAcc.mean...Y	|	The mean of the Y coord of the body accelerator	|
|	tBodyAcc.mean...Z	|	The mean of the Z coord of the body accelerator	|
|	tBodyAcc.std...X	|	The std deviation of the X coord of the body accelerator	|
|	tBodyAcc.std...Y	|	The std deviation of the Y coord of the body accelerator	|
|	tBodyAcc.std...Z	|	The std deviation of the Z coord of the body accelerator	|
|	tGravityAcc.mean...X	|	The mean of the X coord of the gravity accelerator	|
|	tGravityAcc.mean...Y	|	The mean of the Y coord of the gravity accelerator	|
|	tGravityAcc.mean...Z	|	The mean of the Z coord of the gravity accelerator	|
|	tGravityAcc.std...X	|	The std deviation of the X coord of the gravity accelerator	|
|	tGravityAcc.std...Y	|	The std deviation of the Y coord of the gravity accelerator	|
|	tGravityAcc.std...Z	|	The std deviation of the Z coord of the gravity accelerator	|
|	tBodyAccJerk.mean...X	|	The mean of the X coord of the body accelerator jerk	|
|	tBodyAccJerk.mean...Y	|	The mean of the Y coord of the body accelerator jerk	|
|	tBodyAccJerk.mean...Z	|	The mean of the Z coord of the body accelerator jerk	|
|	tBodyAccJerk.std...X	|	The std deviation of the X coord of the body accelerator jerk	|
|	tBodyAccJerk.std...Y	|	The std deviation of the Y coord of the body accelerator jerk	|
|	tBodyAccJerk.std...Z	|	The std deviation of the Z coord of the body accelerator jerk	|
|	tBodyGyro.mean...X	|	The mean of the X coord of the body gyro	|
|	tBodyGyro.mean...Y	|	The mean of the Y coord of the body gyro	|
|	tBodyGyro.mean...Z	|	The mean of the Z coord of the body gyro	|
|	tBodyGyro.std...X	|	The std deviation of the X coord of the body gyro	|
|	tBodyGyro.std...Y	|	The std deviation of the Y coord of the body gyro	|
|	tBodyGyro.std...Z	|	The std deviation of the Z coord of the body gyro	|
|	tBodyGyroJerk.mean...X	|	The mean of the X coord of the body gyro jerk	|
|	tBodyGyroJerk.mean...Y	|	The mean of the Y coord of the body gyro jerk	|
|	tBodyGyroJerk.mean...Z	|	The mean of the Z coord of the body gyro jerk	|
|	tBodyGyroJerk.std...X	|	The std deviation of the X coord of the body gyro jerk	|
|	tBodyGyroJerk.std...Y	|	The std deviation of the Y coord of the body gyro jerk	|
|	tBodyGyroJerk.std...Z	|	The std deviation of the Z coord of the body gyro jerk	|
|	tBodyAccMag.mean..	|	The mean of the Body Accelerator magneto	|
|	tBodyAccMag.std..	|	The std deviation of the Body Accelerator magneto	|
|	tGravityAccMag.mean..	|	The mean of the Gravity Accelerator magneto	|
|	tGravityAccMag.std..	|	The std deviation of the Gravity Accelerator magneto	|
|	tBodyAccJerkMag.mean..	|	The mean of the Body Accelerator Jerk magneto	|
|	tBodyAccJerkMag.std..	|	The std deviation of the Body Accelerator Jerk magneto	|
|	tBodyGyroMag.mean..	|	The mean of the Body Gyro magneto	|
|	tBodyGyroMag.std..	|	The std deviation of the Body Gyro magneto	|
|	tBodyGyroJerkMag.mean..	|	The mean of the Body Gyro Jerk magneto	|
|	tBodyGyroJerkMag.std..	|	The std deviation of the Body Gyro Jerk magneto	|

The f values (eg: fBodyBodyGyroJerkMag) are the result of a Fast Fourier Transform.
