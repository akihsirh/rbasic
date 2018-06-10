#Select the file manually 
stats <- read.csv(file.choose())
stats

#Set working directory and load data
rm(stats)
getwd()

setwd("C:\\Git\\R Programming Exercises\\rbasic\\DataFrames")
getwd()

stats <- read.csv("DemographicData.csv")
stats

#-------------------------- Exploring data
# check no. of rows
nrow(stats)

#Check no. of columns
ncol(stats)

#Top and bottom 6 rows
head(stats)
tail(stats)

#Top and bottom nth rows
head(stats, n=15)
tail(stats, n=20)

#Summary of dataset
str(stats)
summary(stats)


#Interesting sidenote The fact that R has considered the country name and country code as factors and 
#these factors have no of levels = no of rows , means that we dont have duplicate 
#records in the Demograhic data set """

#-------------- Accessing the data in the data frame

stats[3,3]
stats[3, "Birth.rate"] # the number was used for row because in data frame rows 
#usually dont have a name

stats[,"Internet.users"]
stats$Income.Group #returns a vector of all the column values
stats$Internet.users[6] #extract the 6th row in column internet users

#find out levels of factor variables in dataset 
str(stats) # to find all factor variables

levels(stats$Income.Group) #finds the different levels of the dataframe factor variable

