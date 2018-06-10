### implemented using the script and data from the amazing team at www.superdatascience.com
#execute the s4-BasketballData.R script before running the below commands


sampleFuntion <- function(data,rows=1:10){
  plotData <- data[rows, , drop=F]
  matplot(t(plotData), type = "b", pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = 0.001, legend = Players[rows], col = c(1:4,6) ,pch = 15:18, horiz = F )
  
}

sampleFuntion(Games,4)
sampleFuntion(Games)
