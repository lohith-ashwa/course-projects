# -*- coding: utf-8 -*-
"""
Created on Thu Oct 28 08:47:41 2021

@author: Lohith
"""

import pandas as pd
import numpy as np
import os
import seaborn as sns
import matplotlib.pyplot as plt

os.chdir("C:/Users/Lohith/Documents")
iris = pd.read_csv('Iris.csv')
print(iris.head())
print(iris.describe())
sns.countplot(x='Species', data = iris)
plt.show()
sns.scatterplot(x='SepalLengthCm',y='SepalWidthCm', hue='Species',data = iris)
plt.show()
sns.pairplot(iris.drop(['Id'],axis =1), hue= 'Species', height= 2,data=iris)
plt.show()
sns.heatmap(iris.corr(), data = iris)
plt.show()
x= iris.corr(method= 'pearson')
print(x)
sns.heatmap(iris.corr(method='pearson').drop(['Id'],axis=1).drop(['Id'],axis=0))
