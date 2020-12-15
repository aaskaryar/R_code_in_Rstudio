#Aria Askaryar
#Lab 10

#a)
library(readxl)
Debt_1_ <- read_excel("Downloads/Debt (1).csv")
View(Debt_1_)
open(Debt_1_)

plot(Debt_1_)

#b)
cor(Debt2009,Debt2010)


plot(Debt2009,Debt2010)
abline(lm(Debt2010~Debt2009))
cor(Debt2009,Debt2010)
Model=lm(formula = (lm(Debt2010~Debt2009)))
Model

x = 50
y = 0.04676 + 1.05934*x
y

Residuals=resid(Model)
Residuals
plot(Debt2009,Residuals, main = "Debt 2009 Residual Plot")
abline(0,0)

#c)
lm(Debt_1_$Debt2010~Debt_1_$Debt2009)
lm(formula = Debt_1_$Debt2010~Debt_1_$Debt2009 )



#////////////////////////////////////////////////////////////////////

# A:
plot(Debt$Debt2009,Debt$Debt2010)
abline(lm(Debt$Debt2010~Debt$Debt2009))

# B:
cor(Debt2009,Debt2010)

# C:
lm(Debt$Debt2010~Debt$Debt2009)
# y= 0.04676 + 1.05934x

# D:
x = 50
y = 0.04676 + (1.05934*x)
y
# E:
model = lm(Debt$Debt2010~Debt$Debt2009)
residuals = resid(model)
residuals
plot(Debt$Debt2009, residuals, main = "Residual Plot")
abline(0,0)


