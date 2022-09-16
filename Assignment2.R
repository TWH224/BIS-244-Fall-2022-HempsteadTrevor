#Trevor Hemsptead

DataSet1 <- read.csv("us-states.csv") #Part 1

install.packages('dplyr')
library("dplyr")

filter(DataSet1, state=='Pennsylvania') #Part 2

#I'm not sure if this step is supposed to be for all states or just Penn so i gave both options
PennData <- filter(DataSet1, state=='Pennsylvania')


incr_cases <- diff(PennData$cases)
incr_cases <- c(0, incr_cases)
PennData$incr_cases <- incr_cases

incr_deaths <- diff(PennData$deaths)
incr_deaths <- c(0, incr_deaths)
PennData$incr_deaths <- incr_deaths #Part 3

sd(PennData$incr_cases) #Part 4
