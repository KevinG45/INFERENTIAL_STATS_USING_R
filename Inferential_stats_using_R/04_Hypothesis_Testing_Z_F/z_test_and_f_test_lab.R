##Q1
# Data
library(readxl)
college1=read_excel("C:\\Users\\kmgs4\\Downloads\\College1.xlsx")
college2=read_excel("C:\\Users\\kmgs4\\Downloads\\College2.xlsx")
head(college1)
head(college2)
# means
mean_college1=mean(college1$WeeklyExpenditure_College1);mean_college1
mean_college2=mean(college2$WeeklyExpenditure_College2);mean_college2
# Given data
sigma1=35
sigma2=25
n1=200
n2=150
# Z-test
z_cal=(mean_college1 - mean_college2) / sqrt((sigma1^2 / n1) + (sigma2^2 / n2));z_cal

library(BSDA)
test1 = z.test(college1,college2,alternative="two.sided",mu=0,sigma.x=sigma1,sigma.y=sigma2,conf.level=0.99);test1

test5 = z.test(college1,college2,alternative="two.sided",mu=0,sigma.x=sigma1,sigma.y=sigma2,conf.level=0.95);test5

test10 = z.test(college1,college2,alternative="two.sided",mu=0,sigma.x=sigma1,sigma.y=sigma2,conf.level=0.90);test10

# Compare with critical values for 1%, 5%, and 10% levels
critical_values_1= c(qnorm(0.01/ 2), qnorm(1 -0.01 / 2));critical_values_1
critical_values_5=c(qnorm(0.05/ 2), qnorm(1 -0.05 / 2));critical_values_5
critical_values_10=c(qnorm(0.1/ 2), qnorm(1 -0.1 / 2));critical_values_10
list(z_cal,critical_values_1,critical_values_5,critical_values_10)


##Q2
# Given data
test_eq = z.test(college1, college2, alternative="two.sided", mu=0, sigma.x = 30, sigma.y = 30, conf.level = 0.95);test_eq

##Q3
# Load data
library(readxl)
cosmetics=read_excel("C:\\Users\\kmgs4\\Downloads\\cosmetics dataset.xlsx")
head(cosmetics)

sample_data = sample(cosmetics$Price, size = 55, replace = FALSE)
sample_data

population_mean=mean(cosmetics$Price);population_mean
population_sd=sd(cosmetics$Price);population_sd

#Z-TEST
test_cosmetics = z.test(sample_data,y = NULL, alternative = "two.sided", mu = population_mean, sigma.x = population_sd, sigma.y = NULL, conf.level = 0.95);test_cosmetics

##Q4
# Data
raw_milk = c(65.5, 65.8, 68.1, 67.9, 66.6, 66.2, 65.7, 67.8, 65.4, 67.5, 66.8, 65.2, 67.8)
pasteurized_milk = c(72.5, 77.1, 74.8, 73.9, 76.5, 74.3, 77.7)
# F-test using function
f_test=var.test(raw_milk, pasteurized_milk, alternative = "two.sided", conf.level = 0.98);f_test
# F-test using test statistic
sd_raw = sd(raw_milk)
sd_past = sd(pasteurized_milk)
n1 = length(raw_milk);n1
n2 = length(pasteurized_milk);n2
f_calc = ((sd_raw*2))/((sd_past*2));f_calc
# Degrees of freedom
df1=length(raw_milk) - 1; df1
df2=length(pasteurized_milk) - 1;df2
# F critical value at 0.01 (two-tailed) significance level
f_critical=qf(1-(0.02/2),df1,df2);f_critical
list(f_calc,f_test,f_critical)