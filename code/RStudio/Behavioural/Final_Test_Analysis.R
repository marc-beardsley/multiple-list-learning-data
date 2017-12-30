#-----------------------------
#1. SET WORKSPACE: working directory, libraries, and load files
setwd(" ")
library(gdata)
dat <- read.csv("Behavioural_analysis_RStudio/Behavioural_data_summary_2017.csv")
head(dat) #show column headings

#-----------------------------
#2. MEAN & SD PER ConditionITION: Final score Mean & SD per Conditionition
mean(subset(dat, Condition == 1)$Final_Score)
sd(subset(dat, Condition == 1)$Final_Score)
# M = 11.90909 SD = 3.753209

mean(subset(dat, Condition == 2)$Final_Score)
sd(subset(dat, Condition == 2)$Final_Score)
# M = 9.083333 SD = 3.348155

#-----------------------------
#3. COMPARE Conditions
#(A) Test for Normality
#Shapiro-Wilk Test 
#-- for small sample sizes (< 50 samples)
#-- if greater than 0.05 then data is normal
with(dat, tapply(dat$Final_Score, dat$Condition, shapiro.test)) 
## Normal p-value = 0.8456, p-value = 0.764

#-----------------------------
#(B) Test for homogeneity of variances.
#Levenes Test (more robust to departures from normality)
library(car)
leveneTest(Final_Score ~ Condition_ID, data=dat)
# p-value = 0.8147  #cannot rejectnull hypothesis that the variance is equal across groups

#-----------------------------
#(C) Independent T-test
# if normal (t-test)
t.test(dat$Final_Score~dat$Condition, var.equal = TRUE)
#This study found that participants performing free recall tests after L1 and L2 
#recalled a statistically significant higher number of words (M = 11.91 SD = 3.75) on the Final Test
#compared to participants who were shown the L1 and L2 words for restudy (M = 9.08 SD = 3.35)
#t(44) = 2.699, p = 0.0098 95% CI [0.72, 4.94].

#-----------------------------
#5. CALCULATE EFFECTS
# d = 0.797 (http://www.psychometrica.de/effect_size.html#cohenb)
# 95% CI -1.398  -0.196

library ("lsr")
dat_new <- dat[complete.cases(dat), ]
cohensD(dat_new$Condition, dat$Final_Score)
#Cohen's d estimate: 3.299411 (large)
#95 percent confidence interval: -1.9310215 -0.9980448 


#-----------------------------
library ("lsr")
dat_new <- dat[complete.cases(dat), ]

#Correlation
correlate(dat_new$Condition, dat_new$Final_Score)
#-0.377 (pearson)
correlate(dat_new$Condition, dat_new$Final_Instrusions)
#0.258 (pearson)
