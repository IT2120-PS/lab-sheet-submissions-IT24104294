setwd("D:/Other/University/LabSheet/2Y/1st_SEM/PS/Lab08")

data <- read.csv("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

samples <- c()
n <- c()

for(i in 1:25){
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, i)
}

colnames(samples) = n

samples


s.mean <- apply(samples, 2, mean)
s.cars <- apply(samples, 2, var)


sampleMean <- mean(s.mean)
sampleVars <- var(s.vars)
popVar<- var(Weight.kg.)

trueVar=popVar/5
trueVar
sampleVars

samples

sampleMean
s.mean
s.vars
