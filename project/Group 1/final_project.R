library(ggplot2)

my_data <- read.csv("/Users/margaret/Desktop/intersession_data_2023/code/final_project/Robotic_Surgery_Dataset.csv", header = TRUE)
my_data <- my_data[1:103,1:5]
setwd("/Users/margaret/Desktop/intersession_data_2023/code/final_project")

need <- ggplot(my_data[my_data$Task=='Needle Passing',]) + geom_bar(mapping = aes(y = Overall_Performance, fill = Experience_Level), position = "fill")
ggsave ("needle.png")


knot <- ggplot(my_data[my_data$Task=='Knot_Tying',]) + geom_bar(mapping = aes(y = Overall_Performance, fill = Experience_Level), position = "fill")
ggsave("knot.png")


suture <- ggplot(my_data[my_data$Task=='Suturing',]) + geom_bar(mapping = aes(y = Overall_Performance, fill = Experience_Level), position = "fill")
ggsave("suture.png")


total <- ggplot(my_data, aes(x = Experience_Level, y = Overall_Performance))
total + geom_jitter(mapping = aes(x= factor(Experience_Level, level = c('N','I','E')), y= Overall_Performance, color = Task)) + ggtitle ('Comparing Experience Level and Overall Performance') + theme(plot.title = element_text(hjust = 0.5))
ggsave(total.png)

s <- ggplot(my_data, aes(x = Experience_Level, y = Overall_Performance, fill = Task)) 
s + geom_bar(position = "fill")


sa <- ggplot(data = my_data) + geom_bar(mapping = aes(y = Overall_Performance, fill = Task), position = "fill")
ggsave('test.png')

pa <- ggplot(my_data[29:64,1:5]) + geom_bar(mapping = aes(y = Overall_Performance, fill = Experience_Level), position = "fill")
ggsave('test2.png')
