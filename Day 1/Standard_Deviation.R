# Enter your code here. Read input from STDIN. Print output to STDOUT

f <- file("stdin")
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
n <- as.numeric(T[[1]])
s <- as.numeric(T[[2]])

mu <- sum(c(s))%/%n

variance <- sum(sapply(s, function(x) (x-mu)^2%/%n))

cat(sqrt(variance))


# could also be done with cat(sd(s))