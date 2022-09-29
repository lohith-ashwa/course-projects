getwd()
setwd("C:/Users/Lohith/Documents")
data1 = read.csv("Telecom_Data.csv")
View(data1)
# removing the variable "phone number" because 
# it is just a random 7 digit number and doesn't 
# have correlation with churn
data1 = data1 [-c(4)] 
data1$churn = as.factor(data1$churn)
library("caTools")
sample = sample.split(data1$churn,SplitRatio = 0.70)
train = subset (data1,sample==TRUE)
test = subset (data1,sample==FALSE)
library("randomForest")
model = randomForest(churn~.,data=train)
test$Predicted = predict(model,test)
# comparing the actual and predicted values
plot(test$churn,test$Predicted)
table(test$churn,test$Predicted)
varImpPlot(model)
# on an average, Accuracy = 0.9530	ACC = (TP + TN) / (P + N)
# hence the model is validated