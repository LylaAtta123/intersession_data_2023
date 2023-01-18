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
     xlim = c(4,8), ylim = c(1.5, 4.5),
     xlab = 'Sepal Length (cm)', ylab = 'Sepal Width (cm)', main = 'A')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, bty = 'n', col = cols.species,
     xlim = c(0.5, 7.5), ylim = c(0, 3), 
     xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)', main = 'B')
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
sepal.lengths <- cbind(iris.setosa$Sepal.Length, iris.versicolor$Sepal.Length, iris.viriginica$Sepal.Length)
colnames(sepal.lengths) <- species


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

png('iris_multi.png', width = 900, heigh = 900)
par(mfrow = c(2,2))
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, bty = 'n', col = cols.species,
     xlim = c(4,8), ylim = c(1.5, 4.5),
     xlab = 'Sepal Length (cm)', ylab = 'Sepal Width (cm)', main = 'A')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, bty = 'n', col = cols.species,
     xlim = c(0.5, 7.5), ylim = c(0, 3), 
     xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)', main = 'B')
legend(x=4, y=0.75, legend = legend.labels, col = legend.colors, pch = 16, bty = 'n')
boxplot(sepal.lengths, frame.plot = F, ylim = c(4,9.25),
        xlab = 'Flower Species', ylab = 'Petal Length', main = 'C')
points(x = c(1,3), y = c(8.25,8.25), type = 'l')
text(x = 2, y = 8.5, labels = '*', cex = 2)
points(x = c(2,3), y = c(8.75,8.75), type = 'l')
text(x = 2.5, y = 9, labels = '*', cex = 2)
points(x = c(1,2), y = c(7.25,7.25), type = 'l')
text(x = 1.5, y = 7.5, labels = '*', cex = 2)
boxplot(petal.lengths, frame.plot = F, ylim = c(0.5,8.5),
        xlab = 'Flower Species', ylab = 'Petal Length', main = 'D')
points(x = c(1,3), y = c(7.25,7.25), type = 'l')
text(x = 2, y = 7.75, labels = '*', cex = 2)
points(x = c(2,3), y = c(8.25,8.25), type = 'l')
text(x = 2.5, y = 8.75, labels = '*', cex = 2)
points(x = c(1,2), y = c(5.25,5.25), type = 'l')
text(x = 1.5, y = 5.75, labels = '*', cex = 2)
dev.off()

