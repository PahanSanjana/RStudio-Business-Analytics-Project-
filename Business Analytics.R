# Load necessary libraries
library(readr)  # For reading CSV files
library(dplyr)  # For data manipulation
library(ggplot2) # For data visualization
library(car)      # For ANOVA assumptions testing



# Read the CSV file
data <- read_csv("C:/Users/LOQ/Business Analytics/Prestige_New.csv")

# Display the first few rows to check the data
head(data)


#Task 03

# Calculate Descriptive Statistics for Income
min_income <- min(data$income, na.rm = TRUE)
max_income <- max(data$income, na.rm = TRUE)
mean_income <- mean(data$income, na.rm = TRUE)
median_income <- median(data$income, na.rm = TRUE)

# Function to calculate mode (handling multiple modes)
get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode_income <- get_mode(data$income)

# Print the results
cat("Minimum Income:", min_income, "\n")
cat("Maximum Income:", max_income, "\n")
cat("Mean Income:", mean_income, "\n")
cat("Median Income:", median_income, "\n")
cat("Mode Income:", mode_income, "\n")





#Task 4

# Summary Statistics for Prestige, Education, and Income
summary_stats <- data %>% 
  select(prestige, education, income) %>% 
  summary()

# Print the summary statistics
print(summary_stats)





#Task 5 
# Function to create a bell curve for a given variable
plot_bell_curve <- function(data, column_name) {
  ggplot(data, aes(x = !!sym(column_name))) + 
    geom_histogram(aes(y = ..density..), bins = 30, fill = "blue", alpha = 0.4) + 
    geom_density(color = "red", size = 1.2) + 
    labs(title = paste("Bell Curve of", column_name),
         x = column_name,
         y = "Density") +
    theme_minimal()
}

# Plot Bell Curves for Prestige, Education, and Income
plot_bell_curve(data, "prestige")
plot_bell_curve(data, "education")
plot_bell_curve(data, "income")


#Task 6 

# Check for missing values
sum(is.na(data$prestige))  # Check if Prestige has missing values
sum(is.na(data$type))  # Check if Type has missing values

# Convert occupation type to a factor variable
data$type <- as.factor(data$type)

# Check structure of dataset
str(data)

# Check normality of Prestige by occupation type
shapiro.test(data$prestige)

# Levene’s Test for Homogeneity of Variance
leveneTest(prestige ~ type, data = data)

# Run one-way ANOVA
anova_result <- aov(prestige ~ type, data = data)

# View ANOVA summary
summary(anova_result)

# Perform Tukey’s Honest Significant Difference (HSD) Test
tukey_result <- TukeyHSD(anova_result)
print(tukey_result)

# Boxplot for Prestige by Occupation Type
ggplot(data, aes(x = type, y = prestige, fill = type)) +
  geom_boxplot(alpha = 0.6) +
  labs(title = "Comparison of Prestige by Occupation Type",
       x = "Occupation Type",
       y = "Prestige Score") +
  theme_minimal()




#Task 7

# Normality test for Education
shapiro.test(data$education)

# Perform Pearson correlation test
cor_test <- cor.test(data$prestige, data$education, method = "pearson")

# Print results
print(cor_test)

# Perform Spearman correlation test
cor_test_spearman <- cor.test(data$prestige, data$education, method = "spearman")

# Print results
print(cor_test_spearman)

# Scatter plot of Prestige vs Education
ggplot(data, aes(x = education, y = prestige)) +
  geom_point(color = "blue", alpha = 0.6) +  # Scatter points
  geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
  labs(title = "Relationship between Prestige and Education",
       x = "Education (Years)",
       y = "Prestige Score") +
  theme_minimal()




#Task 8
# Check for missing values in Prestige and Income
sum(is.na(data$prestige))  # Missing values in Prestige
sum(is.na(data$income))  # Missing values in Income

# Normality test for Prestige
shapiro.test(data$prestige)
# Normality test for Income
shapiro.test(data$income)


# Perform Pearson correlation test
cor_test <- cor.test(data$prestige, data$income, method = "pearson")
# Print results
print(cor_test)

# Perform Spearman correlation test
cor_test_spearman <- cor.test(data$prestige, data$income, method = "spearman")
# Print results
print(cor_test_spearman)
# Scatter plot of Prestige vs Income

ggplot(data, aes(x = income, y = prestige)) +
  geom_point(color = "blue", alpha = 0.6) +  # Scatter points
  geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
  labs(title = "Relationship between Prestige and Income",
       x = "Income (Dollars)",
       y = "Prestige Score") +
  theme_minimal()



#Task 9
# Check for missing values in Prestige and Women Percentage
sum(is.na(data$prestige))  # Missing values in Prestige
sum(is.na(data$women))  # Missing values in Women Percentage
# Normality test for Prestige
shapiro.test(data$prestige)
# Normality test for Women Percentage
shapiro.test(data$women)
# Perform Pearson correlation test
cor_test <- cor.test(data$prestige, data$women, method = "pearson")
# Print results
print(cor_test)
# Perform Spearman correlation test
cor_test_spearman <- cor.test(data$prestige, data$women, method = "spearman")
# Print results
print(cor_test_spearman)
# Scatter plot of Prestige vs Women Percentage
ggplot(data, aes(x = women, y = prestige)) +
  geom_point(color = "blue", alpha = 0.6) +  # Scatter points
  geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
  labs(title = "Relationship between Prestige and Women Percentage",
       x = "Percentage of Women in Occupation",
       y = "Prestige Score") +
  theme_minimal()


