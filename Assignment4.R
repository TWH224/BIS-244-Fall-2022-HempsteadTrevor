#Trevor Hempstead

library(patchwork)
library(ggplot2)

DS1 <- read.csv("WOT.csv")

G <- ggplot(data = DS1 , mapping = aes(x = Nation, y = WR, group=Nation)) 

G + geom_boxplot()

GG <- ggplot(data = DS1,
            mapping = aes(x = reorder(Nation, WR, na.rm=TRUE),
                          y = WR, group=Nation))

L <- ggplot(data = DS1 , mapping = aes(x = Class, y = WR, group=Class)) 

L + geom_boxplot()

LL <- ggplot(data = DS1,
             mapping = aes(x = reorder(Class, WR, na.rm=TRUE),
                           y = WR, group=Class))

A <- GG + geom_boxplot() +  labs(x=NULL) 
B <- LL + geom_boxplot() +  labs(x=NULL)

A + B
