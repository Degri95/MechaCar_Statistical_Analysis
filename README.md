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

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?