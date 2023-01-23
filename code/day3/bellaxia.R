# comment

# make variable
x <- 4
my.variable <- 5
new_variable <- 9 + 1
L3 <- LETTERS[1:3]

# list
my.list <- c(3, 6, 25)
x <- c(0:10, 50)
x[3] # R counting starts at the index 1

# functions
mean(my.list)
char <- sample(L3, 10, replace = TRUE)

# function documentation
?mean
?sample
help(t.test) # both work the same way

# data frames
df <- data.frame(x=1, y=1:10)
d <- data.frame(x=1, y=1:10, char = char)
