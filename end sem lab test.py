# -*- coding: utf-8 -*-
"""
Created on Fri Mar 25 09:08:36 2022

@author: Lohith
"""

import numpy as np
import pandas as pd
import seaborn as sns
from sklearn import datasets
import matplotlib.pyplot as plt
from factor_analyzer.factor_analyzer import calculate_kmo
from scipy.cluster.hierarchy import dendrogram, linkage 
from sklearn.cluster import AgglomerativeClustering

data=datasets.load_wine()
wine = pd.DataFrame(data=data.data, columns=data.feature_names)
print(wine.head())
wine.info()

# 1. What is the shape of the data 
print(np.shape(wine))
# 178 records and 13 atrributes 

# 2. What descriptive statistics can you think of? Find them.
print(wine.describe())

# 3. Do a pairplot. Which variables show high correlation. 
sns.pairplot(height= 2,data=wine)
plt.show()
# Variables with correlation are
# A. flavanoids and total_phenols
# B. flavanoids and od280/od315_of_diluted_wines
# C. total_phenols and od280/od315_of_diluted_wines

# 4. Is this data approriate for factor analysis? Justify your answer.
kmo_all,kmo_model=calculate_kmo(wine)
print(kmo_model)
# KMO value is 0.7767 which makes it suitable for Factor Analysis but we cannot expect a good fit model.

# 5. Are there any outliers in your data set?
# Yes there are outliers in the dataset. It is visible throught the pair plot.
# Box plot can be used to confirm the same. 

# 6. Cluster your data into different classes of wine.
wine=np.array(wine)
# converting to array because dataframe doesn't work
Z = linkage(wine, method = "ward")
dendro = dendrogram(Z)
plt.title('Dendrogram')
plt.ylabel('Euclidean distance')
plt.show()
ac = AgglomerativeClustering(n_clusters=4, affinity="euclidean", linkage="ward")
labels = ac.fit_predict(wine)
plt.figure(figsize = (8,5))
plt.scatter(wine[labels == 0,0] , wine[labels == 0,1], c= 'red',label='Cluster 1')
plt.scatter(wine[labels == 1,0] , wine[labels == 1,1], c= 'blue',label='Cluster 2')
plt.scatter(wine[labels == 2,0] , wine[labels == 2,1], c= 'green',label='Cluster 3')
plt.scatter(wine[labels == 3,0] , wine[labels == 3,1], c= 'black',label='Cluster 4')
plt.show()