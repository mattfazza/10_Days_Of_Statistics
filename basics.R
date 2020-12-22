# regular string printing in R
print("my_string")

my_string<-"from a variable"
print(my_string)

# variables types in R are defined by the type of object that was created for them
# logical
tf <- TRUE
print(tf)

# numeric
num <- 3.1415
print(num)

# integer
literal <- 2L
print(literal)
print(class(literal))

# complex
comp <- 2+3i
print(comp)
print(class(comp))

# character (this is a weird one. Everything in quotation marks is a character)
char <- "a"
print(char)
char <- "abc"
print(char)


# raw
rawLLO <- charToRaw("hello")
print(class(rawLLO))
print(rawLLO) # hex representation 



# Vectors are important.  With functions like c() you can combine elements into vectors
a <- "first letter"
b <- "second letter"
c <- "third letter"
abc <- c(a, b, c)
print(abc)
print(class(abc))

# The code below will fail to execute because a, b, and c have different data types than 23
# abc <- (a, b, c, 23)
# print(abc)

# If you wish to combine elements of different types, you can create a list with list()
list <- list(c(a, b, c), 23)
print(list)
print(class(list))

# In R you can also create matrices
identityMatrix <- matrix(c(1, 0, 0, 1), nrow=2, ncol=2, byrow=TRUE)
print(identityMatrix)

# Matrices are two dimensional but R support multiple dimensions with arrays
a <- array(c(1, 2), dim=c(3, 3, 2)) # array of two elements that are 3x3 matrices
print(a)

# Factors are vectors with distinct elements as as labels
book_genres <- c('fiction', 'drama', 'memoir', 'drama', 'fiction')
factor_book <- factor(book_genres)

print(factor_book)

# Data Frames are the "same" tabular objects you get from pandas.  In R you can create it from vectors
saddle_creek <- data.frame(
    band = c("Cursive", "Bright Eyes", "The Faint"),
    record = c("Domestica", "Fevers and Mirrors", "Blank-Wave Arcade Remixes"),
    year = c(2000, 2000, 2000)
)

print(saddle_creek)
