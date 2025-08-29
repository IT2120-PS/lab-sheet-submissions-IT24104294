setwd("C:/Users/it24104294/Desktop/Lab05")

data <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
fix(data)
attach(data)

names(data) <- c("x1")
attach(data)

hist(x1, main="Histogram for Delivery Time")
histogram <- hist(x1, main="Histogram for Delivery Time", breaks = seq(20, 70), 
     right = TRUE)

breaks <- histogram$breaks
freq<-histogram$counts
mids<-histogram$mids
cum.freq <- cumsum(freq)

# There is a normal distribution in the dataset.
cum <- c()

for(i in 1:length(breaks)){
  if(i==1){
    cum[i] = 0
  }else{
    cum[i] = cum.freq[i-1]
  }
}
plot(breaks, cum, type = 'l', 
     main = "Cumulative Frequency ploygon for Delivey Time", 
     xlab = "Delivery Time", ylab = "Cumulative Frequency", 
     ylim = c(0, max(cum.freq)))
