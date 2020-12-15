#Lab5
#Aria Askaryar 10.15.2020


#Question1

#a (at least)
pv = pbinom(3-1,15,.20, lower.tail = FALSE)
pv

# b (fewer than)
pv = pbinom(3-1,15,.20, lower.tail = TRUE)
pv

# c (or)
pv = dbinom(3,15,.20) + dbinom(7,15,.20)  + dbinom(10,15,.20) 
pv

#d
p= 0.20
n= 15
 
mean = np
mean

Stdv=  sqrt(n*p(1-p)) 
stdv

#Q2
#a 
pv = dbinom(20,30,0.60)
pv


#b
pv = 0.6*0.6*0.6*0.4
pv

#Q3
#a more than half
pv = pbinom(30,60,.3, lower.tail = FALSE)
pv

#b

n=60
p= 0.30

mu = p
stdv = sqrt(p*(1-p)/n)

p_hat1 = .2
p_hat1 = .4

pv = pnorm(p_hat2,mu,stdv) - pnorm(p_hat1,mu,stdv)
pv

#c
n = (p*(1-p)/0.01^2)
n



