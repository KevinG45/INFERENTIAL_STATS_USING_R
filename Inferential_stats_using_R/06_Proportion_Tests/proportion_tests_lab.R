##OBJECTIVE 1a

# H0: 30% people recommend street food to their friends
# H1: 30% people do not recommend street food to their friends

# Performing a one-sample proportion test
test_result = prop.test(x = 80, n = 150, p = 0.3, alternative = "two.sided", conf.level = 0.95, correct = FALSE)

# Output the result
print(test_result)

cat('p-value is',test_result$p.value)
#since p-value < 0.05, we can reject H0 and conclude that 30% people do not recommend street food to their friends

##OBJECTIVE 1b

set.seed(123)

# H0: Proportions of 2 groups are equal
# H1: Proportions of 2 groups are not equal

# Generating data for Group 1 where n1 is sample size, p1 is true proportion, and x1 is number of successes
n1 <- 120                       
p1 <- 0.35                      
x1 <- rbinom(1, n1, p1)         

# Generating data for Group 2 where all the values are similar to Group 1
n2 <- 150                       
p2 <- 0.40                      
x2 <- rbinom(1, n2, p2)         


cat("Group 1: Successes =", x1, ", Sample size =", n1, "\n")
cat("Group 2: Successes =", x2, ", Sample size =", n2, "\n")

# Perform a two-sample proportion test
test_result <- prop.test(x = c(x1, x2), n = c(n1, n2), alternative = "two.sided", conf.level = 0.95,correct = FALSE)

# Output the result
print(test_result)

cat('p-value is',test_result$p.value)
#since p-value > 0.05, we fail to reject H0 and conclude that proportions of 2 groups are equal