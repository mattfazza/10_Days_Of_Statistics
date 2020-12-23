# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
params <- as.numeric(T[[1]])

p <- params[1] * 0.01
n <- params[2]
q <- 1.00 - p


binomial_distribution <- function(n, p, q, xi){
    combination <- (factorial(n)/(factorial(xi)*factorial(n-xi)))
    combination*(p^xi)*(q^(n-xi))
}

result1 = 0
result2 = 0

for(i in 0:2){
    result1 = result1 + binomial_distribution(n, p, q, i) 
}

for(i in 2:10){
    result2 = result2 + binomial_distribution(n, p, q, i) 
}

cat(formatC(result1, , format = "f", digits = 3), "\n")
cat(formatC(result2, , format = "f", digits = 3), "\n")