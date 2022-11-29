from sklearn.datasets import load_iris
# Reading the Iris.csv file
data = load_iris()
# Extracting Attributes / Features
X = data.data
# Extracting Target / Class Labels
y = data.target
# Import Library for splitting data
from sklearn.model_selection import train_test_split
# Creating Train and Test datasets
X_train, X_test, y_train, y_test = train_test_split(X,y, random_state = 50, test_size = 0.25)
# Creating Decision Tree Classifier
from sklearn.tree import DecisionTreeClassifier
clf = DecisionTreeClassifier()
clf.fit(X_train,y_train)
# Predict Accuracy Score
y_pred = clf.predict(X_test)
from sklearn.metrics import accuracy_score
atr=accuracy_score(y_train, y_pred=clf.predict(X_train))*100
att=accuracy_score(y_true = y_test, y_pred=y_pred)*100
print("Train data accuracy:",atr)
print("Test data accuracy:",att)
