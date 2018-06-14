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

ggplot(data = movieData, aes(x= CriticRating, y = AudienceRating)) + 
  geom_point()

#add colour
ggplot(data = movieData, aes(x= CriticRating, y = AudienceRating, color = Genre)) + 
  geom_point()

#add size
ggplot(data = movieData, aes(x= CriticRating, y = AudienceRating, 
                             color = Genre, size = BudgetMillions, 
                             alpha = 0.6 )) + 
  geom_point()

#Adding Layers
# the first ggplot statement creates an object and when we use a plus sign
# it means we are adding a layer

plot_Is_An_Object <- ggplot(data = movieData, aes(x= CriticRating, y = AudienceRating, 
                                                  color = Genre, size = BudgetMillions, 
                                                  alpha = 0.8 ))

# the above will be present as an object in the variable section of R studio
# Now add multiple layers to the object
plot_Is_An_Object + geom_point() + geom_line() 

#overriding aesthetics
plot_Is_An_Object + geom_point(aes(size=CriticRating, color = BudgetMillions))

#Overriding aesthetics -> x and y axis & changing labels

plot_Is_An_Object + geom_point(aes(x=BudgetMillions)) +
  xlab("Budget Millions")

#reduce line size
plot_Is_An_Object + geom_line(size=1) + geom_point()

#In the above case the we didnt add the aes bit to the geom_line layer
#This is because we are not mapping an aesthetic but setting it

#------------Mapping vs Setting
#Create a new object 
r <- ggplot(data = movieData, aes(x=CriticRating, y= AudienceRating))

#------- Mapping vs Setting --> Color
#Add colour via mapping
r + geom_point(aes(color=Genre))

#Add colour via setting
r + geom_point(color = "DarkGreen")

#Error --> r + geom_point(aes(color = "DarkGreen"))

#------- Mapping vs Setting --> Size
#Add size via mapping
r + geom_point(aes(size = BudgetMillions))

#Add size via setting
r + geom_point(size = 3)

#Error --> r + geom_point(aes(size = 3))

## when we use a setting value in aesthetic/mapping then R considers it as a categorical
# variable rather than just a physical setting such simple colour of data point or size
# based on simple values like red or 4
