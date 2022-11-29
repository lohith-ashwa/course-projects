import os
import pandas as pd

os.chdir("C:\\Users\\Lohith\\Documents")
telecom_data=pd.read_csv("Telecom_Data.csv")
y=telecom_data[["churn"]]
# NOTE: xgboost means extreme boost algorithm. interview question: diff between bagging and boosting 
x=telecom_data.drop('churn', axis=1)
x=pd.get_dummies(x)
from sklearn.model_selection import train_test_split
xtrain, xtest, ytrain, ytest, ytest=train_test_split(x,y,test_size=0.2)
from xgboost import XGBClassifier 