# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
params <- as.numeric(T[[1]])

rBoy <- params[1]
rGirl <- params[2]


p = (rBoy/(rBoy + rGirl)) 
q =  (rGirl/(rBoy + rGirl))
n = 6


binomial_distribution <- function(n, p, q, xi){
    combination <- (factorial(n)/(factorial(xi)*factorial(n-xi)))
    combination*(p^xi)*(q^(n-xi))
}

result = 0

for(i in 3:n){
    result = result + binomial_distribution(n, p, q, i) 
}

cat(formatC(result, , format = "f", digits = 3))