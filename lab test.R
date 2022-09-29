getwd()
setwd("C:/Users/Lohith/Documents")
wt = read.csv("weatherAUS.csv")
View(wt)

sum(table(wt$Date))
# no missing values in date

sum(table(wt$Location))
# no missing values in location

sum(table(wt$MinTemp))
# there are missing values in mintemp
boxplot(wt$MinTemp)
# there are outliers hence using median to fill the missing values
wt$MinTemp[is.na(wt$MinTemp)]=median(wt$MinTemp,na.rm = TRUE)
sum(table(wt$MinTemp))
# missing values in mintemp are replaced with the median as there are outliers

sum(table(wt$MaxTemp))
# there are missing values in maxtemp
boxplot(wt$MaxTemp)
# there are outliers hence using median to fill the missing values
wt$MaxTemp[is.na(wt$MaxTemp)]=median(wt$MaxTemp,na.rm = TRUE)
sum(table(wt$MaxTemp))
# missing values in maxtemp are replaced with the median as there are outliers

sum(table(wt$Rainfall))
# there are missing values in rainfall
boxplot(wt$Rainfall)
# there are outliers hence using median to fill the missing values
wt$Rainfall[is.na(wt$Rainfall)]=median(wt$Rainfall,na.rm = TRUE)
sum(table(wt$Rainfall))
# missing values in rainfall are replaced with the median as there are outliers

sum(table(wt$Evaporation))
# there are missing values in evaporation
boxplot(wt$Evaporation)
# there are outliers hence using median to fill the missing values
wt$Evaporation[is.na(wt$Evaporation)]=median(wt$Evaporation,na.rm = TRUE)
sum(table(wt$Evaporation))
# missing values in evaporation are replaced with the median as there are outliers

sum(table(wt$Sunshine))
# there are missing values in sunshine
boxplot(wt$Sunshine)
# there are no outliers hence using mean to fill the missing values
wt$Sunshine[is.na(wt$Sunshine)]=mean(wt$Sunshine,na.rm = TRUE)
sum(table(wt$Sunshine))
# missing values in sunshine are replaced with the mean as there are no outliers

sum(table(wt$WindGustDir))
# there are missing values in windgustdir
table(wt$WindGustDir)
# "W" is the mode ( highest frequency)
wt$WindGustDir[is.na(wt$WindGustDir)]="W"
sum(table(wt$WindGustDir))
# missing values in windgustdir are replaced with the mode i.e., "W" 

sum(table(wt$WindGustSpeed))
# there are missing values in windgustspeed
boxplot(wt$WindGustSpeed)
# there are outliers hence using median to fill the missing values
wt$WindGustSpeed[is.na(wt$WindGustSpeed)]=median(wt$WindGustSpeed,na.rm = TRUE)
sum(table(wt$WindGustSpeed))
# missing values in windgustspeed are replaced with the median as there are outliers

sum(table(wt$WindDir9am))
# there are missing values in winddir9am
table(wt$WindDir9am)
# "N" is the mode ( highest frequency)
wt$WindDir9am[is.na(wt$WindDir9am)]="N"
sum(table(wt$WindDir9am))
# missing values in winddir9am are replaced with the mode i.e., "N" 

sum(table(wt$WindDir3pm))
# there are missing values in winddir3pm
table(wt$WindDir3pm)
# "SE" is the mode ( highest frequency)
wt$WindDir3pm[is.na(wt$WindDir3pm)]="SE"
sum(table(wt$WindDir3pm))
# missing values in winddir3pm are replaced with the mode i.e., "SE"

sum(table(wt$WindSpeed9am))
# there are missing values in WindSpeed9am
boxplot(wt$WindSpeed9am)
# there are outliers hence using median to fill the missing values
wt$WindSpeed9am[is.na(wt$WindSpeed9am)]=median(wt$WindSpeed9am,na.rm = TRUE)
sum(table(wt$WindSpeed9am))
# missing values in WindSpeed9am are replaced with the median as there are outliers

sum(table(wt$WindSpeed3pm))
# there are missing values in WindSpeed3pm
boxplot(wt$WindSpeed3pm)
# there are outliers hence using median to fill the missing values
wt$WindSpeed3pm[is.na(wt$WindSpeed3pm)]=median(wt$WindSpeed3pm,na.rm = TRUE)
sum(table(wt$WindSpeed3pm))
# missing values in WindSpeed3pm are replaced with the median as there are outliers

sum(table(wt$Humidity9am))
# there are missing values in humidity9am
boxplot(wt$Humidity9am)
# there are outliers hence using median to fill the missing values
wt$Humidity9am[is.na(wt$Humidity9am)]=median(wt$Humidity9am,na.rm = TRUE)
sum(table(wt$Humidity9am))
# missing values in humidity9am are replaced with the median as there are outliers

sum(table(wt$Humidity3pm))
# there are missing values in humidity9am
boxplot(wt$Humidity3pm)
# there are no outliers hence using mean to fill the missing values
wt$Humidity3pm[is.na(wt$Humidity3pm)]=mean(wt$Humidity3pm,na.rm = TRUE)
sum(table(wt$Humidity3pm))
# missing values in humidity3pm are replaced with the mean as there are no outliers

sum(table(wt$Pressure9am))
# there are missing values in presurre9am
boxplot(wt$Pressure9am)
# there are outliers hence using median to fill the missing values
wt$Pressure9am[is.na(wt$Pressure9am)]=median(wt$Pressure9am,na.rm = TRUE)
sum(table(wt$Pressure9am))
# missing values in Pressure9am are replaced with the mean as there are no outliers

sum(table(wt$Pressure3pm))
# there are missing values in presurre3pm
boxplot(wt$Pressure3pm)
# there are outliers hence using median to fill the missing values
wt$Pressure3pm[is.na(wt$Pressure3pm)]=median(wt$Pressure3pm,na.rm = TRUE)
sum(table(wt$Pressure3pm))
# missing values in Pressure3pm are replaced with the mean as there are no outliers

sum(table(wt$Cloud9am))
# there are missing values in Cloud9am
table(wt$Cloud9am)
# "7" is the mode ( highest frequency)
wt$Cloud9am[is.na(wt$Cloud9am)]=7
sum(table(wt$Cloud9am))
# missing values in Cloud9am are replaced with the mode i.e., "7"

sum(table(wt$Cloud3pm))
# there are missing values in Cloud3pm
table(wt$Cloud3pm)
# "7" is the mode ( highest frequency)
wt$Cloud3pm[is.na(wt$Cloud3pm)]=7
sum(table(wt$Cloud3pm))
# missing values in Cloud3pm are replaced with the mode i.e., "7"

sum(table(wt$Temp9am))
# there are misssing values in Temp9am
boxplot(wt$Temp9am)
# there are outliers hence using median to fill the missing values
wt$Temp9am[is.na(wt$Temp9am)]=median(wt$Temp9am,na.rm = TRUE)
sum(table(wt$Temp9am))
# missing values in Temp9am are replaced with the median as there are outliers

sum(table(wt$Temp3pm))
# there are misssing values in Temp3pm
boxplot(wt$Temp3pm)
# there are outliers hence using median to fill the missing values
wt$Temp3pm[is.na(wt$Temp3pm)]=median(wt$Temp3pm,na.rm = TRUE)
sum(table(wt$Temp3pm))
# missing values in Temp3pm are replaced with the median as there are outliers

sum(table(wt$RainToday))
# there are missing values in RainToday
table(wt$RainToday)
# "No" is the mode ( highest frequency)
wt$RainToday[is.na(wt$RainToday)]="No"
sum(table(wt$RainToday))
# missing values in RainToday are replaced with the mode i.e., "No"

sum(table(wt$RISK_MM))
# there are no misssing values in Temp3pm

sum(table(wt$RainTomorrow))
# there are no missing values in RainTomorrow

# assuming all the variables to be in correlation with "RainTomorrow"

wt$RainTomorrow = as.factor(wt$RainTomorrow)
library("caTools")
sample = sample.split(wt$RainTomorrow,SplitRatio = 0.70)
train = subset (wt,sample==TRUE)
test = subset (wt,sample==FALSE)
library("randomForest")
model = randomForest(RainTomorrow~.,data=train)
test$Predicted = predict(model,test)
View(test)
table(test$RainTomorrow,test$Predicted)
varImpPlot(model)
