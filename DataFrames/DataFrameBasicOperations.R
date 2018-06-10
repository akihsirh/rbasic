#Set working directory and load data
rm(stats)
getwd()

setwd("C:\\Git\\R Programming Exercises\\rbasic\\DataFrames")
getwd()

stats <- read.csv("DemographicData.csv")
stats

#---------------------Basic data operations on data frames
# subsetting
stats[4:10,]
stats[c(7,99),]

stats[1,]
is.data.frame(stats[1,])
# in a dataframe if we extract one row we still have a dataframe

is.data.frame(stats[,1])
is.data.frame(stats[1,1])

# in a dataframe if we extract one column/element it will not return a dataframe
# However the returned value is not a vector either

#Preserving dataframe when extracting a column/element
is.data.frame(stats[,1, drop=F])
is.data.frame(stats[1,1, drop=F])

#multiply and add columns
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

#add a column to a dataframe
stats$NewColumn <- stats$Birth.rate + stats$Internet.users
str(stats)

stats$RandomThing <- 14:17
#Error replacement has 4 rows, data has 195 
stats$RandomThing <- 14:18 #repliacates 14 - 18 perfectly across 195 rows

#remove a column 
stats$RandomThing <- NULL
stats$NewColumn <- NULL

#---------------- filtering data frame
head(stats$Internet.users)

#Use a filter to filter out countries where internet users are greater than 2%
dffilter <- stats$Internet.users < 2
stats[dffilter,]

#Find where birth rate is greater than 50
stats[stats$Birth.rate > 40,] 

#Find where birth rate is greater than 50 and internet users less than 2%
stats[stats$Birth.rate > 40& dffilter ,] 

#Find countries falling in high income group
stats[stats$Income.Group == "High income",]

#Find info about Malta
stats[stats$Country.Name == "Malta",]
