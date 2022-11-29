# -*- coding: utf-8 -*-
"""
Created on Wed Sep  7 07:40:09 2022

@author: Raisa
"""
import os
os.getcwd()
os.chdir("C:/Users/Raisa/Documents/jerry(DS)/datasets")
import pandas as pd
mydata=pd.read_csv("Computer_Data.csv")
mydata.head()
mydata.head(3)
mydata.tail()
mydata.tail(7)

#to check column names
mydata.columns

#to check no of rows and coulmns
mydata.shape

#to get no of rows in dataset
mydata.shape[0]

#to get no of columns in dataset
mydata.shape[1]

#to know variable type
mydata.dtypes

#to check unique values in hd coulmn
mydata.hd.unique()

#to check no of unique values
mydata.hd.nunique()

#select 5 rows randomly
mydata.sample(n=5)

#to get 0.05% of rows randomly
mydata.sample(frac=0.05)
newdata= mydata.sample(frac=0.05)

#removng columns from dataset
data1=mydata.drop("speed",axis=1)

#removw multiple columns
data2=mydata.drop(["speed","hd","ram"],axis=1)

#add new column
data2["newcol"]=2
data2["col2"]=data2.price*data2.screen

#to get statistical info of numeric values
mydata.describe()
summary=mydata.describe()

#to get statistical info of categorical variables
mydata.describe(include=["object"])

#to get statistical info of categorical and numeric variables
mydata.describe(include="all")

#to find mean and median
mydata.price.mean()
mydata.price.median()

#groupby operation
mydata.groupby("premium")["price"].max()

#to filter data
d3=mydata.query("price>4000")
