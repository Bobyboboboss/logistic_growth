#Script to plot the logistic growth data

growth_data <- read.csv("experiment.csv") #this reads data from experiment.csv

install.packages("ggplot2") #install package needed for creating plots
library(ggplot2)

#Population size as a function of time 
ggplot(aes(t,N), data = growth_data) + #create graph with time on X axis and population size on Y axis
  
  geom_point() + 
  
  xlab("t") + 
  
  ylab("y") + 
  
  theme_bw() 

#Same data but with a log-transformed Y axis
ggplot(aes(t,log(N)), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10')

sink(file = "package-versions.txt")
sessionInfo()
sink()

