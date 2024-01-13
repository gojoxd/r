n=10; p=0.6
a = dbinom(0,n,p)
a
b = dbinom(2,n,p)
b
c = pbinom(3,n,p)
c
d = 1 - pbinom(5,n,p)
d

m=3.2
a = dpois(3,m)
a
b = dpois(5,m)
b
c = ppois(1,m)
c
d = 1 - ppois(3,m)
d
e = 1 - ppois(4,m)
e


mean=10
a = 1 - pexp(1,mean)
a
b = pexp(6,mean)
b
c = pexp(5,mean)
c
d = 1 - pexp(6,mean)
d


mu=50
sigma=sqrt(40)
a = pnorm(60,mu,sigma)
a
b = 1 - pnorm(99,mu,sigma)
b
c = pnorm(20,mu,sigma) - pnorm(10,mu,sigma)
c
d = qnorm(0.293,mu,sigma)
d


#PMF
# X ~ P(2.6)
m=2.6
x=0:50
prob=dpois(x,m)
pois_pmf = data.frame(x,Prob=round(prob,4))
head(pois_pmf)
plot(x,prob,"h")

#CDF
# X ~ P(2.6)
m=2.6
x=0:50
prob=ppois(x,m)
pois_cdf = data.frame(x,Prob=round(prob,4))
head(pois_cdf)
plot(x,prob,"s")


#PMF
# X ~ Bin(8,0.65)
n=8; p=0.65
x=0:n
prob=dbinom(x,n,p)
binom_pmf=data.frame(x,Prob=round(prob,4))
head(binom_pmf)
plot(x,prob,"h")

#CDF
# X ~ Bin(8,0.65)
n=8; p=0.65
x=0:n
prob=pbinom(x,n,p)
binom_cdf=data.frame(x,Prob=round(prob,4))
head(binom_cdf)
plot(x,prob,"s")


#PDF
# X ~ Exp(5)
m=5
x=0:20
prob=dexp(x,m)
exp_pdf=data.frame(x,Prob=round(prob,4))
head(exp_pdf)
plot(x,prob)

#CDF
# X ~ Exp(5)
m=5
x=0:20
prob=pexp(x,m)
exp_cdf=data.frame(x,Prob=round(prob,4))
head(exp_cdf)
plot(x,prob)


#PDF
# X ~ N(10,16)
mu=10; sigma=sqrt(16)
x=seq(-2,2,by=0.02)
prob=dnorm(x,mu,sigma)
norm_pdf=data.frame(x,Prob=round(prob,4))
head(norm_pdf)
plot(x,prob)

#CDF
# X ~ N(10,16)
mu=10; sigma=sqrt(16)
x=seq(-2,2,by=0.02)
prob=pnorm(x,mu,sigma)
norm_cdf=data.frame(x,Prob=round(prob,4))
head(norm_cdf)
plot(x,prob)