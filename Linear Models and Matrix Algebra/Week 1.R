library(UsingR)
data("father.son",package="UsingR")
#What is the mean son height?
mean(father.son$sheight)
#What is the meanson height for fathers who have a rounded height of 71"
mean(father.son$sheight[which(round(father.son$fheight)==71)])

#Matrix Notation #1
#What is the entry in row 25 column 3 of this matrix?
X = matrix(1:1000,100,10)
X[25,][3]
#Solve the system of equations, report c
#3a + 4b - 5c + d = 10
#2a + 2b + 2c - d = 5
#a -b + 5c - 5d = 7
#5a + d = 4
eq <- matrix(c(3,2,1,5,4,2,-1,0,-5,2,5,0,1,-1,-5,1), ncol=4)
ans <- c(10,5,7,4)
x <- solve(eq) %*% ans
x[3]
