### SETUP ###
library(datasets)
library(viridisLite)

### DATA ###
data("iris")

getwd()

head(iris)
class(iris)

### PLOTING ###
### plot sepal characteristics ###
png('iris1.png', width = 520, height = 520)
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, cex = 0.7,
     bty = 'n',
     main = 'Sepal Characteristics', xlab = 'Sepal length (cm)',
     ylab = 'Sepal width (cm)')

## plot side by side ###
png('iris2.png', width = 600, height = 300)
par(mfrow = c(1, 2))
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, cex = 0.7,
     bty = 'n',
     main = 'Sepal Characteristics', xlab = 'Sepal length (cm)',
     ylab = 'Sepal width (cm)')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.7,
     bty = 'n',
     main = 'Petal Characteristics', xlab = 'Petal length (cm)',
     ylab = 'Petal width (cm)')

## species
head(iris$Species)
unique(iris$Species)

col.species.unique <- viridis::viridis(length(unique(iris$Species)))
# class(col.species.unique)
col.species <- col.species.unique[as.factor(iris$Species)]
# class(col.species)
table(iris$Species)
table(col.species)

png('iris3.png', width = 600, height = 300)
par(mfrow = c(1, 2))
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, cex = 0.7,
     bty = 'n', col = col.species,
     main = 'Sepal Characteristics', xlab = 'Sepal length (cm)',
     ylab = 'Sepal width (cm)')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.7,
     bty = 'n', col = col.species,
     main = 'Petal Characteristics', xlab = 'Petal length (cm)',
     ylab = 'Petal width (cm)')
## make legend
legend.lab <- unique(iris$Species)
legend.col <- unique(col.species)
legend(x=4,y=0.9, legend = legend.lab, col= legend.col, pch=16)

# check
par(mfrow = c(3, 1))
hist(iris$Petal.Length[iris$Species == 'versicolor'])
hist(iris$Petal.Length[iris$Species == 'setosa'])
hist(iris$Petal.Length[iris$Species == 'virginica'])


