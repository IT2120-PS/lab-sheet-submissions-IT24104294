setwd("D:/Other/University/LabSheet/2Y/1st_SEM/PS/Lab09")

baking_time <- rnorm(25, mean = 45, sd = 2)


# Test avg baking time is < 45 where rejection 0.05

res <- t.test(baking_time, mu = 45, alternative = "less")
res

# Probability - 0.3487
# we can't reject H0, since 0.05 < 0.3487
