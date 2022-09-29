getwd()
mydata=read.csv("dplyr_practice.csv")
View(mydata)
#* Questions
#* 1. Select 10 rows randomly from mydata and assign to a1
#* 2. Select 10% of rows from mydata and assign to a2
#* 3. Remove duplicate rows based on index column and assign to a3
#* 4. Remove duplicate rows based on index column and year 2010 column and assign to a4
#* 5. Drop those columns from mydata whose name starts with "y" and assign to a5
#* 6. Select those columns that contain "i" in their name and assign to a6 
#* 7. Rename index column as mycolumn in mydata dataset and assign to a7
#* To perfom all this select dplyr package 
# 1. Select 10 rows randomly from mydata and assign to a1
a1=sample_n(mydata,10)
View(a1)
# 2. Select 10% of rows from mydata and assign to a2
a2=sample_frac(mydata,0.10)
View(a2)
# 3. Remove duplicate rows based on index column and assign to a3
a3=distinct(mydata,Index,.keep_all = TRUE)
# Note: Its case sensitive hence use exact column names
# Note: If false is used instead of true then only the repeating ones will stay and others will be removed 
View(a3)
# 4. Remove duplicate rows based on index column and year 2010 column and assign to a4
a4=distinct(mydata,Index,Y2010,.keep_all = TRUE)
View(a4)
# 5. Drop those columns from mydata whose name starts with "y" and assign to a5
a5=select(mydata,-starts_with("Y"))
View(a5)
# 6. Select those columns that contain "i" in their name and assign to a6
a6=select(mydata,starts_with("Y"))
View(a6)
# 7. Rename index column as mycolumn in mydata dataset and assign to a7
a7=rename(mydata,mycol=Index)
View(a7)
