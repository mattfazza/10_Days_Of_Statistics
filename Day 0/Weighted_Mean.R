# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
x <- as.numeric(T[[2]])
w <- as.numeric(T[[3]])

cat(formatC(weighted.mean(x, w),digits=1,format="f"))
