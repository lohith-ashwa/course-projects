# -*- coding: utf-8 -*-
"""
Created on Tue Oct 11 11:13:57 2022

@author: Lohith
"""

from sklearn.datasets import load_iris
import pandas as pd
import numpy as np

dataset = load_iris()

print(dataset.data)
print(dataset.target)

print(dataset.data.shape)

X=pd.DataFrame(dataset.data, columns=dataset.feature_names)
X

Y=dataset.target
Y

from sklearn model selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X,Y,test_size=0.25, random_state=0)
print(X_train.shape)
print(X_test.shape)

accuracy = []
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score
import matplotlib.pyplot as plt

for i in range(1,10):
    model=DecisionTreeClassifier(max_depth=i,random_state=0)
    model.fit(X_train,y_train)
    pred=model.predict(X_test)
    score=accuracy_score(y_test,pred)
    accuracy.append(score)
    
plt.figure(figsize=(12,6))
plt.plot(range(1,10), accuracy, color='red',linestyle='dashed',marker='o',
         markerfacecolor='blue',markersize=10)
plt.title('Finding the best Max_Depth')
plt.xlabel('pred')
plt.ylabel('score')

"""### *Training*"""
