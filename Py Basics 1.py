# -*- coding: utf-8 -*-
"""
Created on Wed Sep  7 07:26:41 2022

@author: SharwinA
"""

import os 
import pandas as pd

os.chdir('S:\LAB FILES\R LAB')
data = pd.read_csv('Computer_data.csv')
print(data.head())
print(data.tail())
print(data.columns)
print(data.isnull().sum())
print(data.describe())
print(data.shape)
data.rename(columns = {'Unnamed: 0': 'Sl.no'},inplace=True)
print(data)
print(data.dtypes)
print(data.nunique())
print(data.sample(5))
print(data.sample(frac=0.5))
data1 = data.drop(columns = 'speed')
print(data1)
print(data.describe(include ='object'))
gdata= data.groupby('price')['ram']
print(gdata)

print(data.query('ram>8'))
