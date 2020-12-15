#Aria Askaryar 
#Lab 2

#Question 1
library(readr)
grades_1_ <- read_delim("Desktop/grades (1).txt", 
                        "\t", escape_double = FALSE, trim_ws = TRUE)
View(grades_1_)
attach(grades_1_)

hist(Verbal, col = "red", main = "SAT Score",
     ylim= c(0, 40))

hist(GPA, col = "blue", main = "GPA",
     ylim= c(0, 40))

hist(Math, col = "Green", main = "Math Scores",
     ylim= c(0, 40))

#Question 2
#fivenum gives 1st quartile and 3rd quartile listed in order
fivenum(Verbal)
max(Verbal)
min(Verbal)
mean(Verbal)
quantile(Verbal, prob = .33)
quantile(Verbal, prob = .66)
sd(Verbal)

fivenum(GPA)
max(GPA)
min(GPA)
mean(GPA)
quantile(GPA, prob = .33)
quantile(GPA, prob = .66)
sd(GPA)


fivenum(Math)
max(Math)
min(Math)
mean(Math)
quantile(Math, prob = .33)
quantile(Math, prob = .66)
sd(Math)


#Question 3
#boxplot
#outlier
boxplot(Verbal, Math, horizontal = TRUE, col=c('red', 'green'),
        names = c('Verbal','Math'))


