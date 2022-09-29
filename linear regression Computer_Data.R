getwd()
compdata=read.csv("Computer_Data.csv",na.strings = "")
cor(compdata$price,compdata$speed)
cor(compdata$price,compdata$hd)
# ram is categorical and price is continuous hence use anova and incase if it is categorical and categorical we have to use chisquare test
anov=aov(price~(ram),data = compdata)
# if the value below Pr(>F)>0.05 it is null hypothesis and there is no relation 
# if the value below Pr(>F)<0.05 it is alternate hypothesis and there is co relation and it can be considered
summary(anov)
anov=aov(price~(screen),data = compdata)
summary(anov)
anov=aov(price~(cd),data = compdata)
summary(anov)
# drop multi because 0.188>0.05
anov=aov(price~(multi),data = compdata)
summary(anov)
anov=aov(price~(premium),data = compdata)
summary(anov)
compdata=compdata[-c(1,8,9,10,11)]
boxplot(compdata$price)
#replacing the not available values with median. USE THIS BECAUSE OUTLIERS ARE THERE
# in this case there are no not available values hence the following statement is not required
# compdata$price[is.na(compdata$price)]=median(compdata$price,na.rm = TRUE)
sample=sample.split(compdata$price,SplitRatio = 0.70)
trainingset=subset(compdata,sample==TRUE)
testset=subset(compdata,sample==FALSE)
model=lm(price~.,data=trainingset)
testset$predicted_price=predict(model,testset)
cor(testset$price,testset$predicted_price)
# the more closer the cor value is to 1 the more accurate it is