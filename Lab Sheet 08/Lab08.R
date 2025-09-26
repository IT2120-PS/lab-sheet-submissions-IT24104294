setwd("C:/Users/it24104294/Desktop/Lab08")

data <- read.csv("Data - Lab 8.txt", header = TRUE)

fix(data)
attach(data)

popmean <- mean(Nicotine)
popVar <- var(Nicotine)

samples <- c()
n <- c()

# sample(Nicotine, 5, replace = TRUE)

for(i in 1:30){
  s <- sample(Nicotine, 5, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste("s", i))
}

colnames(samples)=n

s.mean <- apply(samples, 2, mean)
s.vars <- apply(samples, 2, var)

samplesMean <- mean(s.mean)
sampleVars <- var(s.vars)


samples


popmean
samplesMean

trueVar=popVar/5
trueVar
sampleVars
