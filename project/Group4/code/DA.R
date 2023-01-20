# Library/Packages -----------------------------------------------------------------

library(tidyverse)          # data manipulation
library(janitor)            # data cleaning
library(readxl)             # data importing
library(kableExtra)         # data table features
library(dplyr)              # need to remove duplicates
library(ggplot2)            # plotting data
library(tidyr)              # tidy data
library(ggplot2)            # graphing

# Upload Data -------------------------------------------------------------

d1 <- read_csv("./desktop/data.csv")

# Cleaning ----------------------------------------------------------------

dc1 <- clean_names(d1)
d1 <- remove_empty(dc1, which=c("rows", "cols"), quiet=FALSE)
dc1 <- distinct(d1)


# Plotting ----------------------------------------------------------------

head(dc1)

# Bar Graph of Len vs Date
bar <- ggplot(dc1, mapping=aes(x=release_date, y=len))+
  geom_bar(stat = 'identity') +
  labs(title="Length of Lyrics Depending on Release Date") + 
  theme(plot.title = element_text(hjust = 0.5))

print(bar + labs(y = "Length of Lyrics", x = "Release Date"))

#Heat Map of Len vs Date
heat <- ggplot(dc1, mapping=aes(x=release_date, y=len))+
  geom_tile(stat = 'identity') +   
  geom_smooth() +
  labs(title="Length of Lyrics Depending on Release Date") + 
  theme(plot.title = element_text(hjust = 0.5))

print(heat + labs(y = "Length of Lyrics", x = "Release Date"))

