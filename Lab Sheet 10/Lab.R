setwd("D:/Other/University/LabSheet/2Y/1st_SEM/PS/Lab10")

observed <- c(55, 62, 43, 46, 50)
prob <- c(0.2, 0.2, 0.2, 0.2, 0.2)

chisq.test(x = observed, p = prob)


file_path <- 'http://www.sthda.com/sthda/RDoc/data/housetasks.txt'

housetasks <- read.delim(file_path, row.names = 1)
housetasks

chisq_house <- chisq.test(housetasks)
chisq_house
