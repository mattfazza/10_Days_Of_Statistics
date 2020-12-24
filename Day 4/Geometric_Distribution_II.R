# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
num <- as.numeric(T[[1]][1])
den <- as.numeric(T[[1]][2])

prob = num/den
trials = 5

geometric_distribution <- function(n, p){
    ((1-p)^(n-1))*p
}

result <- 0
for(i in 1:trials){
    result <- result + geometric_distribution(i, prob)
}

cat(formatC(result, , format = "f", digits = 3), "\n")