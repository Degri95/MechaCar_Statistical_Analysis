library(dplyr)

#Importing MPG Data
MechaData <- read.csv("MechaCar_mpg.csv")

#Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaData)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaData))

# Importing suspension data
SuspensionData <- read.csv("Suspension_coil.csv")

# Total summary
total_summary <- SuspensionData %>% summarize(Mean=mean(SuspensionData$PSI),
                                              Median=median(SuspensionData$PSI),
                                              Variance=var(SuspensionData$PSI),
                                              SD=sd(SuspensionData$PSI))

# Lot summary
lot_summary <- SuspensionData %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                            Median=median(PSI),
                                                                            Variance=var(PSI),
                                                                            SD=sd(PSI))
# T Test on all manufacturers
t.test(SuspensionData$PSI, mu=1500)
# T Test on lot1
t.test(subset(SuspensionData, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
# T Test on lot2
t.test(subset(SuspensionData, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
# T Test on lot3
t.test(subset(SuspensionData, Manufacturing_Lot == "Lot3")$PSI, mu=1500)
