#LAB 8
#Aria Askaryar Math338 11/19/2020

#1)
 x=c(63.4, 65.0, 64.4,  63.3,  54.8,  64.5,  60.8,  49.1,  51.0)
 t.test(x,conf.level=.99 ) 
 
#2
 x = c(63.4, 65.0, 64.4,  63.3,  54.8,  64.5,  60.8,  49.1,  51.0 )
 t.test(x,alternative = 'two.side', mu = 0, conf.level = .99)

t = 28.578, df = 8, p-value = 2.43e-09
alternative hypothesis: true mean is not equal to 0
99 percent confidence interval:
  52.59259 66.58519
sample estimates:
mean of x
59.58889 

#3
t.test(x, alternative="two.sided", mu=78.1)
xb = 69.72
s = 4.15
n=25
ct=qt((1+.90)/2,24)
ct
lb=xb-ct*(s/sqrt(n))
ub=xb+ct*(s/sqrt(n))
CI=c(lb,ub)
CI

#4
x1=c(30,28,31,26,20,30,34,15,28,20,30,29,31,29,34,20,26,25,31,29)
x2=c(29,30,32,30,16,25,31,18,33,25,32,28,34,32,32,27,28,29,32,32)
t.test(x1,x2,conf.level = .90, paired=TRUE)

#5
