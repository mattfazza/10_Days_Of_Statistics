f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
n <- as.numeric(T[[1]])
s <- as.numeric(T[[2]])
s <- sort(s, decreasing=FALSE)

cat(median(s[1:(n/2)]), "\n")
cat(median(s), "\n")
cat(median(s[(ceiling(n/2)+1):n]))

# can also be done using the quantiles function