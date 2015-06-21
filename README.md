# Tidy Data Project
Data used for this project was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on 6/19/15. The files were extracted directly into the working directory without altering any of the folders or files. For example, to open the README.txt that came in the zip file, you would navigate to "Working Directory/UCI HAR Dataset/README.txt"

### Instructions to Create Tidy Data

Using RStudio Version 0.98.1103

1. Install and load the reshape2 package.
2. Use read.table to read the UCI HAR Dataset/train/X_train.txt and UCI HAR Dataset/test/X_test.txt files into separate data frames. Set sep = "" and header = F.
3. Combine the data frames into a new data frame via rbind, using X_train as the first argument and X_test as the second.
4. Use read.table to read the UCI HAR Dataset/features.txt file into a data frames. Set sep = "", header = F, and col.names = c("number","column").
5. Create a new data frame pulling only the "column" portion of the features.txt file.
6. Use unlist on the features.txt data frame to assign the column names of the combined X_train and X_test data frame.
7. Use grep to extract only the columns containing "mean()" and "std()" into separate data frames.
8. Combine the data frames into a new data frame via cbind, using the mean() data frame as the first argument and the std() data frame as the second.
9. Create more descriptive column names by removing "()" and "-". Change "mean" to "Mean", "std" to "STD", "t" that starts at the beginning to "Time", "f" that starts at the beginning to "Frequency", "Acc" to "Acceleration", "Gyro" to "Gyroscrope", "Mag" to "Magnitude", and "BodyBody" to "Body".
10. Use read.table to read the UCI HAR Dataset/train/y_train.txt, UCI HAR Dataset/train/subject_train.txt, UCI HAR Dataset/test/y_test.txt, and UCI HAR Dataset/test/subject_test.txt files into separate data frames. Set sep = "" and header = F. For the subject files, set col.names = "Subject". For the y files, set col.names to "Activity".
11. Use read.table to read the UCI HAR Dataset/activity_labels.txt into a data frame. Set sep = "", header = F, and col.names = c("number","activity").
11. lapply as.character to the activity column to change it from factors to characters
12. Use unlist on the activity column
13. Use a for loop to replace the y_train and y_test data frames with the descriptive activities from the activity_labels.txt file
14. Merge the subject files via rbind using subject_train.txt data frame as the first argument and subject_test.txt data frame as the second. This creates a data frame that identifies the Subject of each row.
15. Merge the y files via rbind using y_train.txt data frame as the first argument and y_test.txt data frame as the second. This creates a data frame that identifies the Activity of each row.
16. Merge the subject and y data frames via cbind using the subject data frame as the first argument and y data frame as the second. This creates a data frame that identifies the Subject and Activity of each row.
17. Merge the data frame from the previous step with the combined X_train and X_test data frame via cbind using the row identifier data frame as the first argument and the combined X_train and X_test data frame as the second. This creates a data frame with all rows and columns identified.
18. Melt this data frame and set id = c("Subject","Activity").
19. dcast the melted data frame using the these arguments: Subject + Activity ~ variable, mean