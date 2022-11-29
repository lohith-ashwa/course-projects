import os 
os.getcwd(); #get current working directory 
os.chdir("C:\\Users\\Lohith\\Documents") #!!! use two slashes
import pandas as pd
mydata=pd.read_csv("Computer_Data.csv")
print(mydata.head())
# in R head and tail shows 6 rows but in python is only 5 rows
print(mydata.tail())
# by default it is 5 but if we want to modify it we will pass a value inside the head or tail function 
print(mydata.tail(7))
#!!! row numberings in R start from 1 but from 0 in python
# to check column names 
print(mydata.columns)
# if you are not converting to data frame you will have to use print statement with df.head, df.tail or df.columns
# to check no of rows and columns 
print(mydata.shape)
# to get no of rows in a dataset
print(mydata.shape[0])
# to get no of columns in a dataset
print(mydata.shape[1])
# to know variable type 
print(mydata.dtypes)
# to check unique values 
print(mydata.hd.unique()) # based on hd
#select 5 rows randomly 
print(mydata.sample(n=5))
# to get 0.05% rows randomly
print(mydata.sample(frac=0.05))
newdata=mydata.sample(frac=0.05)
# removing column from dataset
data1=mydata.drop("speed",axis=1) #copying to new variable to not to disturb the original data
print(data1.columns)
# remove multiple columns 
data2=mydata.drop(["speed","hd","ram"],axis=1)
print(data2.columns)
# add new column
data2["newcol"]=2
print(data2.columns)
data2["col2"]=data2.price*data2.screen
print(data2.col2.head()) # just checking if it was created 
# to get statistical information of numerical values 
print(mydata.describe())
# to get statistical information of categorical values 
print(mydata.describe(include=["object"]))
# to get statistical information of both categorical and numerical values 
print(mydata.describe(include="all")) #!!! no square brackets
# to find mean
print(mydata.price.mean())
#!!! in we use $ to refer to a column but here we use .
# to find median
print(mydata.price.median())
# groupby operation
print(mydata.groupby("premium")["price"].min())
# work on groupby. google it.
# to filter the data
d3=mydata.query("price>4000")
print(d3.head())
