#Aria Askaryar Math 338 Fall 2020
#Stats-Project: 
#Correlation between Hours of Sleep and GPA/Grades

# Dataset from Excel sheet 
library(readxl)
Stats_Project_Excel_data_1_ <- read_excel("Desktop/Stats-Project Excel data(1).xlsx")
View(Stats_Project_Excel_data_1_)
attach(Stats_Project_Excel_data_1_)

# Histograms  //lab 2 reference
#This shows the graph of Sleep
hist(Hours_Spent_Sleeping, main = "Amount of Sleep",
     ylim= c(0, 50))

hist(GPA, main = "GPA",
     ylim= c(0, 40))

boxplot(GPA, Hours, horizontal = TRUE, col=c('red', 'green'),
        names = c('GPA','Hours'))

#T-independent test // Lab 9 Reference
x1= Hours_Spent_Sleeping
x2= GPA
t.test(x1, x2, conf.level = .95, paired= FALSE)

#2 sample test
Hours = Hours_Spent_Sleeping
GPAaverage = GPA
t.test(x1, x2, alternative="less", mu = 0, paired = FALSE) 

mu1 = 9.9
mu2 = 7.7
s1 = 5.8
s2 = 6.1
n1= 202
n2=200
df = (((s1^2/n1)+(s2^2/n2))^2)/((1/(n1-1))(s1^2/n1)^2)+((1/(n2-1))(s2^2/n2)^2)
df
t= (mu1-mu2)/sqrt((s1^2/n1)+(s2^2/n2))
t
           
#T-test //reference lab 8
#1)
 x = Hours_Spent_Sleeping
 y = GPA
 t.test(x,conf.level=.99 ) 
           
#2
 x = Hours_Spent_Sleeping
 y = GPA
 t.test(x,alternative = 'two.side', mu = 0, conf.level = .99)
           
#3
x1= Hours_Spent_Sleeping
x2= GPA
t.test(x1,x2,conf.level = .90, paired=TRUE)


#//////////////////////////////////
#fivenum gives 1st quartile and 3rd quartile listed in order
attach(Stats_Project_Excel_data_1_)
fivenum(Hours_Spent_Sleeping)
max(Hours_Spent_Sleeping)
min(Hours_Spent_Sleeping)
mean(Hours_Spent_Sleeping)
sd(Hours_Spent_Sleeping)

attach(Stats_Project_Excel_data_1_)
fivenum(GPA)
max(GPA)
min(GPA)
mean(GPA)
sd(GPA)

#boxplot
#outlier
boxplot(`Hours Spent Sleeping`, GPA, horizontal = TRUE, col=c('red', 'green'),
        names = c('Hours','GPA'))


# Example 1 pg9 ch6, Chi-square (Independence)
attach(Stats_Project_Excel_data_1_)
Time=c('less than 4 hours', '5-7 hours', 'More than 8 hours')
Class_name=c('Freshman','Sophmore','Junior','Senior')
Data = Hours_Spent_Sleeping

Table=matrix(Data,nrow = 4, ncol = 4, byrow = TRUE, dimnames =list(Time,Class_name) )
Table

barplot(Table, beside = TRUE, col=rainbow(3), main="Hours of Sleep by Class",ylim = c(0,50))
legend('topright', legend =c('>2.5','2.6-3.4','<3.5'),fill = rainbow(3) )


chisq.test(Table)

# Chi-square Test
x1= GPA
x2= Hours_Spent_Sleeping

Table=data.frame(x1,x2)
Table

chisq.test(Table)


           
