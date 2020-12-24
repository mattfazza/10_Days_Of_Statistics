# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
s <- as.numeric(T[[2]])
f <- as.numeric(T[[3]])

# tab <- data.frame(value=c(1, 2, 3, 4, 5), freq=c(2, 1, 4, 2, 1))
vec <- rep(s, f)
vec <- sort(vec, decreasing=FALSE)
n <- length(vec)

cat(format(median(vec[(ceiling(n/2)+1):n]) - median(vec[1:(n/2)]), nsmall=1))