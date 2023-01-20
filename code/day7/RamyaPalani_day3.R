# this is a comment 

## setup ##
install.packages('viridis')
library(datasets)
library(viridis)

getwd()
setwd('/Users/Ramya/newGitFolder/intersession_data_2023/week1')

## data ##
data("iris")

head(iris)


## plotting ##
# you can also do pch = '.' to just get dots
# cex values above 1 will make the dots bigger, a value below 1 will make it smaller than normal
# bty characteristic is to remove the border box

## plot sepal characteristics ##
#png('iris1.png', width = 520, height = 520)
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, cex = 0.7, bty = 'n',
     main = 'Sepal Characteristics', xlab = 'Sepal Length (cm)', ylab = 'Sepal Width (cm)')
#dev.off()
## plot petal characteristics ##
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.7, bty = 'n',
     main = 'Petal Characteristics', xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)')

## species
head(iris$Species)
unique(iris$Species)
#basically here you pick 3 colors from the viridis spectrum
cols.species.unique <- viridis::viridis(length(unique(iris$Species)))
#you sort through the entire species to find whether that species is 1, 2, or 3 and makes a vector of it's corresponding colors
cols.species <- cols.species.unique[as.factor(iris$Species)]
table(iris$Species)
table(cols.species)

## plot side by side, you want one row with the 2 graphs side by side
png('iris2.png', width = 600, height = 300)
par(mfrow = c(1,2))
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, cex = 0.7, bty = 'n',
     main = 'Sepal Characteristics', col = cols.species, xlab = 'Sepal Length (cm)', ylab = 'Sepal Width (cm)')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.7, bty = 'n',
     main = 'Petal Characteristics', col = cols.species, xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)')

#make legend
legend.lab <- unique(iris$Species)
legend.col <- unique(cols.species)
legend(x=4, y=0.9, legend = legend.lab, col = legend.col, pch =16)

dev.off()

par(mfrow = c(3,1))
hist(iris$Petal.Length[iris$Species == 'setosa'])
hist(iris$Petal.Length[iris$Species == 'versicol'])
hist(iris$Petal.Length[iris$Species == 'virginica'])

