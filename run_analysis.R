library(plyr)
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# Merge the training and test sets to create one data set
x_all <- rbind(x_train, x_test)
y_all <- rbind(y_train, y_test)
subject_all <- rbind(subject_train, subject_test)

# Extract only the measurements on the mean and standard deviation for each measurement
features <- read.table("features.txt")
features_mean_std <- grep("-(mean|std)\\(\\)", features[, 2])
x_all <- x_all[, features_mean_std]

# Use descriptive activity names to name the activities in the data set
# Appropriately label the data set with descriptive variable names
names(x_all) <- features[features_mean_std, 2]
activities <- read.table("activity_labels.txt")
y_all[, 1] <- activities[y_all[, 1], 2]
names(y_all) <- "activity"
names(subject_all) <- "subject"
all_data <- cbind(x_all, y_all, subject_all)

# Create a second, independent tidy data set with the average of each variable for each activity and each subject
tidy_data <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(tidy_data, "tidy_data.txt", row.name=FALSE)