#Vector 
MyFirstVector <- c(3,45,56,732)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

#Integer Vector
MyFirstVector <- c(3L,45L,732L)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

#Character Vector
CVec <- c("A","b","123")
CVec
is.numeric(CVec)
is.character(CVec)

#Vectors can only have data all of the same base types
S1Vec <- c("a","g",7)
S1Vec
is.numeric(S1Vec)
is.character(S1Vec)

#Vector 
MyFirstVector <- c(3,45,56,732)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

#Integer Vector
MyFirstVector <- c(3L,45L,732L)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

#Character Vector
CVec <- c("A","b","123")
CVec
is.numeric(CVec)
is.character(CVec)

#Vectors can only have data all of the same base types
S1Vec <- c("a","g",7)
S1Vec
is.numeric(S1Vec)
is.character(S1Vec)

#sequence function seq() -> like :
seq(1,15)
#similar to 1:15
1:15

#sequence gives more flexibility as compared to : via the step function
z<- seq(1,15,4)
z

z1 <- seq(20,35,6)
z1
#replicate function rep() -> repeats a number,character or vector n number of times
rep1 <- rep(6,21)
rep1

repc <- rep("A",35)
repc

repv <- rep(c(3,4),10)
repv


