getwd()
insdata=read.csv("insurance.csv")
#install caTolls to perform linear regression 
# we are performing stratified sampling here
sample=sample.split(insdata$charges,SplitRatio = 0.70)
trainingset=subset(insdata,sample==TRUE)
testset=subset(insdata,sample==FALSE)
#lm stands for linear regression model
# if "~" is not used then only 1 row will be taken.
model=lm(charges~.,data=trainingset)
View(model)
# creating a new column called predicted charges
testset$predicted_charges=predict(model,testset)
cor(testset$charges,testset$predicted_charges)
# the more closer the cor value is to 1 the more accurate it is