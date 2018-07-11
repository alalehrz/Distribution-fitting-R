# Distribution-fitting-R
Distribution fitting is useful for the tasks such as risk measurement. In this project, I used R fitdistrplus package to fit some families of distributions to some randomly generated data. Please note that this is a **parametric analysis**. Also, I obtained CI for parameters of the model using bootstraping. Several graphs including the Q-Q plot is built running the code, look for S shaped graphs as they show a weak fit! After fitting distributions, its time for measuring goodness-of-fits. There are several methods to compare different distributions and picking the best family. 
Three goodness-of-fit are used with following considerations:

**Kolmogorov-Smirnov (KS)**

  + Measures the supremum of distances between theoretical CDF and
   those of empirical data
   
 +  Assumes the parameters are from the true model and not obtained form
   data.
   
   + Still can be used with estimated parameters, but:
   
   +  The results are approximate
   
   + The sample size should be large (at least 30)
   
   + Does not take into account the complexity of the models (# of
   parameters)

**Cramer-von Mises statistic**

+ Driven from KS initial measure

+ Does not take into account the complexity of the models (# of parameters)

**Anderson-Darling statistic**

+ Driven from KS initial measure

+ Equally emphasizes the tails as well as the main body of a distribution

+ Theoretically difficult to compare different distributions

**AIC & BIC**
Both of AIC and BIC  are used as model selection metrics. They measure the tradeoff between complexity and goodness of fit. Lower values for these metrics imply a better fit.

