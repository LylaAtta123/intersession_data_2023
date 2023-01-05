library(datasets)
data("iris")
head(iris)

png('viz_test.png')
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, bty = 'n',
     xlab = 'Sepal Length', ylab = 'Sepal Width', main = 'Sepal Lengths and Widths')
dev.off()