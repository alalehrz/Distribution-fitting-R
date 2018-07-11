import::from(fitdistrplus)

#data <-scan('C:\\Users\\Alaleh\\Desktop\\Cisco\\time_F.txt')
data <-rnorm(2000, mean = 10, sd=5)


# fit distribution on  data
norm_d  <-fitdist(data, 'norm', method='mme')
gamma_d <-fitdist(data, 'gamma', method='mme')
exp_d  <-fitdist(data, 'exp', method='mme')

plot(norm_d)
plot(gamma_d)
plot(exp_d)

# bootstrap for confidence interval calculation, smaller confidence interval shows more robust model
b_norm <- bootdist(norm_d, niter=1000)
b_gamma <- bootdist(gamma_d, niter=1000)
b_exp <- bootdist(exp_d, niter=1000)

print(b_norm['CI'])
print(b_gammaF['CI'])
print(b_exp['CI'])

# goodness of fit measures, read the readme file for explanation of results. 
gof <-gofstat(list(norm_d, gamma_d, exp_d))

print(gof)

