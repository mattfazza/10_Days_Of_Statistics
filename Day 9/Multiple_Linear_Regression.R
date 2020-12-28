# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- readLines("stdin", warn=FALSE)
input <- read.table(text = data, header = FALSE, fill=TRUE)

m <- input[1,1]
n <- input[1,2]

feature_set <- input[2:(n+1),]
q <- input[(1+n+1),1]
queries <- input[(1+n+1+1):(1+n+1+q),]

# some cleanup is necessary here
queries[is.na(queries)] <- 0
feature_set[is.na(feature_set)] <- 0
feature_set <- feature_set[,c(m+1,1:m)]
colnames(feature_set) <- paste("V", 1:(m+1), sep = "")
colnames(queries) <- paste("V", 2:(m+1), sep = "")

# The lines below are related to the model
fit <- lm(formula = V1 ~ ., data = feature_set)
# summary(fit)
# coef(fit)

# predicting
results <- round(predict(fit, queries), 2)

cat(results, sep="\n")