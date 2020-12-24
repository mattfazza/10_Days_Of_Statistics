# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
sample_size <- as.numeric(T[1])
mu <- as.numeric(T[2])
sigma <- as.numeric(T[3])
zScore <- as.numeric(T[5])


margin_of_error <- zScore * sigma/sqrt(sample_size)


cat(round(mu - margin_of_error, digits=2), "\n")
cat(round(mu + margin_of_error, digits=2))