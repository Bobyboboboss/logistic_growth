library(ggplot2)

# Exponential growth function
exponential_growth <- function(t) {
  N0*exp(r*t)#formula
}

# Logistic growth function
logistic_growth <- function(t) {
  (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))#formula
}

# Define parameter estimates
N0 <- 981
r <- 0.01002
K <- 6e+10

# Plot the growth models
ggplot() +
  geom_function(fun = exponential_growth, color = "blue") +
  geom_function(fun = logistic_growth, color = "red") +
  scale_y_continuous(trans = 'log10') +
  xlim(0, 5000) +                                
  xlab("Time (t)") +                             
  ylab("Population Size (log scale)") +          
  ggtitle("Comparison of Exponential and Logistic Growth Models")+
  theme(plot.title = element_text(size=12, hjust = 0.5))
 
  



