# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
mu <- as.numeric(T[[1]][1])
sigma <- as.numeric(T[[1]][2])
x <- as.numeric(T[2])
passing <- as.numeric(T[3])


cat(round(((1 - pnorm(x, mu, sigma))* 100), digits=2), "\n")
cat(round(((1 - pnorm(passing, mu, sigma))* 100), digits=2), "\n")
cat(round((pnorm(passing, mu, sigma) * 100), digits=2))