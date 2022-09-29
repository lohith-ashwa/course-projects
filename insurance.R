getwd()
setwd("C:/Users/Lohith/Documents")
insurance=read.csv("insurance.csv")
cor(insurance$charges,insurance$age)
#positive co relation hence we can include that column
inc=read.csv("insurance.csv")
anov=aov(charges~(sex),data = inc)
summary(anov)
