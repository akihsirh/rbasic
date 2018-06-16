getwd()
setwd("C://Git//R Programming Exercises//rbasic//Advanced Visualization ggplot")
getwd()

movieData <- read.csv("Movie-Ratings.csv")
head(movieData, n= 3)

#change column names
colnames(movieData) <- c("Film", "Genre", "CriticRating", "AudienceRating", 
                         "BudgetMillions", "Year")
colnames(movieData)

#explore data
str(movieData)
summary(movieData)

#Convert year to a categorical variable/ factor so that we can use it to find trends
movieData$Year <- factor(movieData$Year)
str(movieData)
head(movieData)

#-------------------Visualize the data 
#aesthetics and geometry
library(ggplot2)

#Facets
fData <- ggplot(data = movieData, aes(x = BudgetMillions))
fData + geom_histogram(binwidth = 10, aes(fill= Genre), colour= "Black")

#Create a histogram for every genre within one chart 
fData + geom_histogram(binwidth = 10, aes(fill= Genre), colour= "Black") +
  facet_grid(Genre~., scales = "free")

#Apply facets to scatter plot
sData <- ggplot(data = movieData, aes(x=CriticRating, y=AudienceRating,
                                      colour=Genre))
#facets along x
sData + geom_point(size=3) + facet_grid(Genre~.,scales="free")

#facets along y
sData + geom_point(size=3) + facet_grid(.~Year)

#facets along x and y
sData + geom_point(size=3) + facet_grid(Genre~Year, scales="free")

#add more data via geom_smooth
sData + geom_point(aes(size=BudgetMillions)) + 
  geom_smooth() + facet_grid(Genre~Year, scales="free")
