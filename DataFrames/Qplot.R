#Set working directory and load data
rm(stats)
getwd()

setwd("C:\\Git\\R Programming Exercises\\rbasic\\DataFrames")
getwd()

stats <- read.csv("DemographicData.csv")
stats

#------------ playing with qplot
?qplot
library(ggplot2)
?qplot

qplot(data=stats, x=Internet.users )
qplot(data = stats, x= Income.Group, y= Birth.rate)
qplot(data = stats, x= Income.Group, y= Birth.rate, size = 3)
qplot(data = stats, x= Income.Group, y= Birth.rate, size = 10)
qplot(data = stats, x= Income.Group, y= Birth.rate, size = I(3))
qplot(data = stats, x= Income.Group, y= Birth.rate,
      color = I("blue"), geom = "boxplot")


