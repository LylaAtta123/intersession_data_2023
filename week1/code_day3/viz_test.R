#### SETUP ####
## install packages
# install.packages('datasets')
# install.packages('viridis')

library(datasets)
library(viridis)

setwd('/Users/lylaatta/Documents/GitHub/intersession_data_2023/week1/code_day3')

#### DATA ####
data("iris")
head(iris)

#### PLOTTING ####

## plot sepal characteristics 
# png('viz_test.png')
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, bty = 'n',
     xlab = 'Sepal Length', ylab = 'Sepal Width', main = 'Sepal Lengths and Widths')
# dev.off()

## plot petal characteristics
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, bty = 'n',
     xlab = 'Petal Length', ylab = 'Petal Width', main = 'Petal Lengths and Widths')

## plot both side by side
par(mfrow = c(1,2))
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, bty = 'n',
     xlab = 'Sepal Length', ylab = 'Sepal Width', main = 'Sepal Lengths and Widths')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, bty = 'n',
     xlab = 'Petal Length', ylab = 'Petal Width', main = 'Petal Lengths and Widths')

## add colors indicating species
cols.species.unique <- viridis::viridis(length(unique(iris$Species)))
table(iris$Species)
cols.species <- cols.species.unique[as.factor(iris$Species)]
names(cols.species) <- rownames(iris)
head(cols.species)
table(cols.species)

par(mfrow = c(1,2))
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, bty = 'n', col = cols.species,
     xlab = 'Sepal Length', ylab = 'Sepal Width', main = 'Sepal Lengths and Widths')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, bty = 'n', col = cols.species,
     xlab = 'Petal Length', ylab = 'Petal Width', main = 'Petal Lengths and Widths')

## make legend
legend.labels <- unique(iris$Species)
legend.colors <- unique(cols.species)

# png('viz_iris_colors.png')
par(mfrow = c(1,2))
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, bty = 'n', col = cols.species,
     xlab = 'Sepal Length', ylab = 'Sepal Width', main = 'Sepal Lengths and Widths')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, bty = 'n', col = cols.species,
     xlab = 'Petal Length', ylab = 'Petal Width', main = 'Petal Lengths and Widths')
legend(x=4, y=0.75, legend = legend.labels, col = legend.colors, pch = 16, bty = 'n')
# dev.off()

### compare petal lengths 
# split data frame by species 
species <- unique(iris$Species) #setosa versicolor virginica
iris.setosa <- iris[iris$Species=='setosa',]
dim(iris.setosa)
iris.versicolor <- iris[iris$Species=='versicolor',]
dim(iris.versicolor)
iris.viriginica <- iris[iris$Species=='virginica',]
dim(iris.viriginica)

# combine petal lengths
petal.lengths <- cbind(iris.setosa$Petal.Length, iris.versicolor$Petal.Length, iris.viriginica$Petal.Length)
colnames(petal.lengths) <- species

# average petal length by species
petal.length.avg <- colMeans(petal.lengths)

## bar plot 
par(mfrow = c(1,1))
barplot(petal.length.avg, col = 'black', 
        xlab = 'Flower Species', ylab = 'Average Petal Length', main = 'Average Petal Lengths')


## box plot

par(mfrow = c(1,1))
boxplot(petal.lengths, #frame.plot = F,
        xlab = 'Flower Species', ylab = 'Petal Length', main = 'Comparing Petal Lengths between Flower Species')



