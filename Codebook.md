#Code Book
This file describes the variables, the data, and any transformations or work that was performed to clean up the data.

##Raw data
In the x_test.txt and x_train.txt, features are unlabeled. In the y_test.txt and y_train.txt, there are activity labels. The test subjects are in the subject_test.txt and subject_train.txt.

##Working process
"Subject" and "Activity" are two identifiers for this project.

Find all the columns needed for creating the tidy dataset, use the rbind() function to merge two datasets. And finally we get all datasets for next steps.

Then, find mean and standard deviation for each measurement as the features. Use "activity" and "subject" as corrected column names.

Finally, we create a new dataset with all the average measures for each subject and activity type . The output file is called tidy_data.txt, which is also in this repository.

## Variables
`x_train`, `y_train`, and `subject_train` are from "train" folder. `x_test`, `y_test`,  and `subject_test` are from "test" folder.

`x_all`, `y_all` and `subject_all` are used for merging the datasets for next steps.

`features` and `activities` are the correct names for the associated datasets.

`all_data` combines `x_all`, `y_all` and `subject_all` in one dataset.

`tidy_data` is the data we need to create the new txt file.



