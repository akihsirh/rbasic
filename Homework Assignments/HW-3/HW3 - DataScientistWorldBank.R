#Set working directory
getwd()
setwd("C:\\Git\\R Programming Exercises\\rbasic\\Homework Assignments\\HW-3")
getwd()

#load library 
library(ggplot2)

#Import data
hwData <- read.csv("Section5-Homework-Data.csv")
head(hwData, n = 3)
str(hwData)
summary(hwData)

#Run another R script from within this script
source("Section5-Homework-Vectors.R")

#Gather data for 1960 
data_1960 <- hwData[hwData$Year == 1960,]
vector_1960 <- data.frame(Code = Country_Code, LE = Life_Expectancy_At_Birth_1960)
head(vector_1960)

combinedData_1960 <- merge(data_1960, vector_1960, 
                           by.x = "Country.Code", by.y = "Code")
head(combinedData_1960)

#Gather data for 2013
data_2013 <- hwData[hwData$Year == 2013,]
vector_2013 <- data.frame(Code = Country_Code, LE = Life_Expectancy_At_Birth_2013)
head(vector_2013)

combinedData_2013 <- merge(data_2013, vector_2013, 
                           by.x = "Country.Code", by.y = "Code")
head(combinedData_2013)

#Visualise data for both
qplot(data = combinedData_1960, x = Fertility.Rate, y = LE, 
      shape = I(19), color = Region, alpha = I(0.6), size = I(4)
      , main = "Fertility Rate vs Life Expectancy for 1960")

qplot(data = combinedData_2013, x = Fertility.Rate, y = LE, 
      shape = I(19), color = Region, alpha = I(0.6), size = I(4)
      , main = "Fertility Rate vs Life Expectancy for 2013")
