# -*- coding: utf-8 -*-
"""
Created on Tue Oct 18 19:23:05 2022

@author: Raisa
"""
from xgboost import XGBClassifier
import os
os.getcwd()
os.chdir('C:\\Users\\Lohith\\Documents')
import pandas as pd
mydata = pd.read_csv("Telecom_Data.csv")

print(mydata.dtypes)
print(mydata.describe(include=["object"]))



y=mydata[["churn"]]
mydata.columns
x=mydata.drop(["churn","phone number","state","international plan","voice mail plan", 'area code','number vmail messages',
       'total day minutes', 'total day calls', 'total day charge',
       'total eve minutes', 'total eve calls', 'total eve charge',
       'total night minutes', 'total night calls', 'total night charge',
       'total intl minutes', 'total intl calls', 'total intl charge','customer service calls'],axis=1)
x=pd.get_dummies(x)
from sklearn.model_selection import train_test_split
xtrain,xtest,ytrain,ytest=train_test_split(x,y,test_size=0.2,random_state=2)
model = XGBClassifier(x)
model.fit(xtrain,ytrain)
predicted_value=model.predict(xtest)
from sklearn.metrics import confusion_matrix
confusion_matrix(ytest,predicted_value)
from sklearn.metrics import classification_report
print(classification_report(ytest, predicted_value))
from sklearn.metrics import plot_confusion_matrix
plot_confusion_matrix(model, xtest, ytest)
