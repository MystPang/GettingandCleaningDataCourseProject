#Merges the training and the test sets to create on data set
library(plyr)
X_Training <- read.table("UCI HAR Dataset/train/X_train.txt")
X_Testing <- read.table("UCI HAR Dataset/test/X_test.txt")
X <- rbind(X_Training, X_Testing)

Y_Training <- read.table("UCI HAR Dataset/train/Y_train.txt")
Y_Testing <- read.table("UCI HAR Dataset/test/Y_test.txt")
Y <- rbind(Y_Training, Y_Testing)

Subject_Training <- read.table("UCI HAR Dataset/train/subject_train.txt")
Subject_Testing <- read.table("UCI HAR Dataset/test/subject_test.txt")
Subject <- rbind(Subject_Training, Subject_Testing)

#Extracts only the measurement on the mean and standard deviation for each measurement

#Read Label
X_Header <- read.table("UCI HAR Dataset/features.txt")
X_HeaderX_Index <- grep("-mean\\(\\)|-std\\(\\)", X_Header$V2);
X_Header <- X_Header[X_Header_Index,]
X <- X[,X_Header$V1]

#Remove Parrenthesis from header and lower case
names(X) <- tolower(gsub("\\(|\\)", "", X_Header$V2))

#Uses descriptive  activity names to names the actiivites in the data sets

Y_Factor <- read.table("UCI HAR Dataset/activity_labels.txt")
Y$V1 <- as.factor(Y$V1)
levels(Y$V1) <- tolower(Y_Factor$V2)
names(Y) <- "activity"

names(S) = "subject"

#Merge S, Y, X Tables
merged <- cbind(S, Y, X)

#Appropriately lables the data aset wht descriptive variable name.
write.table(merged, "merged_cleared_data.txt", row.name=FALSE)

fncolmeans <- function(data){ colMeans(data[, -c(1,2)]) }
tidy <- ddply(merged, .(subject, activity), fncolmeans)

write.table(tidy, "average_on_subject_activity_data.txt", row.name=FALSE)

