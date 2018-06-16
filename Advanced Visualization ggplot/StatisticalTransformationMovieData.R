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

#geom_smooth helps pick out trends in data
stData <- ggplot(data = movieData, aes(x=CriticRating, y=AudienceRating,
                                       colour = Genre))
stData + geom_point() + geom_smooth(fill=NA)

#-----------------boxplots for audience rating
stData <- ggplot(data = movieData, aes(x=Genre, y=AudienceRating,
                                       colour=Genre))
stData + geom_boxplot(size=1.2)
stData + geom_boxplot(size=1.2) + geom_point()

#hack/tip
stData + geom_jitter() + geom_boxplot(size=1.2, alpha = 0.5) 

#-------------boxplots for critic rating
stCData <- ggplot(data = movieData, aes(x=Genre, y=CriticRating,
                                       colour=Genre))

stCData + geom_jitter() + geom_boxplot(size=1.2, alpha = 0.5) 

