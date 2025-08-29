setwd("C:/Users/it24104294/Desktop/Lab05")

data<-read.csv("Data.txt", header = TRUE, sep = ",")

fix(data)
attach(data)


names(data)<-c("x1", "x2")
attach(data)

hist(x2, main = "Histogram for number of shareholders")

histogram<-hist(x2, main="Histogram for number of shareholders",
                breaks = seq(130, 270, length = 8), right = FALSE)
?hist


breaks <- round(histogram$breaks)
freq = histogram$counts
mids = histogram$mids


classes<-c()

for(i in 1:length(breaks)-1){
  classes[i] <- paste0("{", breaks[i], ",", breaks[i+1], "}")
}


cbind(class = classes, frequency = freq)

lines(mids, freq)

plot(mids, freq, type = 'l', 
     main = "Frequency ploygon for shareholders", 
     xlab = "Shareholders", ylab = "Frequency", ylim = c(0, max(freq)))
cum.freq <- cumsum(freq)
cum.freq


new<-c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  }else{
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, new, type = 'l', 
     main = "Cumulative Frequency ploygon for shareholders", 
     xlab = "Shareholders", ylab = "Cumulative Frequency", 
     ylim = c(0, max(cum.freq)))
cbind(upper = breaks, CumFreq = new)

