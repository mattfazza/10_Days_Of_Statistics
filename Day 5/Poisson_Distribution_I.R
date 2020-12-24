# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
xMean <- as.numeric(T[[1]])
successCount <- as.numeric(T[[2]])

poisson <- function(k, lambda){
    e = 2.71828
    ((lambda^k)*(e^(-lambda)))/factorial(k)
}

cat(formatC(poisson(successCount, xMean) , format = "f", digits = 3), "\n")