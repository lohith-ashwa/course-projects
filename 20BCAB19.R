#to check the directory
getwd()
#to change the directory IMP: Use double quotes
setwd("C:\Users\Lohith\Documents")
#creating variable
Computer_Data=read.csv("Computer_Data.csv")
#to view the data set
View(Computer_Data)
#to check no. of rows
nrow(Computer_Data)
#to check no. of columns
ncol(Computer_Data)
#to check the variable names
names(Computer_Data)
#to check the dimension
dim(Computer_Data)
#extract element in 7th row and 3rd column
Computer_Data[7,3]
#extract elements from 7th row to 10th row of 3rd column
Computer_Data[7:10,3]
#will be considered as a COLUMN and all rows will be printed
Computer_Data[3:7]
#will be considered as a COLUMN and all rows will be printed
Computer_Data[,3:7]
#will be considered as a ROWS and all columns will be printed
Computer_Data[3:7,]
#extract data from non continous rows (c stands for combine)
Computer_Data[c(11,15,20,50),]
#extract data from non continous rows (c stands for combine)
Computer_Data[c(11,15,20,50),c(5,9)]
#to exclude certain rows or columsn use "-" infront of "c"
Computer_Data[,-c(5,9)]
#subset to use filtered data that matches with given condition 
data1=subset(Computer_Data,price>4000)
View(data1)
#to check for two or more conditions 
data2=subset(Computer_Data,price>4000 & premium=="yes")
View(data2)
#*data types 
#*1. Vector (1 dimensional) (only numeric)
#*2. Matrix (2 dimensional)
#*3. List (1 dimensional) ( 1 dimensional but both numeric and char)
#*4. Data Frame (heterogeneous data)
#* MATRIX
#* By default it gets filled in column. Format for a matrix is (data,no. of rows, no.of columns)
matrix(1:12,3,4)
#using byrow function to add in rows as well as filling non continuous data using combine function
matrix(c(1,3,5,7,9,11,13,15,17,19,21,23),3,4, byrow=TRUE)
#*LISTS
list(5,"MSD",39)
#*DATA FRAME
df1=data.frame((S.No=1:6), Name=c("KLR","SD","VK","RP","MSD","HB"), Age=c(20,30,25,56,33,28))
View(df1)
vec1=c(2,4,6)
vec2=c("KLR","SD","VK")
vec3=c(23,30,30)
list(vec1,vec2,vec3)
df2=data.frame(vec1,vec2,vec3)
#creating a new column. using a previously non existent column name creates a new one
Computer_Data$newcol=0
#Computer_Data$newcol=""   use this to create a plain new column
Computer_Data$newcol=Computer_Data$price/Computer_Data$speed
# newcol values becomes 1 if the price is greater than 4000 else it becomes 0
Computer_Data$newcol=ifelse(Computer_Data$price>4000,1,0)
#Computer_Data$newcol=ifelse(Computer_Data$price>4000,"YES","NO")
#If outliers are there then use median else use mean
#finding mean
mean(Computer_Data$price)
#finding median
median(Computer_Data$price)
install.packages("dplyr")
#to add dplyr package either go to next window and select it or do the following
library("dplyr")
install.packages("ggplot2")
library("ggplot2")
#iris is a default dataset
View(iris)
#to extract only two columns and create a new dataset with that
dat1=select(iris,Sepal.Length,Species)
View(dat1)
#similar to above but using 3 by excluding 2 columns
dat2=select(iris,-Sepal.Length,-Species)
View(dat2)
dat3=filter(iris,Sepal.Length>7)
View(dat3)