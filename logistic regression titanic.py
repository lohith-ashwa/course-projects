import os
import pandas as pd
os.chdir("C:\\Users\\Lohith\\Documents")
titanic=pd.read_csv("titanic.csv")
print(titanic.dtypes)
finaldata=titanic.drop(["PassengerId","Pclass","Name","SibSp","Parch","Ticket","Fare","Cabin"],axis=1)
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
from sklearn.metrics import classification_report
print(classification_report(ytest, predicted_value))
from sklearn.metrics import accuracy_score
a1 = accuracy_score(ytest, predicted_value)
print("Accuracy score : {:.2f}%".format(a1*100))
from sklearn.metrics import plot_confusion_matrix
plot_confusion_matrix(lm, xtest, ytest)

