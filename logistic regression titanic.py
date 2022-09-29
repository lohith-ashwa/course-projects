import os
import pandas as pd

os.chdir("C:\\Users\\Lohith\\Documents")
titanic=pd.read_csv("titanic.csv")
print(titanic.dtypes)
finaldata=titanic.drop(["PassengerId","Pclass","Name","SibSp","Parch","Ticket","Fare","Cabin"],axis=1)
# !!! if axis =1 means column and axis =0 means row
# task: frequency of each category for embarked 
# task: check output without dummies 
# task: what sampling is used in our code
# task: find the labels for the confusion matrix 
# task: also find correlation b/w sex, age, embarked and survived
print(finaldata.isnull().sum())
print(finaldata.Age.median())
finaldata["Age"].fillna(finaldata["Age"].median(),inplace=True)
print(finaldata["Embarked"].value_counts()) # S is the mode so it will be used for replacing. # there are other functions as well
finaldata["Embarked"].fillna("S",inplace=True)
print(finaldata.dtypes)

y=finaldata[["Survived"]]
x=finaldata.drop(["Survived"],axis=1)

x=pd.get_dummies(x)
from sklearn.model_selection import train_test_split
xtrain, xtest, ytrain, ytest = train_test_split(x,y,test_size=0.3)
from sklearn.linear_model import LogisticRegression
lm=LogisticRegression()
lm.fit(xtrain,ytrain)
predicted_value=lm.predict(xtest)
from sklearn.metrics import confusion_matrix
print(confusion_matrix(ytest,predicted_value))




