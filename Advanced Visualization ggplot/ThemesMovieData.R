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

library(ggplot2)

#~~~~~~~~~~~~~~~~~~~Themes
tData <- ggplot(data = movieData, aes(x = BudgetMillions))
histData <- tData + geom_histogram(binwidth = 10, aes(fill= Genre), colour= "Black")

#Axis Labels
histData + 
  xlab("Budget Axis") + 
  ylab("No. of movies") +
  ggtitle("Movie Budget Distribution by Genre") + 
  theme(axis.title.x = element_text(colour = "DarkGreen", size = 15),
        axis.title.y = element_text(colour = "DarkBlue", size = 15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10),
        legend.title = element_text(size=15),
        legend.text = element_text(size=10),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(colour = "Maroon", size = 20, family="Courier")
  )
