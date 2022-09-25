# MechaCar_Statistical_Analysis
Statistical study on MechaCar's with R.

## Overview

In this project a statistical analysis is done on a fictional companies newest car prototype. The company AutosRU's has a new prototype called the MechaCar. MechaCar is suffering from production troubles that are hindering the manufacturing teams progress. To help the company, 4 statistical analyses will be done to give insight.

- Linear Regression to Predict MPG
- Summary Statistics on Suspension Coils
- T-Test on Suspension Coils
- Study Comparing the MechaCar to the competition

## Results

### Linear Regression to predict MPG

![Linear Regression Results](/Resources/MPG_Regression.PNG)

In this analysis linear regression was done to predict the MPG of MechaCar prototypes using several variables from our data. Metrics include vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance.

1. Which variables / coefficients provided a non-random amount of variance to the mpg values in the dataset?

    - When determining which variables provide a non-random amount of variance, each variables p-value must be examined. If a variables p-value is less than 0.05, it is statistically significant and unlikely to provide random amounts of variance. In this linear regression model **vehicle length** and **ground clearance** both have a p-value under 0.05. Which means that **vehicle length** and **ground cleanrence** both have significant impact on MPG.

2. Is the slope of the linear model considered to be zero? Why or why not?

    - to determine if the slope of the linear model is not zero, we can look at the p-value of the regression summary. The p-value is 5.35e-11, which means that is significantly smaller than the assumed significance level of 0.05. Therefore we can reject the a null hypothesis, which means the slope of the linear model is not zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    - To determine if the model predicts the mpg of the MechaCar prototypes effectively, we must look at the r-squared value. The r-squared value was .7149, which means that roughly 71% of the variablilty can be explained using this model. With a 71% effective prediction rate, this model should be effective in predicting mpg.

### Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Lets dive into the suspension data.

#### All Manufacturing Lots
![All Manufacturing lots](/Resources/total_summary.PNG)

#### Lot Summary
![Lot Summary](/Resources/lot_summary.PNG)

#### Results


