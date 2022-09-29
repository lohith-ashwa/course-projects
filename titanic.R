getwd()
setwd("C:/Users/Lohith/Documents")
# to get NA in empty cells. only then R can work on that column
titanic=read.csv("titanic.csv",na.strings = "")
# data cleaning (EDA)
titanic=titanic[-c(1,4,7,8,9,10,11)]
boxplot(titanic$Age)
#replacing the not available values with mean 
titanic$Age[is.na(titanic$Age)]=mean(titanic$Age,na.rm = TRUE)
#replacing the not available values with median. USE THIS BECAUSE OUTLIERS ARE THERE
titanic$Age[is.na(titanic$Age)]=median(titanic$Age,na.rm = TRUE)
#finding mode because it is a categorical data
table(titanic$Embarked)
# replacing not available with the highest mode 
titanic$Embarked[is.na(titanic$Embarked)]="S"

