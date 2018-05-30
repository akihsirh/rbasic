#Playing with loops

#While loop
counter <- 1
while(counter < 12){
  print(paste("This is the counter value:", counter))
  counter <- counter + 2
}

#for loop and the 1st encounter of a vector
for(i in 1:5){
  print("Too many hellos")
}

#if loop, if else if loop, 
#Function that generates numbers acc to normal dist
#Use that function to generate a single number
x <- rnorm(1)

rm(answer)
if(x > 1){
  answer <- "Greater than 1"
}else{
  answer<- "Less than one"
}

rm(answer)
if(x > 1){
  answer <- "Greater than 1"
}else{
  if(x >= -1){
    answer<- "Between 1 and -1"
  }else{
    answer <- "Less than -1"
  }
  
}

rm(answer)
if(x > 1){
  answer <- "Greater than 1"
}else if(x >= -1){
  answer<- "Between 1 and -1"
}else{
  answer <- "Less than -1"
}
