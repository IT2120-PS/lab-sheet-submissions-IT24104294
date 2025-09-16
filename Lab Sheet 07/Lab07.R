setwd('D:/Other/University/LabSheet/2Y_1st_SEM/PS/Lab07')

punif(10, min = 0, max = 30, lower.tail = TRUE)

1-punif(20, min = 0, max = 30, lower.tail = TRUE)
punif(20, min = 0, max = 30, lower.tail = FALSE)

pexp(3, rate = 0.5, lower.tail = TRUE)


1-pexp(4, rate = 0.5, lower.tail = TRUE)
pexp(4, rate = 0.5, lower.tail = FALSE)

pexp(4, rate = 0.5, lower.tail = TRUE)-pexp(2, 0.5, lower.tail = TRUE)


pnorm(37.6, mean = 36.8, sd = 0.4, lower.tail = FALSE)

pnorm(36.9, mean = 36.8, sd = 0.4, 
      lower.tail = TRUE)-pnorm(36.4, mean = 36.8, sd = 0.4, 
                               lower.tail = TRUE)

qnorm(p = 0.012, mean = 36.8, sd = 0.4, lower.tail = TRUE)
qnorm(p = 0.01, mean = 36.8, sd = 0.4, lower.tail = FALSE)

