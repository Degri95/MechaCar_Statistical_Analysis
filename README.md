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

1. Which variables / coefficients provided a non-random amount of variance to the MPG values in the dataset?

    - When determining which variables provide a non-random amount of variance, each variables p-value must be examined. If a variables p-value is less than 0.05, it is statistically significant and unlikely to provide random amounts of variance. In this linear regression model **vehicle length** and **ground clearance** both have a p-value under 0.05. Which means that **vehicle length** and **ground cleanrence** both have significant impact on MPG.

2. Is the slope of the linear model considered to be zero? Why or why not?

    - To determine if the slope of the linear model is not zero, we can look at the p-value of the regression summary. The p-value is **5.35e-11**, which means that is significantly smaller than the assumed significance level of 0.05. Therefore we can reject the a null hypothesis, which means the slope of the linear model is not zero.

3. Does this linear model predict MPG of MechaCar prototypes effectively? Why or why not?

    - To determine if the model predicts the MPG of the MechaCar prototypes effectively, we must look at the r-squared value. The r-squared value was **.7149**, which means that roughly 71% of the variablilty can be explained using this model. With a 71% effective prediction rate, this model should be effective in predicting MPG.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed **100 pounds per square inch**. Lets dive into the suspension data. An Rscript was created to create two dataframes. One that summarized all lots, and one that was grouped by each lot.

### All Manufacturing Lots
![All Manufacturing lots](/Resources/total_summary.PNG)

### Lot Summary
![Lot Summary](/Resources/lot_summary.PNG)

### Results

**Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

When looking at all manufacturing data, our variance is 62.29, resulting in the total manufacturing data being within the specifications. When we break our data down by lot, we can see that lot 3's variance is exponentially higher than lot 1 and 2. Lot 3's total variance is **170.28**, which is well outside of the variance threshold. Lot 3 does not meet the design specifications. 

## T-Tests on Suspension Coils

T-tests were completed on our data to determine if there is a statistical difference in PSI between the mean of our data and the provided population mean of 1,500.

#### All Manufacturing Lots
![T-Test All Manufacturing Lots](/Resources/T-test_all.PNG)

Looking at our all manufacturing lots T-test, we see that the mean is 1498.78, which matches the summary statistics dataframe above. The p-value for the all manufacturing lots T-test is 0.06, which is higher than the significance level of 0.05. The all manufacturing lots T-test concludes that it's mean and population mean are statistically similar.

#### Lot 1
![T-Test Lot 1](/Resources/T-test_lot1.PNG)

Lot 1 has a mean value of 1500 and a p-value of 1. Since the p-value is above the 0.05 significance level, Lot 1's mean and the population mean are statistically similar.

#### Lot 2
![T-Test Lot 2](/Resources/T-test_lot2.PNG)

Lot 2 has a mean value of 1500.2 and a p-value of 0.61. The p-value is also above the 0.05 significance level, so Lot 2's mean and the population mean are statistically similar.

#### Lot 3
![T-Test Lot 3](/Resources/T-test_lot3.PNG)

Lot 3 has a mean value of 1496.14 and a p-value of 0.04. The p-value is below the 0.05 significance level, meaning that Lot 3 and the population mean are statistically **different**.

#### Results

All manufacturing, Lot 1, and Lot 2 all show normal distribution. Lot 3 is the only lot with a p-value below the 0.05 significance level, which should be followed up with additional research. 

## Study Design: MechaCar vs Competition

Digging deeper into how a MechaCar would perform vs competition could be done with many statistical tests. Comparing MPG (city and highway) with selling cost could give insight on if MechaCars MPG vs cost is comparable to the competition.

#### What metric or metrics are you going to test?

Testing the selling price as the dependent variable and the MPG (city and highway) as the independent variable. Our results would show if MechaCars MPG vs cost relationship is similar to the competitions.

#### What is the null hypothesis or alternative hypothesis?

H0: MechaCars price is statistically similar to competition based on MPG and cost. <br>
Ha: MechaCars price is statistically different to competition based on MPG and cost.

#### What statistical test would you use to test the hypothesis? And why?

A linear regression would be used to test the hypothesis. Each data set would have a linear model created to show the relationship between the MPG and cost.

#### What data is needed to run the statistical test?

A sample size of MechaCars MPG with cost would be needed, along with the competitions. Around 50 of each would be sufficient. After the data is obtained we would be able to perform our linear regression and get our p-values and correlation. Future costs with the MPG vs cost would hopefully be able to be predicted as well.