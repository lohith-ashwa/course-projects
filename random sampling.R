getwd()
setwd("C:/Users/Lohith/Documents")
titanic=read.csv("titanic.csv",na.strings = "")
titanic=titanic[-c(1,4,9,11)]
titanic$Age[is.na(titanic$Age)]=mean(titanic$Age,na.rm = TRUE)
table(titanic$Embarked)
titanic$Embarked[is.na(titanic$Embarked)]="S"
 
#catools
library(caTools)
#sample=sample.split(titanic$Survived,SplitRatio = 0.70)
#training=subset(titanic,sample==TRUE)
#test=subset(titanic,sample==FALSE)
training=sample_frac(titanic,0.7)
test=sample_frac(titanic,0.3)
View(training)
View(test)
model=glm(Survived~.,data=training)
summary(model)
test$predicted_probability=predict(model,test)
test$predicted_op=ifelse(test$predicted_probability>0.50,1,0)
table(test$Survived,test$predicted_op)
help("table")
#ConfusionMatrix(test$Survived,testset$predicted_probability)

