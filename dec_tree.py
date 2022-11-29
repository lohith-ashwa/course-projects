# -*- coding: utf-8 -*-
"""
Created on Tue Oct 11 11:18:15 2022

@author: Raisa
"""
#Decision tree
from sklearn.datasets import load_iris
import pandas as pd
import numpy as np

dataset= load_iris()

print(dataset.data)
print(dataset.target)

x =pd.DataFrame(dataset.data,columns=dataset.feature_names)
x

y=dataset.target
y

from sklearn.model_selection import train_test_split
x_train,x_test,y_train,y_test=train_test_split(x,y,test_size=0.25,random_state=0)
print(x_train.shape)
print(x_test.shape)

accuracy=[]
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score
import matplotlib.pyplot as pandas
model=DecisionTreeClassifier(max_depth=i,random_state=0)
model.fit(x_train,y_train)
pred=model.predict(x_test)
ArithmeticErrorscore=accuracy_score(y_test,pred)
accuracy.append(score)
    
plt.figure(figsize=(12,6))
plt.plot(range=(1,10),accuracy,color='red',linestyle ='dashed',marker='0',markerfacecolor ='blue', markersize =10)
plt.tittle('finding best max_depth')
plt.xlabel('pred')
plt.ylabel('score')

#training
from sklearn.tree import DecisionTreeClassifier
model=DecisionTreeClassifier()   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    