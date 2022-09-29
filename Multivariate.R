comp=read.csv("Computer_Data.csv")
View(comp)
dat1=comp[,c(1,2,3,4)]
View(dat1)
cor(dat1$X,dat1$price,dat1$speed,dat1$hd)
dat2=select(comp,price,cd,premium)
View(dat2)
anov=aov(price~(premium+cd),data = dat2)
summary(anov)
