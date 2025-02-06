# Occupational Prestige Analysis for Sri Lanka's Ministry of Industry and Commerce

This repository contains the analysis and findings regarding occupational prestige in Sri Lanka, conducted for the Ministry of Industry and Commerce. The analysis utilizes statistical methods and data science techniques to identify factors influencing occupational prestige and provide data-driven recommendations for workforce planning and policy-making.

## Table of Contents

1. [Introduction](#introduction)
2. [Task 1: Advantages of Business Analytics](#task-1-advantages-of-business-analytics)
3. [Task 2: Tools, Techniques, and Methodologies](#task-2-tools-techniques-and-methodologies)
4. [Task 10: Conclusion and Recommendations](#task-10-conclusion-and-recommendations)
5. [Data](#data)
6. [Code](#code)
7. [Methodology](#methodology)
8. [Limitations](#limitations)
9. [Contributing](#contributing)
10. [License](#license)

## 1. Introduction

This project aims to analyze the factors contributing to occupational prestige in Sri Lanka. By understanding these factors, the Ministry of Industry and Commerce can develop effective policies to enhance workforce planning, support high-prestige professions, and promote sustainable economic growth.  The modern economy generates vast amounts of data, and this project demonstrates how business analytics can transform that data into meaningful insights for decision-makers.

## 2. Task 1: Advantages of Business Analytics

Business analytics (BA) uses statistical techniques, data mining, predictive modeling, and machine learning to extract insights from raw data.  For the Ministry, BA is crucial for human resource planning, policy formulation, and national development strategies.  It empowers data-driven governance, enabling effective resource allocation, industry trend identification, and evidence-based policy implementation.

BA supports decision-making at three levels:

* **Operational:** Optimizes workforce planning by analyzing employment trends and predicting job demand. Example: Tracking employment status of skilled professionals and identifying hiring gaps.
* **Tactical:** Analyzes labor market trends to efficiently allocate resources across sectors and identify high-prestige professions needing support. Example: Addressing gender disparities in employment.
* **Strategic:** Forecasts future economic growth and labor demand to create policies aligning education with market needs. Example: Investing in STEM education based on projected demand.

Real-world examples include forecasting industry growth, identifying labor shortages in high-prestige jobs, and optimizing workforce distribution.

## 3. Task 2: Tools, Techniques, and Methodologies

This analysis uses R programming with specialized libraries:

* **R:** Statistical computing language.
* **ggplot2:** Visualization.
* **dplyr:** Data manipulation.
* **car:** Regression analysis and hypothesis testing.
* **readr:** Importing CSV files and handling missing data.
* **shapiro.test():** Normality testing.
* **t.test():** Comparing means between two groups.
* **aov() (ANOVA):** Comparing means among multiple groups.
* **lm() (Linear Regression):** Identifying relationships between variables.

Techniques and methods include:

* **Descriptive Statistics:** Summarizing data (mean, median, etc.).
* **Data Visualization:** Histograms, scatter plots, etc.
* **Hypothesis Testing:** T-tests, ANOVA, correlation analysis.
* **Regression Analysis:** Linear models to analyze variable impact.
* **Correlation Analysis:** Measuring relationship strength.
* **Normality Testing:** Shapiro-Wilk test.

The methodology follows these steps:

1. Data Cleaning and Preprocessing: Handling missing values, converting categorical variables.
2. Exploratory Data Analysis (EDA): Summary statistics, data visualization.
3. Hypothesis Testing: Formulating hypotheses, conducting tests.
4. Regression Analysis: Fitting linear regression models.
5. Interpretation and Reporting: Providing statistical interpretations and recommendations.

## 4. Task 10: Conclusion and Recommendations

Key Findings:

* **Education:** Significant positive correlation with prestige.
* **Income:** Strong positive relationship with prestige.
* **Women Percentage:** No statistically significant relationship with prestige.

Regression Analysis confirmed these findings.

Recommendations:

1. **Strengthen Education:** Invest in higher education and vocational training.
2. **Increase Salaries:** Implement wage growth strategies in high-prestige industries.
3. **Gender-Inclusive Policies:** Ensure equal opportunities without gender bias.
4. **Predictive Analytics:** Use machine learning for workforce planning.

## 5. Data

The dataset used for this analysis is the "Occupational Prestige in Sri Lanka" dataset. It includes information on education levels, income, gender representation, and prestige scores for various occupations.  *(Provide specific details about the dataset: source, size, variables, and how to access it. If it's not publicly available, explain the process for obtaining it.)*  For example:  "The dataset was provided by the Ministry of Industry and Commerce and contains data from [Year] on [Number] occupations."

## 6. Code

The R code for this analysis is in the `code` directory. The main script is `prestige_analysis.R`.

To run the code:

1. Ensure you have R and the necessary packages installed: `install.packages(c("ggplot2", "dplyr", "car", "readr"))`
2. Navigate to the `code` directory.
3. Run the script: `Rscript prestige_analysis.R`  *(Or explain any other specific execution instructions.)*

## 7. Methodology

The analysis involved data cleaning, EDA, hypothesis testing (t-tests, ANOVA, correlation analysis), and multiple linear regression.  *(Provide a more detailed explanation of the statistical methods used and the rationale behind them.  Refer to the code for specific implementation details.)*

## 8. Limitations

* **Dataset Limitations:** The dataset may have limitations in scope, recency, or representativeness.
* **External Factors:** Other factors influencing prestige may not be included in the model.
* **Simplified Model:** Linear regression may not capture complex interactions between variables.

## 9. Contributing

Contributions are welcome! Please submit pull requests or open issues for discussion.

## 10. License

This project is licensed under the [Specify License, e.g., MIT License].
