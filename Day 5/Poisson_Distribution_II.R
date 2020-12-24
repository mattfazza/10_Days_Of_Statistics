# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin") # "stdin" can be replaced by a text-based file 
on.exit(close(f))

T <- readLines(f, warn=FALSE)
T <- strsplit(T, " ")
xMean <- as.numeric(T[[1]][1])
yMean <- as.numeric(T[[1]][2])

if(FALSE){
"
Ca = 160 + 40X^2  where X is poisson(k, l)
then E(Ca)=E(160 + 40X^2) distributive property
        =E(160) + 40E(X^2)
        
Therefore: 
Var(X)  = E(X^2) - (E(X))^2        
 E(X^2) = Var(X) + (E(X))^2
        
And:
E(Ca)   = 160 + 40[Var(X) + (E(X))^2]
        = 160 + 40[lambda + lambda^2];
"   
}

costA <- function(x){
    160+40*(x + x^2)
}

costB <- function(y){
    128+40*(y + y^2)
}

cat(formatC(costA(xMean) , format = "f", digits = 3), "\n")
cat(formatC(costB(yMean) , format = "f", digits = 3), "\n")