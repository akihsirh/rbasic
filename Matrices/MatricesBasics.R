#Matrix Creation 1
myMatrixData <- 1:30

myMatrix <- matrix(myMatrixData, 6, 5)
myMatrix
myMatrix <- matrix(myMatrixData, 6, 5, byrow = TRUE)
myMatrix

################# Naming Dimensions
#Have no row and column names
rownames(myMatrix) <- NULL
colnames(myMatrix) <- NULL
rownames(myMatrix)
colnames(myMatrix)

#Assign row and column names
colnames(myMatrix) <- c("V1","V2","V3","V4","V5")
rownames(myMatrix) <- c("H1","H2","H3","H4","H5","H6")
myMatrix

rownames(myMatrix)
colnames(myMatrix)

##Matrix Creation 2
#row bind
r1 <- 1:5
r2 <- 6:10

matrix1 <- rbind(r1,r2)
matrix1

#column bind
c1 <- 1:5
c2 <- 6:10

matrix2 <- cbind(c1,c2)
matrix2

#All elements in a matrix must be of the same type
r3 <- 1:3
r4 <- c("Ek","Do","Teen")

matrix3 <- rbind(r3,r4)
matrix3

#Accessing elements
myMatrix[2,3]
myMatrix["H2","V3"]
myMatrix[2,"V3"]
myMatrix["H2",3]

#Naming vectors
v1 <- 1:3
names(v1)

names(v1) <- c("One","Two","Three")
v1
names(v1)

v1[1]
v1["Two"]
names(v1) <- NULL
names(v1)