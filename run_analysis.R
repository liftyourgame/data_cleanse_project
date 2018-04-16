# Wk4 Assignment

library(dplyr)

# Readin feature names and activity names
features<-read.table(file="./data/UCI HAR Dataset/features.txt", sep=" ", col.names = c("FeatureId", "FeatureName"))
activity_labels<-read.table(file="./data/UCI HAR Dataset/activity_labels.txt", sep=" ", col.names = c("ActivityId", "ActivityName"))

# Read x,y and subject data
X_train<-read.table(file="./data/UCI HAR Dataset/train/X_train.txt", strip.white = TRUE, col.names = features$FeatureName)
X_test<-read.table(file="./data/UCI HAR Dataset/test/X_test.txt", strip.white = TRUE, col.names = features$FeatureName)

Y_train<-read.table(file="./data/UCI HAR Dataset/train/y_train.txt", strip.white = TRUE, col.names = "Label")
subject_train<-read.table(file="./data/UCI HAR Dataset/train/subject_train.txt", sep=" ", col.names = c("SubjectId"))

Y_test<-read.table(file="./data/UCI HAR Dataset/test/y_test.txt", strip.white = TRUE, col.names = "Label")
subject_test<-read.table(file="./data/UCI HAR Dataset/test/subject_test.txt", sep=" ", col.names = c("SubjectId"))


# Convert activity number columns into name based factors
Y_train$Activity<-factor(Y_train$Label, levels=activity_labels$ActivityId, activity_labels$ActivityName)
Y_test$Activity<-factor(Y_test$Label, levels=activity_labels$ActivityId, activity_labels$ActivityName)

# Combine X,Y and Subject columns into a data frame for train & test
XY_subject_train<-cbind(X_train, Y_train, subject_train)
XY_subject_test<-cbind(X_test, Y_test, subject_test)

# Combine training and test data
XY_subject_combined<-rbind(XY_subject_train, XY_subject_test)

# Extract just the Subject, Activity, Mean & Std Deviation columns
XY_mean_std <- XY_subject_combined[,c("SubjectId","Activity","tBodyAcc.mean...X","tBodyAcc.mean...Y", "tBodyAcc.mean...Z", "tBodyAcc.std...X", "tBodyAcc.std...Y", "tBodyAcc.std...Z", "tGravityAcc.mean...X", "tGravityAcc.mean...Y", "tGravityAcc.mean...Z", "tGravityAcc.std...X", "tGravityAcc.std...Y", "tGravityAcc.std...Z", "tBodyAccJerk.mean...X", "tBodyAccJerk.mean...Y", "tBodyAccJerk.mean...Z", "tBodyAccJerk.std...X", "tBodyAccJerk.std...Y", "tBodyAccJerk.std...Z", "tBodyGyro.mean...X", "tBodyGyro.mean...Y", "tBodyGyro.mean...Z", "tBodyGyro.std...X", "tBodyGyro.std...Y", "tBodyGyro.std...Z", "tBodyGyroJerk.mean...X", "tBodyGyroJerk.mean...Y", "tBodyGyroJerk.mean...Z", "tBodyGyroJerk.std...X", "tBodyGyroJerk.std...Y", "tBodyGyroJerk.std...Z", "tBodyAccMag.mean..", "tBodyAccMag.std..", "tGravityAccMag.mean..", "tGravityAccMag.std..", "tBodyAccJerkMag.mean..", "tBodyAccJerkMag.std..", "tBodyGyroMag.mean..", "tBodyGyroMag.std..", "tBodyGyroJerkMag.mean..", "tBodyGyroJerkMag.std..")]

# Group and compute means
output<-aggregate(XY_mean_std, by=list(XY_mean_std$SubjectId, XY_mean_std$Activity), FUN=mean)
output<-subset(output, select=-c(SubjectId, Activity ))
output<-rename(output, SubjectId=Group.1, Activity=Group.2)

write.table(output, file="./data/output.txt", row.names = FALSE)
