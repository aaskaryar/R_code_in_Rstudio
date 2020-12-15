#lab 7
#Aria Askaryar 11/5/2020

#extra
observed=c(53,66,38,96,88,59)
proportion=c(.12,.15,.12,.23,.23,.15)

chisq.test(x=observed,p=proportion)

#2
x1=315
n1=108
x2=101
n2=32

ph1 = x1 / n1
ph2 = x2 / n2
phat=(x1+x2)/(n1+n2)

#grabs z score
zTest = (ph1 - ph2) / (sqrt(phat * (1 - phat))*(sqrt((1/n1)+(1/n2))))
zTest

pval=2*(1-pnorm(zTest))
pval

#3

Drug=c('Pirenzepine', 'Trithiozine')
Wantedness=c('Healed','Not Healed')
Data = c(23,7,18,13)

Table=matrix(Data,nrow = 2, ncol = 2, byrow = TRUE, dimnames =list(Drug,Wantedness) )
Table

barplot(Table, beside = TRUE, col=rainbow(3), main="Prenatal Care",ylim = c(0,600))
legend('topright', legend =c('Intended','Uninteded'),fill = rainbow(3) )


chisq.test(Table, correct = FALSE)

