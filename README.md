# Distribution-fitting-R

Kolmogorov-Smirnov (KS)
     Measures the supremum of distances between theoretical CDF and those of empirical data
     Assumes the parameters are from the true model and not obtained form data. 
     Still can be used with estimated parameters, but:
     The results are approximate
     The sample size should be large (at least 30)
     Does not take into account the complexity of the models (# of parameters)
Cramer-von Mises statistic
     Driven from KS initial measure 
     Does not take into account the complexity of the models (# of parameters)
Anderson-Darling statistic
     Driven from KS initial measure
     Equally emphasizes the tails as well as the main body of a distribution 
     Theoretically difficult to compare different distributions
