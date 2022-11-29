# -*- coding: utf-8 -*-
"""
Created on Wed Sep 14 07:06:31 2022

@author: SharwinA
"""

import os 
import pandas as pd
import matplotlib.pyplot as plt

os.chdir('C:/Users/Lohith/Documents')
data = pd.read_csv('titanic.csv')
print(data.head())
print(data.isnull().sum())
print(data.shape)

import seaborn as sns
sns.pairplot(data)

data = data.drop(data.columns[[0,2,3,6,7,8,9,10]], axis = 1)
print(data.columns)

data['Age'].fillna(data['Age'].median(), inplace = True)
print(data['Embarked'].value_counts())
data['Embarked'].fillna(data['Embarked'].mode()[0], inplace = True)

print(data.isnull().sum())


import statsmodels.api as sm
from statsmodels.formula.api import ols

anova = ols('Survived ~  Age', data = data).fit()
aov = sm.stats.anova_lm(anova, typ = 2)
print(aov)


x = data.iloc[:,1:4]
y = data.iloc[:,0:1]


x= pd.get_dummies(x)
print(x)
#Splitting the data into test and training
from sklearn.model_selection import train_test_split  
X_train, X_test, y_train, y_test = train_test_split(x, y, test_size=0.2, random_state=42)

from sklearn.linear_model import LogisticRegression  
model = LogisticRegression()  
model.fit(X_train, y_train)

y_pred = model.predict(X_test)   # X_test is input variable 
print(y_pred)

test = [[22.0,0,1,0,0,1],[38.0,1,0,1,0,0]]

print('Output',model.predict(test).astype(object))

from sklearn.metrics import accuracy_score
a1 = accuracy_score(y_test, y_pred)
print("Accuracy score : {:.2f}%".format(a1*100))


