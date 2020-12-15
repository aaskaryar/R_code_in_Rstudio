#Lab 6,  
#Aria Askaryar 10/22/2020  

#Question 1
#Given
x=210
n=500
clevel=.90

#a)
p_hat=x/n
p_hat

#b
s_err = sqrt(p_hat*(1-p_hat)/n)
s_err

#C
LB=qnorm((1-clevel)/2,p_hat,sqrt(p_hat*(1-p_hat)/n))
UB=qnorm((1+clevel)/2,p_hat,sqrt(p_hat*(1-p_hat)/n))

CI=c(LB,UB)
CI


# Question 2


#given
p = 0.50
x = 140
n = 250
p_hat = x/n
alpha = 0.05

#solve
ztest = ((p_hat-p)/sqrt(p*(1-p)/n))
ztest

#if z< classical then statement is false, if z>classical then we accept

#right classical 
classicalmethod = qnorm(1-alpha)
classicalmethod

#left classical
#classicalmethod = qnorm(alpha)
#classicalmethod

#twotail
#classicalmethod = qnorm(alpha/2)
#classicalmethod

#going to the right
pvalue = 1 - pnorm(ztest)
pvalue

#going to the left
#pvalue = pnorm(ztest)
#pvalue

#twotailed
#pvalue = (1 - pnorm(abs(ztest)))
#pvalue