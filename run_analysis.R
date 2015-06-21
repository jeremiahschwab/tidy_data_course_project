run_analysis <- function() {
  
  library("reshape2")
    
  ## Read train and test data 
  raw_train <- read.table("UCI HAR Dataset/train/X_train.txt", sep = "" , header = F)
  raw_test <- read.table("UCI HAR Dataset/test/X_test.txt", sep = "" , header = F)
  
  ## Merge data sets
  data_combined <- rbind(raw_train, raw_test)
  
  ## Read column identifiers
  raw_column_names <- read.table("UCI HAR Dataset/features.txt", sep = "" , header = F, col.names = c("number","column"))
  column_names <- raw_column_names["column"]
  
  ## Define column names of the combined data
  colnames(data_combined) <- unlist(column_names)
  
  ## Extract only the mean() and std() columns
  meandata <- data_combined[,grep("mean()",colnames(data_combined),fixed = TRUE)]
  stddata <- data_combined[,grep("std()",colnames(data_combined),fixed = TRUE)]
  
  extracted_data <- cbind(meandata,stddata)
  
  ## Make more descriptive column names
  names(extracted_data) <- sub("\\(", "", names(extracted_data))
  names(extracted_data) <- sub("\\)", "", names(extracted_data))
  names(extracted_data) <- sub("-", "", names(extracted_data))
  names(extracted_data) <- sub("mean", "Mean", names(extracted_data))
  names(extracted_data) <- sub("std", "STD", names(extracted_data))
  names(extracted_data) <- sub("^t", "Time", names(extracted_data))
  names(extracted_data) <- sub("^f", "Frequency", names(extracted_data))
  names(extracted_data) <- sub("Acc", "Acceleration", names(extracted_data))
  names(extracted_data) <- sub("Gyro", "Gyroscope", names(extracted_data))
  names(extracted_data) <- sub("Mag", "Magnitude", names(extracted_data))
  names(extracted_data) <- sub("BodyBody", "Body", names(extracted_data))
  
  ## Read row identifiers
  subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", sep = "" , header = F, col.names = "Subject")
  subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", sep = "" , header = F, col.names = "Subject")
  activity_train <- read.table("UCI HAR Dataset/train/y_train.txt", sep = "" , header = F, col.names = "Activity")
  activity_test <- read.table("UCI HAR Dataset/test/y_test.txt", sep = "" , header = F, col.names = "Activity")

  ## Read Activity Identifiers
  activities <- read.table("UCI HAR Dataset/activity_labels.txt", sep = "" , header = F, col.names = c("number","activity"))
  activities$activity <- lapply(activities$activity, as.character)
  activities$activity <- unlist(activities$activity)
  
  ## Replace Activity numbers with Activities
  for (i in activities$number){
    j <- activities$activity[activities$number == i]
    activity_train$Activity[activity_train$Activity == i] <- j
    activity_test$Activity[activity_test$Activity == i] <- j
  }
  
  ## Merge row identifiers
  subject_combined <- rbind(subject_train, subject_test)
  activity_combined <- rbind(activity_train, activity_test)
  
  row_names <- cbind(subject_combined,activity_combined)
  
  ## Combine row identifiers with data  
  total_data <- cbind(row_names,extracted_data)
  
  ## Melt data by subject and activity
  
  melted_data <- melt(total_data, id=c("Subject","Activity"))
  
  ## Cast data to get the mean
  
  casted_data <- dcast(melted_data, Subject + Activity ~ variable, mean)
  
  return(casted_data)
  
}
