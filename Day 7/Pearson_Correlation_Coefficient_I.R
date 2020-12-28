# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
n <- as.numeric(T[1])
x <- as.numeric(unlist(T[2]))
y <- as.numeric(unlist(T[3]))

x_mean <- mean(x)
y_mean <- mean(y)
x_sd <- sd(x)
y_sd <- sd(y)

cat(round(cor(x,y, method="spearman"), 3), "\n")