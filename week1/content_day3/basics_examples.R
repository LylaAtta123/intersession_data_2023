# Samples of R programming basics

#variables
x <- 4
my.variable <- 5
new_variable <- 9 + 1
L3 <- LETTERS[1:3]

#lists
my.list <- c(3, 6, 25)
x <- c(0:10, 50)

#functions
mean(my.list)
char <- sample(L3, 10, replace = TRUE)

#functions documentation
?mean

#data frames
d <- data.frame(x = 1, y = 1:10, char = char)
