getwd()
cc=read.csv("creditcard.csv")
cc=cc[-c(1)]
View(cc)
sample=sample.split(cc$Class,SplitRatio = 0.70)
training=subset(cc,sample==TRUE)
test=subset(cc,sample==FALSE)
model=glm(Class~.,data=training)
plot(model)
table(cc$Class)
 
