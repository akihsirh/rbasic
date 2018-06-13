#Set working directory and load data
rm(stats)
getwd()

setwd("C:\\Git\\R Programming Exercises\\rbasic\\DataFrames")
getwd()

stats <- read.csv("DemographicData.csv")
stats

#------------------ visualising data
library(ggplot2)

qplot(data = stats, x= Internet.users, y = Birth.rate , size = I(3), 
      color = Income.Group)

#---------- creating data frames

myDataFrame <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, 
                          Regions_2012_Dataset)

colnames(myDataFrame) <- c("Countries", "Codes", "Region")
head(myDataFrame, n = 10)


#--------- create column names for dataframes in faster manner

myDataFrame <- data.frame(Country= Countries_2012_Dataset, Code= Codes_2012_Dataset, 
                          Region = Regions_2012_Dataset)

head(myDataFrame, n = 10)
summary(myDataFrame)

#----------- Merging dataframes
head(myDataFrame)
head(stats)

combinedData <- merge(stats, myDataFrame, by.x = "Country.Code", by.y = "Code")
head(combinedData)

#remove duplicate column 
combinedData$Country <- NULL
str(combinedData)
tail(combinedData, n = 4)

#---------- visualize using regions

qplot(data = combinedData, x= Internet.users, y = Birth.rate , size = I(3), 
      color = Region)

#Shapes the value range from 0 - 25
qplot(data = combinedData, x= Internet.users, y = Birth.rate , size = I(3), 
      color = Region, shape = I(24))

#Transparency - basically to see where data points cluster. Range - 0 to 1

qplot(data = combinedData, x= Internet.users, y = Birth.rate , size = I(3), 
      color = Region, shape = I(19), alpha = I(0.6))

# Title
qplot(data = combinedData, x= Internet.users, y = Birth.rate , size = I(3), 
      color = Region, shape = I(19), alpha = I(0.6), 
      main = "Birth rate vs Internet Users")

#shape By data

qplot(data = combinedData, x= Internet.users, y = Birth.rate , size = I(3), 
      color = Region, shape = Income.Group, alpha = I(0.6),
      main = "Birth rate vs Internet Users")
