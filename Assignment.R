# Drop those column which column starts with "P"
comp=read.csv(Computer_Data)
dat1=select(comp,-starts_with("p"))
View(dat1)
# Write a R program to create 2 continuous variable columns and fill the records in those two columns from 1 to 50 sequentially and find the mean and median values of those two variables. 
df1=data.frame((S.No=1:50), (S.no1=51:100))
View(df1)
mean(df1$X.S.No...1.50.)
mean(df1$X.S.no1...51.100.)
median(df1$X.S.No...1.50.)
median((df1$X.S.no1...51.100.))
# Write a R program to create a list of random numbers.
list(1,4,5,8,9,10,20)
# Write a R program to create 8x8 matrix and fill the matrix by rows.
matrix(1:64,8,8, byrow=TRUE)
# Write a R program to create a simple bar plot of 5 subject marks.
df2=data.frame(Marks=c(80,90,45,69,96,75))
View(df2)          
barplot(df2$Marks)
