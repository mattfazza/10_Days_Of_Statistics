# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin")
on.exit(close(f))

#look into row.names for this
getmode<-function(v){
    frequencies <- sort(table(v),decreasing=TRUE) 
    as.integer(names(frequencies)[1]) "problem here is knowing the syntax to retrieve 
    first column or the first row when table is created from vector"
}


T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
howMany <- as.numeric(T[[1]])
numbers <- as.numeric(T[[2]])



cat(formatC(mean(numbers),digits=1,format="f"), fill = TRUE)
cat(formatC(median(numbers),digits=1,format="f"), fill = TRUE)
cat(getmode(numbers), fill = TRUE)