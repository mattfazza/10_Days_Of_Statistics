# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
pounds <- as.numeric(T[1])
boxes <- as.numeric(T[2])
individual_mu <- as.numeric(T[3])
individual_sigma <- as.numeric(T[4])


sd = sqrt(boxes)*individual_sigma
mu = individual_mu*boxes



cat(round(pnorm(pounds, mu, sd), digits=4))