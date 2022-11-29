# -*- coding: utf-8 -*-
"""
Created on Wed Nov 16 09:15:30 2022

@author: Lohith
"""

import pandas as pd
mydata=pd.read_csv("cancer patient data sets.csv")

x=mydata.drop(["index","Patient Id","Level"],axis=1)
y=mydata[["Level"]]
#y=pd.get_dummies(y)

from sklearn.model_selection import train_test_split
x_train,x_test,y_train, y_test = train_test_split(x, y,test_size=0.25,random_state=0)

from sklearn import svm
model = svm.SVC(kernel='linear')
model.fit(x_train,y_train)

y_pred=model.predict(x_test)
from sklearn.metrics import accuracy_score
a=accuracy_score(y_test,y_pred)
print(a*100)

mydata2=mydata
mydata2["Predicted"]=model.predict(x)
