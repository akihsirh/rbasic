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

coData <- ggplot(data = movieData, aes(x=CriticRating, y=AudienceRating,
                                      colour=Genre, size=BudgetMillions))

# Create a zoomed in version of the plot
#Add limits to the value of x axis
coData + geom_point() + xlim(60,100)

#Add limits to the value of y axis too 
coData + geom_point() + xlim(60,100) + ylim(50,100)

## However the above method removes data that doesnt fit the limits rather than
# actually zooming in
coData2 <- ggplot(data=movieData, aes(x=BudgetMillions))

coData2 + geom_histogram(binwidth = 10, aes(fill=Genre), colour='Black') +
  coord_cartesian(ylim=c(0,50))
coData + geom_histogram() + xlim(60,100) + ylim(50,100)

#Use facets and co-ordinates
sData <- ggplot(data = movieData, aes(x=CriticRating, y=AudienceRating,
                                      colour=Genre))

#add more data via geom_smooth
sData + geom_point(aes(size=BudgetMillions)) + 
  geom_smooth() + facet_grid(Genre~Year, scales="free") +
  coord_cartesian(ylim=c(0,100))
