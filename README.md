# MechaCar_Statistical_Analysis
Statistical study on MechaCar's with R.

## Overview

In this project a statistical analysis is done on a fictional companies newest car prototype. The company AutosRU's has a new prototype called the MechaCar. MechaCar is suffering from production troubles that are hindering the manufacturing teams progress. To help the company, 4 statistical analyses will be done to give insight.

- Linear Regression to Predict MPG
- Summary Statistics on Suspension Coils
- T-Test on Suspension Coils
- Study Comparing the MechaCar to the competition

## Linear Regression to predict MPG

![Linear Regression Results](/Resources/MPG_Regression.PNG)

In this analysis linear regression was done to predict the MPG of MechaCar prototypes using several variables from our data. Metrics include vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance.

1. Which variables / coefficients provided a non-random amount of variance to the mpg values in the dataset?

    - When determining which variables provide a non-random amount of variance, each variables p-value must be examined. If a variables p-value is less than 0.05, it is statistically significant and unlikely to provide random amounts of variance. In this linear regression model **vehicle length** and **ground clearance** both have a p-value under 0.05. Which means that **vehicle length** and **ground cleanrence** both have significant impact on MPG.

2. Is the slope of the linear model considered to be zero? Why or why not?

    - to determine if the slope of the linear model is not zero, we can look at the p-value of the regression summary. The p-value is 5.35e-11, which means that is significantly smaller than the assumed significance level of 0.05. Therefore we can reject the a null hypothesis, which means the slope of the linear model is not zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    - To determine if the model predicts the mpg of the MechaCar prototypes effectively, we must look at the r-squared value. The r-squared value was .7149, which means that roughly 71% of the variablilty can be explained using this model. With a 71% effective prediction rate, this model should be effective in predicting mpg.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed **100 pounds per square inch**. Lets dive into the suspension data. An Rscript was created to create two dataframes. One that summarized all lots, and one that was grouped by each lot.

### All Manufacturing Lots
![All Manufacturing lots](/Resources/total_summary.PNG)

### Lot Summary
![Lot Summary](/Resources/lot_summary.PNG)

### Results

**Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

When looking at all manufacturing data, our variance is 62.29, resulting in the total Manufacturing data being within the specifications. When we break our data down by lot, we can see that lot 3's variance is exponentially higher than lot 1 and 2. Lot 3's total variance is 170.28, which is well outside of the variance threshold. Lot 3 does not meet the design specifications. 

## T-Tests on Suspension Coils

T-tests where completed on our data to determine if there is a statistical difference in PSI between the mean of our data and the provided population mean of 1,500.

#### All Manufacturing Lots
![T-Test All Manufacturing Lots](/Resources/T-test_all.PNG)

#### Lot 1
![T-Test Lot 1](/Resources/T-test_lot1.PNG)

#### Lot 2
![T-Test Lot 2](/Resources/T-test_lot2.PNG)

#### Lot 3
![T-Test Lot 3](/Resources/T-test_lot3.PNG)