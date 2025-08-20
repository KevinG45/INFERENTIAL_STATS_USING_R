##OBJECTIVE 1
library(ggplot2)
# Reported percentages from the election
reported_percentages = c(41.5, 25.7, 32.8)
reported_counts = round(reported_percentages / 100 * 123) # Expected counts based on 123 voters
# Simulated data
set.seed(42) # For reproducibility
study_votes = sample(c("Party 1", "Party 2", "Others"),size = 123,replace = TRUE,prob = c(0.415, 0.257, 0.328));study_votes
# Observed counts
observed_counts = table(study_votes);observed_counts
# Chi-Square Goodness-of-Fit Test
chi_square_test = chisq.test( x = observed_counts, p = reported_percentages / 100);chi_square_test # Convert percentages to proportions
# Bar plot for comparison of observed vs expected
expected_data = data.frame( Party = names(observed_counts),Count = as.numeric(reported_counts),Type = "Expected");expected_data
observed_data = data.frame(Party = names(observed_counts),Count = as.numeric(observed_counts),Type = "Observed");observed_data
combined_data = rbind(expected_data, observed_data);combined_data
ggplot(combined_data, aes(x = Party, y = Count, fill = Type)) +geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Observed vs Expected Voter Distribution",x = "Party", y = "Count") +
  scale_fill_manual(values = c("Expected" = "blue", "Observed" = "orange")) +theme_minimal()

# Pie chart for observed data
observed_percentages = round(prop.table(observed_counts) * 100, 1);observed_percentages
pie(observed_counts,labels = paste0(names(observed_counts), ": ", observed_percentages, "%"),
    main = "Observed Voting Distribution",col = c("blue", "red", "green"))

# Pie chart for reported percentages
pie(reported_counts,labels = paste0(names(observed_counts), ": ", reported_percentages, "%"),
  main = "Expected Voting Distribution (Reported Data)",col = c("blue", "red", "green"))


##OBJECTIVE 2
#install.packages('titanic')
library(titanic)
data("titanic_train")
titanic_data = titanic_train
head(titanic_data)
# Observed counts: Passenger class (Pclass)
observed_counts = table(titanic_data$Pclass)
# Expected proportions (e.g., assume equal distribution across classes)
expected_proportions = rep(1/3, 3)  # Hypothesis: Equal distribution among 3 classes
expected_counts = sum(observed_counts) * expected_proportions
# Perform Chi-Square Goodness-of-Fit Test
chi_square_test = chisq.test(x = observed_counts,p = expected_proportions,rescale.p = TRUE)
# Display results
print("Observed Counts:")
print(observed_counts)
print("Expected Counts:")
print(expected_counts)
print(chi_square_test)

##OBJECTIVE 3
data=read.csv("C:\\Users\\abhij\\Downloads\\supermarket_sales - Sheet1.csv")
head(data)
# Select categorical variables for testing independence. Example: City and Customer
city_cust_table=table(data$City,data$Customer);city_cust_table
# Perform Chi-Square Test for Independence
chi_square_test=chisq.test(city_cust_table)
# Display the test results
print("Chi-Square Test Results:")
print(chi_square_test)
print("Expected Counts:")
print(chi_square_test$expected)

