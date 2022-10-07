#trevor Hempstead

a <- read.csv("us-counties-2020.csv")
b <- read.csv("us-counties-2021.csv")
c <- read.csv("us-counties-2022.csv")
d <- read.csv("us-counties-recent.csv")
e <- read.csv("us-counties.csv")

AllData<-rbind(a,b,c,d,e)

library(dplyr)

distinct(AllData, date, .keep_all = TRUE)



library(ggplot2)

ggplot(data=AllData, aes(x=date, y=cases)) + geom_line()
