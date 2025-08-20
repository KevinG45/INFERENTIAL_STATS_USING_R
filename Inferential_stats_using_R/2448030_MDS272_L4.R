#install.packages("readxl")
#Q1
#1
# Loading necessary libraries
library(readxl)

# Loading the dataset
data = read_excel("C:\\Users\\kmgs4\\Downloads\\LAB_4_Data.xlsx")
sales_data = data$Sales

# Removing any NA values from the data
sales_data = na.omit(sales_data)

# Setting seed for reproducibility
set.seed(123)

# Random sampling with replacement (SRSWR)
sample_with_replacement = sample(sales_data, size = 20, replace = TRUE)

# Random sampling without replacement (SRSWOR)
sample_without_replacement = sample(sales_data, size = 20, replace = FALSE)

# Calculating the sample means
mean_with_replacement = mean(sample_with_replacement)
mean_without_replacement = mean(sample_without_replacement)

#2
# Calculating population mean
population_mean = mean(sales_data)

# Checking the difference between sample means and population mean
cat("Population Mean:", population_mean, "\n")
cat("Mean with Replacement:", mean_with_replacement, "\n")
cat("Mean without Replacement:", mean_without_replacement, "\n")

#3
# Generating sampling distributions by taking multiple samples
n_samples = 1000
sample_means_with_replacement = replicate(n_samples, mean(sample(sales_data, size = 20, replace = TRUE)))
sample_means_without_replacement = replicate(n_samples, mean(sample(sales_data, size = 20, replace = FALSE)))

# Plotting histograms
hist(sample_means_with_replacement, main = "Sampling Distribution (With Replacement)", xlab = "Sample Mean", col = "lightblue")
hist(sample_means_without_replacement, main = "Sampling Distribution (Without Replacement)", xlab = "Sample Mean", col = "lightgreen")

#4
# Calculating standard errors
se_with_replacement = sd(sample_means_with_replacement)
se_without_replacement = sd(sample_means_without_replacement)

cat("Standard Error with Replacement:", se_with_replacement, "\n")
cat("Standard Error without Replacement:", se_without_replacement, "\n")

# Verifying that standard error in SRSWOR is smaller than in SRSWR
cat("Is Standard Error without Replacement smaller?", se_without_replacement < se_with_replacement, "\n")


#Q2
#a)
# Simulating the data
binomial_data = rbinom(50, size = 10, prob = 0.5)  # Binomial distribution
poisson_data = rpois(50, lambda = 3)               # Poisson distribution
normal_data = rnorm(50, mean = 10, sd = 2)         # Normal distribution

# Displaying the first few values of each
head(binomial_data)
head(poisson_data)
head(normal_data)

#b) Performing the same tasks for Binomial, Normal, and Poisson

# Binomial Sampling
set.seed(123)
sample_with_replacement_binomial = sample(binomial_data, size = 20, replace = TRUE)
sample_without_replacement_binomial = sample(binomial_data, size = 20, replace = FALSE)

mean_with_replacement_binomial = mean(sample_with_replacement_binomial)
mean_without_replacement_binomial = mean(sample_without_replacement_binomial)

population_mean_binomial = mean(binomial_data)
cat("Binomial Population Mean:", population_mean_binomial, "\n")
cat("Binomial Mean with Replacement:", mean_with_replacement_binomial, "\n")
cat("Binomial Mean without Replacement:", mean_without_replacement_binomial, "\n")

sample_means_binomial_with_replacement = replicate(n_samples, mean(sample(binomial_data, size = 20, replace = TRUE)))
sample_means_binomial_without_replacement = replicate(n_samples, mean(sample(binomial_data, size = 20, replace = FALSE)))

hist(sample_means_binomial_with_replacement, main = "Binomial Distribution (With Replacement)", xlab = "Sample Mean", col = "lightblue")
hist(sample_means_binomial_without_replacement, main = "Binomial Distribution (Without Replacement)", xlab = "Sample Mean", col = "lightgreen")

# Normal Sampling
set.seed(123)
sample_with_replacement_Normal = sample(normal_data, size = 20, replace = TRUE)
sample_without_replacement_Normal = sample(normal_data, size = 20, replace = FALSE)

mean_with_replacement_Normal = mean(sample_with_replacement_Normal)
mean_without_replacement_Normal = mean(sample_without_replacement_Normal)

population_mean_Normal = mean(normal_data)
cat("Normal Population Mean:", population_mean_Normal, "\n")
cat("Normal Mean with Replacement:", mean_with_replacement_Normal, "\n")
cat("Normal Mean without Replacement:", mean_without_replacement_Normal, "\n")

sample_means_Normal_with_replacement = replicate(n_samples, mean(sample(normal_data, size = 20, replace = TRUE)))
sample_means_Normal_without_replacement = replicate(n_samples, mean(sample(normal_data, size = 20, replace = FALSE)))

hist(sample_means_Normal_with_replacement, main = "Normal Distribution (With Replacement)", xlab = "Sample Mean", col = "lightblue")
hist(sample_means_Normal_without_replacement, main = "Normal Distribution (Without Replacement)", xlab = "Sample Mean", col = "lightgreen")

# Poisson Sampling
set.seed(123)
sample_with_replacement_poisson = sample(poisson_data, size = 20, replace = TRUE)
sample_without_replacement_poisson = sample(poisson_data, size = 20, replace = FALSE)

mean_with_replacement_poisson = mean(sample_with_replacement_poisson)
mean_without_replacement_poisson = mean(sample_without_replacement_poisson)

population_mean_poisson = mean(poisson_data)
cat("Poisson Population Mean:", population_mean_poisson, "\n")
cat("Poisson Mean with Replacement:", mean_with_replacement_poisson, "\n")
cat("Poisson Mean without Replacement:", mean_without_replacement_poisson, "\n")

sample_means_poisson_with_replacement = replicate(n_samples, mean(sample(poisson_data, size = 20, replace = TRUE)))
sample_means_poisson_without_replacement = replicate(n_samples, mean(sample(poisson_data, size = 20, replace = FALSE)))

hist(sample_means_poisson_with_replacement, main = "Poisson Distribution (With Replacement)", xlab = "Sample Mean", col = "lightblue")
hist(sample_means_poisson_without_replacement, main = "Poisson Distribution (Without Replacement)", xlab = "Sample Mean", col = "lightgreen")

#c)
# Generating larger samples for Binomial and Poisson to verify Normal approximation
large_binomial_data = rbinom(1000, size = 10, prob = 0.5)
large_poisson_data = rpois(1000, lambda = 3)

hist(large_binomial_data, prob = TRUE, main = "Large Sample - Binomial Approximating Normal", col = "lightblue")
curve(dnorm(x, mean = mean(large_binomial_data), sd = sd(large_binomial_data)), col = "red", add = TRUE)

hist(large_poisson_data, prob = TRUE, main = "Large Sample - Poisson Approximating Normal", col = "lightgreen")
curve(dnorm(x, mean = mean(large_poisson_data), sd = sd(large_poisson_data)), col = "red", add = TRUE)


#Q3
# Exploring new functions in R

#1. Using `any()` to check if any elements are TRUE
vec = c(FALSE, FALSE, TRUE, FALSE)
result = any(vec)
print(result)

#2. Using `all()` to check if all elements are TRUE
vec = c(TRUE, TRUE, FALSE)
result = all(vec)
print(result)

#3. Using `which()` to find positions of elements greater than a threshold
vec = c(10, 20, 30, 40, 50)
nos = which(vec > 25)
print(nos)

