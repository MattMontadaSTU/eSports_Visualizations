library(tidyverse)
library(ggplot2)
library(dplyr)

barplot(table(GeneralEsportData$TotalPlayers), ylab="Total Games", main="Total players for each game", col="blue")
ggplot(GeneralEsportData, aes(TotalEarnings, OnlineEarnings)) + geom_point()
ggplot(GeneralEsportData, aes(x=Genre, y=TotalPlayers)) + geom_line(colour = "red")

slices <- c(12, 8, 14, 164, 106, 14, 21, 51, 6, 68, 48)
lbls<- c("Battle Royale", "Third Person Shooter", "Collectible Card Game", 
            "Fighting Game", "First-Person Shooter", "Puzzle Game", 
            "Multiplayer Online Battle Arena", "Racing", "RPG", "Sports",
            "Strategy")
pie(slices, labels = lbls, main="Game Genre Popularity Chart")
