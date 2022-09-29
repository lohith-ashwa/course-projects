setwd("C:/Users/Lohith/Documents")
lungcap=read.csv("LungCapData.csv")
View(lungcap)
# H0: mu=8
# H1: mu<8
# It is a one sided 95% confidence interval for mu
t.test(lungcap$LungCap,mu=8,alt="less",conf=0.95)









# H0: mean lung capacity of smokers = mean lung capacity of non smokers
# H1: the difference in mean != 0
# assuming non equal variances 
t.test(lungcap$LungCap~lungcap$Smoke,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)









