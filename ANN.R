install.packages("neuralnet")
library(neuralnet)
install.packages("ROSE")
library(ROSE)
setwd("C:/Users/Lohith/Documents")
fcu=read.csv("fcu_data.csv")
fcu=scale(fcu_data)
View(fcu)
?neuralnet
fcu=as.data.frame(fcu)
sample=sample.split(fcu$Fcu_28,SplitRatio = 0.70)
trainingset=subset(fcu,sample==TRUE)
testset=subset(fcu,sample==FALSE)
nrow(trainingset)
nrow(testset)
install.packages("caret")
library(caret)
downSample(trainingset[,-c(10)],trainingset_[,10])
nn=neuralnet(Fcu_28~Cement..Kg.m3.+W.C..+CA..FA+CA..type+Silics.fume...of.Binder+Nano.Sio2...of.Binder+Nano.Particles..Diameter.nm.+Superplasticizer....+Type.of.Mixing,data=trainingset,
             hidden=12,err.fct="sse", 
             linear.output=TRUE,algorithm="backprop",
             act.fct="logistic",threshold = 0.01, 
             learningrate = 0.001, rep=1,stepmax=1e7)
plot(nn)
testset$predicted_fcu=predict(nn,testset)
cor(testset$Fcu_28,testset$predicted_fcu)
plot(testset$Fcu_28,testset$predicted_fcu)
abline(lm(testset$Fcu_28~testset$predicted_fcu),color="blue")

trainingset$predicted_fcu=predict(nn,trainingset)
cor(trainingset$Fcu_28,trainingset$predicted_fcu)
plot(trainingset$Fcu_28,trainingset$predicted_fcu)
abline(lm(trainingset$Fcu_28~trainingset$predicted_fcu),color="blue")
