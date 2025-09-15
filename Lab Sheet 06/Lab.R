setwd('D:/Other/University/LabSheet/2Y_1st_SEM/PS/Lab06')

dbinom(x = 40, size = 42, prob = 0.2)

pbinom(35, 44, 0.92, lower.tail = TRUE)

1-pbinom(37, 44, 0.92, lower.tail = TRUE)

pbinom(37, 44, 0.92, lower.tail = FALSE)


pbinom(42, 44, 0.92)-pbinom(39, 44, 0.92)


dpois(6, 5)
ppois(6, 5, lower.tail = FALSE)
