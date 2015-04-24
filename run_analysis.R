#script requires dplyr
library(dplyr)

clean_name <- function(c) {
  col_name = c
  col_name = gsub("-", "", col_name)
  col_name = gsub("\\(\\)", "", col_name)
  col_name = gsub("std", "Std", col_name)
  col_name = gsub("mean", "Mean", col_name)
  if ( substr(col_name, 1,1) == "f") {
    col_name = paste("Freq", substr(col_name, 2, nchar(col_name)), sep="")
  } else {
    if (substr(col_name, 1,1) == "t") {
      col_name = paste("Time", substr(col_name, 2, nchar(col_name)), sep="") 
    }
  }
  return(col_name)
}

# activity labels
activity_labels <- c("Walking", "Walking Upstairs", "Walking Downstars", "Sitting", "Standing", "Laying")

# read the feature names
features <- read.table("features.txt", header=FALSE)  

# read the subject ids
subject_train <- read.table("train/subject_train.txt", header=FALSE)
subject_test <- read.table("test/subject_test.txt", header=FALSE)
subjects = rbind(subject_train, subject_test)
colnames(subjects) <- c("subject")

#read the observed activities
y_train <- read.table("train/y_train.txt", header=FALSE)
y_test <- read.table("test/y_test.txt", header=FALSE)
y = rbind(y_train, y_test)
colnames(y) <- c("activity")

# read in the measurements
train_x = read.table("train/X_train.txt",header=FALSE)
test_x = read.table("test/X_test.txt",header=FALSE)
x = rbind(train_x, test_x)
colnames(x) <- features$V2

# get the features where mean and std have been computed
# we are just using the columns with mean() and std() in their names
targetFeatures = features[grep("mean\\(|std\\(", features$V2), "V2"]
targetFeatures = as.character(targetFeatures)

# select the measurements for only the features we want
x = x[,targetFeatures]

# pretty up the column names
targetFeatures = unlist(lapply(targetFeatures, clean_name))
colnames(x) <- targetFeatures

# combine into one data.frame
x = cbind(subjects, y, x)

# set the activity labels
x$activity <- as.factor(x$activity)
levels(x$activity) <- activity_labels

# prepare the result dataset
grp = group_by(x, subject, activity)
result <- summarise_each(grp, funs(mean))


