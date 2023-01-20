#import library
library(ggplot2)

#import all data from csv
musicData <- read.csv(file = "C:\\Users\\hanna\\Desktop\\F22\\Data Visualization\\tcc_ceds_music.csv")
head(musicData)

#Separate out only pop music
popData <- musicData[which(musicData$genre == "pop"), names(musicData) %in% c("release_date", "len", "dating", "violence", "world.life", 
                                                                            "night.time","romantic", "obscene", "family.spiritual", "danceability", 
                                                                             "sadness", "instrumentalness", "topic"
                                                                            )]
#create plots
ggplot(data = popData) + geom_smooth(mapping = aes(x = release_date, y = obscene)) + geom_point(mapping = aes(x = release_date, y = obscene), alpha = 1/5) + ggtitle("Obscenity in pop music over time") + labs(y = "Fraction of obscene lyrics", x = "Year")
ggplot(data = popData) + geom_smooth(mapping = aes(x = release_date, y = family.spiritual)) + ggtitle("Family and spirituality in pop music over time") + labs(y = "Fraction of lyrics referencing family/spirituality", x = "Year")


g <- ggplot(popData, aes(release_date)) + scale_fill_brewer(palette = "Spectral")
g + geom_histogram(aes(fill=topic), 
                   binwidth = 5, 
                   col="black", 
                   size=.1) +  # change binwidth
  labs(title="Trends in pop music over time", 
       y = "Number of songs", x = "Year") 
