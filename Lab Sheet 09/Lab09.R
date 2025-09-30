setwd("D:/Other/University/LabSheet/2Y/1st_SEM/PS/Lab09")

x <- c(3, 7, 11, 0, 7, 0, 4, 5, 6, 2)
t.test(x, mu = 3)


weights <- c(17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)
t.test(weights, mu = 25, alternative = "less")

res <- t.test(weights, mu = 25, alternative = "less")

res$statistic
res$p.value
res$conf.int

y <- rnorm(30, mean = 0.8, sd = 0.05)

t.test(y, mu = 10, alternative = "greater")
