# WAC to build a square matrix
A=matrix(50:58,3,3)
View(A)
# WAC to extract all the elements of 2nd column
A[,2]
# WAC to extract element in 3rd row and 3rd column
A[3,3]
# WAC to extract diagonal elements of matrix A
diag(A)
# Create two 3x3 matrix and multiply and print the result
X=matrix(1:9,3,3)
Y=matrix(6:14,3,3)
X*Y
View(X*Y)
#create a data frame
stationery=data.frame(vec1=c(4,5,6),vec2=c("pen","pencil","box"),vec3=c(100,200,300))
View(stationery)
# WAC extract information from 1st and 2nd row of 2nd column
stationery[1:2,2]
# WAC to add a new row
s=rbind(stationery,data.frame(vec1=7,vec2="Eraser",vec3=400))
View(s)
# WAC to add a new column
w=cbind(s,data.frame(vec4=c(10,20,30,40)))
View(w)
# WAC to extract all elements for which vec3>200
g=subset(w,vec3>200)
View(g)
