cov=read.csv("20BCAB19_WHO_data.CSV")
covi=cov[(cov$Country=="India"),]
View(covi)
plot(mydatamod$Cumulative_cases,mydatamod$Cumulative_deaths, xlab="Covid cases", ylab="Covid deaths", main="Cases vs. Deaths", type="l")
plot(mydatamod$New_cases~as.Date(mydatamod$ï..Date_reported),xlab="Date",ylab="Cases",type="l")
