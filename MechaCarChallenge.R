library(dplyr)
MechaData <- read.csv("MechaCar_mpg.csv")
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaData)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaData))


SuspensionData <- read.csv("Suspension_coil.csv")
total_summary <- SuspensionData %>% summarize(Mean=mean(SuspensionData$PSI),
                                              Median=median(SuspensionData$PSI),
                                              Variance=var(SuspensionData$PSI),
                                              SD=sd(SuspensionData$PSI))

lot_summary <- SuspensionData %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                            Median=median(PSI),
                                                                            Variance=var(PSI),
                                                                            SD=sd(PSI))