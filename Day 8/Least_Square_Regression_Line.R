# Enter your code here. Read input from STDIN. Print output to STDOUT

data <- readLines("stdin", warn=FALSE)
input <- read.table(text = data, header = FALSE)

x <- input$V1
y <- input$V2

math_grade <- 80

linear_model <- lm(y ~ x)
coefficients <- linear_model$coefficients

expected_grade <- (math_grade * coefficients[2]) + coefficients[1]
cat(round(expected_grade, digits=3))