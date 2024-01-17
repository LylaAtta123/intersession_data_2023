library (datasets)
library (viridis)

getwd()
setwd('/Users/margaret/Desktop/intersession_data_2023/code/day3')

data ('iris')
head (iris)
class(iris)

#plotting sepal characteristics
#png ('iris1.png', width = 520, height = 520)
#cex is size
#bty changes border
plot (iris$Sepal.Length, iris$Sepal.Width,
      main = 'Sepal Characteristics', xlab= 'Sepal Length (cm)', ylab = 'Sepal Width (cm)',
      pch = 16, cex = 0.7, bty = 'n'
      )
#dev.off () #won't generate plot in viewer

#search r pch symbols

# plot petal char
plot (iris$Petal.Length, iris$Petal.Width,
      main = 'Petal Characteristics', xlab= 'Petal Length (cm)', ylab = 'Petal Width (cm)',
      pch = 16, cex = 0.7, bty = 'n')
#cex is size
#bty changes border

#plot side by side
png ('iris2.png', width = 600, height = 300)
par(mfrow = c(1,2))
plot (iris$Sepal.Length, iris$Sepal.Width,
      main = 'Sepal Characteristics', xlab= 'Sepal Length (cm)', ylab = 'Sepal Width (cm)',
      pch = 16, cex = 0.7, bty = 'n', col = col.species)
plot (iris$Petal.Length, iris$Petal.Width,
      main = 'Petal Characteristics', xlab= 'Petal Length (cm)', ylab = 'Petal Width (cm)',
      pch = 16, cex = 0.7, bty = 'n', col=col.species)
dev.off ()

#species
head (iris$Species)
unique(iris$Species)


col.species.unique <- viridis::viridis(length(unique(iris$Species)))
col.species <- col.species.unique [as.factor(iris$Species)]
viridis::viridis(length(unique(iris$Species)))
table (iris$Species)
cols.species <- col.species.unique [as.factor(iris$Species)]
table(col.species)
plot (iris$Sepal.Length, iris$Sepal.Width,
      main = 'Sepal Characteristics', xlab= 'Sepal Length (cm)', ylab = 'Sepal Width (cm)',
      pch = 16, cex = 0.7, bty = 'n', col = col.species)
plot (iris$Petal.Length, iris$Petal.Width,
      main = 'Petal Characteristics', xlab= 'Petal Length (cm)', ylab = 'Petal Width (cm)',
      pch = 16, cex = 0.7, bty = 'n', col=col.species)

#make legend
legend.lab <- unique (iris$Species)
legend.col <- unique (col.species)
legend (x=4, y = 0.9,legend = legend.lab, col = legend.lab, pch = 16)

par(mfrow(3,1))
hist(iris$Petal.Length[iris$Species=='setosa'])
hist(iris$Petal.Length[iris$Species=='versicolor'])
hist(iris$Petal.Length[iris$Species=='virginica'])

