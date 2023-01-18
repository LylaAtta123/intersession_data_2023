#how to assign variables
x <- 4
my.variable <- 5
new_variable <- 9+1
L3 <- LETTERS[1:3]

#lists
my.list <- c(3,6,25)
x <- c(0:10, 50)
x[3]

#functions
mean (my.list)
char <- sample (L3, 10, replace = TRUE)

#documentation for functions
?mean
help (t.test)
#data frames
d <- data.frame (x = 1, y = 1:10)
d <- data.frame (x = 1, y = 1:10, char=char)
# Create the data frame.

emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(emp.data) 