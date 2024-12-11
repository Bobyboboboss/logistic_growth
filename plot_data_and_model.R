#Script to plot data and model

growth_data <- read.csv("experiment.csv")

#define the logistic growth function
logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N) #return the predicted N for t
  
}

#define parameters of the function
N0 <- 879 #taken directly from the experiment.csv dataset, when t=0
  
r <- 0.01002 #taken from the summary output of model 1, this is the coefficient of t
  
K <- 6e+10 #taken from the summary output of model 2, this is the intercept

#create a plot from earlier with the logistic function laid on it
ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

scale_y_continuous(trans='log10')


