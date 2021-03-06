
x <- c("a", "b", "c", "d", "e")

# extract nth and mth element from the vector 
x[c(1,5)]

###### subsetting matrices
# implemented using one of the scripts and data from the amazing team at www.superdatascience.com

#Seasons
Seasons <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Players
Players <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")

#Games 
KobeBryant_G <- c(80,77,82,82,73,82,58,78,6,35)
JoeJohnson_G <- c(82,57,82,79,76,72,60,72,79,80)
LeBronJames_G <- c(79,78,75,81,76,79,62,76,77,69)
CarmeloAnthony_G <- c(80,65,77,66,69,77,55,67,77,40)
DwightHoward_G <- c(82,82,82,79,82,78,54,76,71,41)
ChrisBosh_G <- c(70,69,67,77,70,77,57,74,79,44)
ChrisPaul_G <- c(78,64,80,78,45,80,60,70,62,82)
KevinDurant_G <- c(35,35,80,74,82,78,66,81,81,27)
DerrickRose_G <- c(40,40,40,81,78,81,39,0,10,51)
DwayneWade_G <- c(75,51,51,79,77,76,49,69,54,62)
#Matrix
Games <- rbind(KobeBryant_G, JoeJohnson_G, LeBronJames_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, ChrisPaul_G, KevinDurant_G, DerrickRose_G, DwayneWade_G)
rm(KobeBryant_G, JoeJohnson_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, LeBronJames_G, ChrisPaul_G, DerrickRose_G, DwayneWade_G, KevinDurant_G)
colnames(Games) <- Seasons
rownames(Games) <- Players

#Extract games of top 3 players from 2010 to 2014
Games[1:3,6:10]

#Extract data of the top and lowest paid player on our list 
Games[c(1,10),]

#Extract data of players for the year 2008 and 2009
Games[, c("2008","2009")]

#Sub set of a matrix may not always be a matrix
subsetG0 <- Games[1,]
subsetG0
is.matrix(subsetG)
is.vector(subsetG)

subsetG1 <- Games[,1]
subsetG1
is.matrix(subsetG1)
is.vector(subsetG1)

""" the above happens because R guesses that what we want in the last case is not
a one row matrix but a vector. In order to retrieve a vector in this case set drop 
value = F as below. Drop bascially deletes the dimensions of a matrix if its a single 
row or column"""

subsetG2 <- Games[1,,drop=F]
subsetG2
is.matrix(subsetG2)
is.vector(subsetG2)

subsetG3 <- Games[,1, drop=F]
subsetG3
is.matrix(subsetG3)
is.vector(subsetG3)

Games[1,5,drop=F]
