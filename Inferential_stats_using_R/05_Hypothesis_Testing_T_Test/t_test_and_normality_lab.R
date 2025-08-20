##Q1
# Load dataset and conduct test
data(sleep)
t_test_result = t.test(sleep$extra, mu = 0)

# Critical value
alpha = 0.05
df = length(sleep$extra) - 1
critical_value = qt(1 - alpha/2, df)

# Display results
list(t_test_result = t_test_result, critical_value = critical_value)


##Q2
# Load data
data(airquality)

# Normality tests
shapiro_temp = shapiro.test(airquality$Temp)
shapiro_wind = shapiro.test(airquality$Wind)

# Variance test
var_test = var.test(airquality$Temp, airquality$Wind)

# T-test
t_test_airquality = t.test(airquality$Temp, airquality$Wind, var.equal = TRUE)

# Critical value
df = length(airquality$Temp) + length(airquality$Wind) - 2
critical_value = qt(1 - 0.05/2, df)

list(shapiro_temp = shapiro_temp, shapiro_wind = shapiro_wind, var_test = var_test,
     t_test = t_test_airquality, critical_value = critical_value)

##Q3
# Define weights data
weights_before = c(209, 178, 169, 212, 180, 192, 158, 180, 170, 153, 183, 165, 201, 179, 243, 144)
weights_after = c(196, 171, 207, 177, 190, 159, 180, 164, 152, 179, 162, 199, 173, 231, 140, 159)

# Paired t-test
t_test_weights = t.test(weights_before, weights_after, paired = TRUE, conf.level = 0.99)

# Critical value
alpha = 0.01
df = length(weights_before) - 1
critical_value = qt(1 - alpha, df)

list(t_test_weights = t_test_weights, critical_value = critical_value)

##Q4
# Two-tailed
alpha = 0.05
df = 15
critical_values_2_tailed = c(qt(alpha / 2, df), qt(1 - alpha / 2, df));critical_values_2_tailed

# Single-tailed
critical_value_1_tailed = qt(1 - alpha, df);critical_value_1_tailed