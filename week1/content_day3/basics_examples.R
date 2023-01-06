# Samples of R programming basics

#variables
x <- 4
my.variable <- 5
new_variable <- 9 + 1
L3 <- LETTERS[1:3]

#lists
my.list <- c(3, 6, 25)
x <- c(0:10, 50)
x[3] #indexing start at 1

#functions
mean(my.list)
char <- sample(L3, 10, replace = TRUE)

#functions documentation
?mean
help(t.test)

#data frames
d <- data.frame(x = 1, y = 1:10)
d <- data.frame(x = 1, y = 1:10, char = char)
