#logistic regression
getwd()
setwd("C:/Users/Lohith/Documents")
titanic=read.csv("titanic.csv",na.strings = "")

#chisq test-categorial
chisq.test(titanic$Pclass,titanic$Survived)
chisq.test(titanic$Sex,titanic$Survived)
chisq.test(titanic$Embarked,titanic$Survived)

#dplyr
#anova-categorical and continous
cnc=read.csv("titanic.csv")
cnc=select(cnc,Survived,Age,Parch,Fare)
anov=aov(Survived~(Age),data=cnc)
summary(anov)

titanic=titanic[-c(1,4,9,11)]
sum(is.na(titanic$Age))
titanic$Age[is.na(titanic$Age)]=mean(titanic$Age,na.rm=TRUE)
titanic$Embarked[is.na(titanic$Embarked)]="S"

#caTools
sample=sample.split(titanic$Survived,SplitRatio=0.80)
training=subset(titanic,sample==TRUE)
test=subset(titanic,sample==FALSE)
model=glm(Survived~.,data=training)
summary(model)
test$predicted_probability=predict(model,test)
test$predicted_op=ifelse(test$predicted_probability>0.50,1,0)
table(test$Survived,test$predicted_op)
help("table")
#ConfusionMatrix(test$Survived,testset$predicted_probability)
#recall=(TP/TP)+FN
#specificity[to find true negative rate]= (TN/FP)+TN
#Precision=(TP/TP)+FP
#F1score=(2*recall*precision)/(recall+precision)
#accuracy of prediction of output variables=(TP+TN)/(TP+TN+FP+FN)