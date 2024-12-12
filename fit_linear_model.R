#Script to estimate the model parameters using a linear approximation

library(dplyr)

growth_data <- read.csv("experiment.csv")

#Case 1. K >> N0, t is small

#Create a data subset with filtered values of t<1000, and also a log transformed y axis
data_subset1 <- growth_data %>% filter(t<1300) %>% mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data_subset1) #fit simple linear model to subset, t as the explanatory variable and log N as response
summary(model1) #calculate coefficients of model

#Case 2. N(t) = K 

#Same as before but this time with only high t values (when carrying capacity is reached) and non log transformed data

data_subset2 <- growth_data %>% filter(t>2500)

model2 <- lm(N ~ 1, data_subset2)#Unlike the first model, the explanatory variable is set to 1 because the goal is to model the population size as a constant (representing carrying capacity)
summary(model2)
