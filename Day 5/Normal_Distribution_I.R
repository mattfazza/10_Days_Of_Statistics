# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
mu <- as.numeric(T[[1]][1])
sigma <- as.numeric(T[[1]][2])
x <- as.numeric(T[2])
lower <- as.numeric(T[[3]][1])
upper <- as.numeric(T[[3]][2])

cat(formatC(pnorm(x, mu, sigma), format = "f", digits = 3), "\n")

cat(formatC(pnorm(upper, mu, sigma) - pnorm(lower, mu, sigma), format = "f", digits = 3))