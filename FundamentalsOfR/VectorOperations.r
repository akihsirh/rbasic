#Vector Arithmatics
sv1 <- seq(1,15)
sv2 <- seq(16,20)
  
#Vector Addition
svadd <- sv1 + sv2
svadd

svsub <- sv2 - sv1
svsub

svsub1 <- sv1 - sv2
svsub1

svmul <- sv1 * sv2
svmul

svdiv <- sv1 /sv2
svdiv

sv3 <- seq(1,30)
sv4 <- sv2 + sv3
sv4

sv5 <- seq(1,19)
sv6 <- sv5 + sv3 #longer object length is not a multiple of shorter object length
sv6              
#2  4  6  8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 21 23 25 27 29 31 33 35 37 39 41

x <- rnorm(5)
x

# ------------------------------- devectorized ways -----------------
# R specific programming loop 
for(i in x){
  print(i)
}

# programming generic loop
for(j in 1:5){
  print(x[j])
}

# ------------------------------- vectorized ways -----------------
N <- 100
r <- rnorm(N)
s <- rnorm(N)

#devectorized multiplication
t <- rep(NA,N)
for(i in 1:N){
  t[i] <- r[i] * s[i]
}

#vectorized multiplication
u <- r * s

#Use vectors as function input
repseq1 <- rep(5:6,times = 10)
repseq1

b <- sqrt(repseq1)
b

# vectorized operations are faster than devectorized in R
