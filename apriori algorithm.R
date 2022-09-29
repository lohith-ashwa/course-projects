install.packages("arules")
install.packages("arulesViz")
install.packages("Matrix")
install.packages("shinythemes")
# after installing select (tick) all the packages
data("Groceries")
View(Groceries)
Groceries=as(Groceries,"matrix")
# in function name use small m and package name use capital M
View(Groceries)
patterns=apriori(Groceries,parameter=list(support=0.02,confidence=0.10))
ruleExplorer(patterns)
inspect(patterns)

