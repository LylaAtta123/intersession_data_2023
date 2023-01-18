# cmd-shift-C to group comment

### SETUP ###
# install.packages('datasets')
# install.packages('viridis')
library(datasets) #loads various datasets
library(viridis) #has cool color palettes

### DATA ###
data("iris") #load the iris dataset

class(iris) #previews the iris
head(iris)

# getwd()
# setwd("/Users/alanmao/Library/CloudStorage/OneDrive-JohnsHopkins/Intersession 2023/Data Analysis + Visualization/intersession_data_2023/code/day3")

### PLOTTING ###

## plot sepal characteristics
x <- iris$Sepal.Length
y <- iris$Sepal.Width
plot(x, y, pch = 16, cex = 0.7, bty = 'n',
     main = 'Sepal Characteristics', xlab = 'Sepal Length (cm)', ylab = 'Sepal Width (cm)')
#png('iris1.png', width = 520, height = 520)

#dev.off()

## plot petal characteristics
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.7, bty = 'n',
     main = 'Petal Characteristics', xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)')

## plot side by side
png('iris2.png', width = 600, height = 300)
par(mfrow = c(1, 2))
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, cex = 0.7, bty = 'n',
     main = 'Sepal Characteristics', xlab = 'Sepal Length (cm)', ylab = 'Sepal Width (cm)')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.7, bty = 'n',
     main = 'Petal Characteristics', xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)')
dev.off()

## species
head(iris$Species)
unique(iris$Species)

col.species.unique <- viridis::viridis(length(unique(iris$Species)))
cols.species <- col.species.unique[as.factor(iris$Species)]

table(iris$Species)
table(cols.species)

png('iris3.png', width = 900, height = 400)
par(mfrow = c(1, 2))
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, cex = 0.7, bty = 'n', col = cols.species,
     main = 'Sepal Characteristics', xlab = 'Sepal Length (cm)', ylab = 'Sepal Width (cm)')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.7, bty = 'n', col = cols.species,
     main = 'Petal Characteristics', xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)')

## make legend
legend.lab <- unique(iris$Species)
legend.col <- unique(cols.species)
legend(x=4, y=0.9, legend = legend.lab, col = legend.col, pch = 16, bty = 'n')
dev.off()


### hist
par(mfrow = c(3,1))
hist(iris$Petal.Length[iris$Species == 'setosa'])
hist(iris$Petal.Length[iris$Species == 'versicolor'])
hist(iris$Petal.Length[iris$Species == 'virginica'])




