#prelab 5 |by Aria Askaryar|  10/13/2020 
#Chapter 4 Binomials pg. 4             

#part (a) Exactly
#first is x, n, p   //in rstudios
pv = dbinom(8, 20, .80)
pv

#part (b) at least
pv = pbinom(8-1,20,.80, lower.tail = FALSE)
pv

#OR

pv = 1 - pbinom(8-1,20,.80, lower.tail = TRUE)
pv

#part (c) fewer than

pv = pbinom(8-1,20,.80, lower.tail = TRUE)
pv


#part (d) between

pv = pbinom(9,20,.80, lower.tail = TRUE) - pbinom(7-1,20,.80, lower.tail = TRUE)
pv

#or

pv = dbinom(7,20,.80) + dbinom(8,20,.80) + dbinom(9,20,.80) 
pv




pv = pbinom(9,20,.80, lower.tail=TRUE) -pbinom(7-1,20,.80, lower.tail=TRUE)
pv
x = round(pv, digits=4)
x = format(x, scientific=FALSE)
x



#ch 5 pg.6 binomial to normal ex1 and ex2

#Ex.
p=.82
n=100

mu = p
stdv=sqrt(p*(1-p))

x=75

p_hat=x/n

pv = pnorm(p_hat, mu, stdv)
pv
x = round(pv, digits=4)
x

# Or

pnorm(.75,.83, sqrt(.82*(1-.82)/100))


#ex 2
# Ex. 2
p=.29
n=500

mu=p
stdv=sqrt(p*(1-p)/n)


p_hat1=.25
p_hat2=.30

pv = pnorm(p_hat2,mu,stdv)-pnorm(p_hat1,mu,stdv)
pv
x = round(pv, digits=4)
x

# 0r

pnorm(.30,.29,sqrt(.29*(1-.29)/500))-pnorm(.25,.29,sqrt(.29*(1-.29)/500))

# Part (b)

# Ex. 2
p=.29
n=500

mu=p
stdv=sqrt(p*(1-p)/n)

x=125

p_hat=x/n

pv = pnorm(p_hat,mu,stdv)
pv
x = round(v, digits=4)
x


# Binomial Ch4 pg.4

# part (a) exactly

# first is x, n, p
pv = dbinom(8,20,.80)
pv

# Part (b) at least
pv = pbinom(8-1,20,.80, lower.tail = FALSE)
pv

# or

pv = 1- pbinom(8-1,20,.80, lower.tail = TRUE)
pv


# part (c) fewer than

pv = pbinom(8-1,20,.80, lower.tail = TRUE)
pv
round(pv, 6)



# part (d) between

pv = pbinom(9,20,.80, lower.tail = TRUE)-pbinom(7-1,20,.80, lower.tail = TRUE)
pv

# or

pv = dbinom(7,20,.80)+dbinom(8,20,.80)+dbinom(9,20,.80)
pv

# Mr. Lusk
pv = pbinom(9,20,.80, lower.tail=TRUE) -pbinom(7-1,20,.80, lower.tail=TRUE)
pv
x = round(pv, digits=4)
x = format(x, scientific=FALSE)
x


# Ch5 pg6 Binomial to normal Ex1 and Ex2

# Ex. 1
p=.82
n=100

mu=p
stdv=sqrt(p*(1-p)/n)

x=75

p_hat=x/n

pv = pnorm(p_hat,mu,stdv)
pv
x = round(pv, digits=4)
x

# 0r

pnorm(.75,.82,sqrt(.82*(1-.82)/100))


# Ex. 2
p=.29
n=500

mu=p
stdv=sqrt(p*(1-p)/n)


p_hat1=.25
p_hat2=.30

pv = pnorm(p_hat2,mu,stdv)-pnorm(p_hat1,mu,stdv)
pv
x = round(pv, digits=4)
x

# 0r

pnorm(.30,.29,sqrt(.29*(1-.29)/500))-pnorm(.