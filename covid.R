getwd()
setwd("C:/Users/Lohith/Documents")
mydata=read.csv("WHO_data.csv")
View(mydata)
mydatamod=mydata[(mydata$Country=="India"),]
View(mydatamod)
plot(mydatamod$Cumulative_cases,mydatamod$Cumulative_deaths) #, xlab="Covid cases", ylab="Covid deaths", main="Cases vs. Deaths")




















cor(mydatamod$Cumulative_cases,mydatamod$Cumulative_deaths)
plot(mydatamod$New_cases~as.Date(mydatamod$ï..Date_reported))
plot(mydatamod$New_deaths~as.Date(mydatamod$ï..Date_reported))
