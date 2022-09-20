#Trevor Hemsptead

DataSet1 <- read.csv(here("covid-19-data","us-states.csv")) #correct way to read csv for future reference

DataSet1 <- read.csv("us-states.csv") #Part 1

install.packages('dplyr')
library("dplyr")

filter(DataSet1, state=='Pennsylvania') #Part 2

#I'm not sure if this step is supposed to be for all states or just Penn so i gave both options
PennData <- filter(DataSet1, state=='Pennsylvania')


#Failure to implement for() loop successfully: -10 
incr_cases <- diff(PennData$cases)
incr_cases <- c(0, incr_cases)
PennData$incr_cases <- incr_cases

incr_deaths <- diff(PennData$deaths)
incr_deaths <- c(0, incr_deaths)
PennData$incr_deaths <- incr_deaths #Part 3

sd(PennData$incr_cases) #Part 4
