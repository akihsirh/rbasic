#Vector 
MyFirstVector <- c(3,45,56,732)
z<- seq(1,15)
z
#Accessing vector elements
MyFirstVector[1]
MyFirstVector[3]

#Accessing all elements except the one/one at n position
z[-9]
z[-20] #Eliminating an element out of index just displays the whole vector
z[20]  # Out of index access gives NA

#Differeny way of element access
MyFirstVector[1:3]
z[4:7]
z[c(8,11,12)]
z[c(-2,-5)]
z[-3:-6]
z[-1:1] #Error in z[-1:1] : only 0's may be mixed with negative subscripts
