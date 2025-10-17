setwd("D:/Other/University/LabSheet/2Y/1st_SEM/PS/Lab10")

observed <- c(120, 95, 85, 100)
prob <- c(0.25, 0.25, 0.25, 0.25)


# H0 = customer choose snacks from vending machine equally. P = 0.25
# H1 = at least one of the probability is differ. P != 0.25

# d.f 3
chisq.test(x = observed, p = prob)

# reject the hypo if probability is less than 0.05
# Since we got P as 0.089 and it is greater than 0.05, we do not
# reject the null hypothesis at significant level 0.05 | 5%