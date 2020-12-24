# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
tickets_left <- as.numeric(T[1])
students <- as.numeric(T[2])
individual_mu <- as.numeric(T[3])
individual_sigma <- as.numeric(T[4])


sd = sqrt(students)*individual_sigma
mu = individual_mu*students



cat(round(pnorm(tickets_left, mu, sd), digits=4))