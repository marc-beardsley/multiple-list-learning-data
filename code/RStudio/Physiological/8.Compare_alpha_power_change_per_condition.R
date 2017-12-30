#Is there a difference between conditions in change in alpha power from L1 to L3
  # Change in alpha power (L3-L1)/L1 per participant
  # Averaged across words in wordlist
  # Averaged across significant electrodes only
      #O2 0.04587, P8 0.02631, (FC6 0.06058)
  # (Outliers removed)

#O2 0.04587, P8 0.02631, (FC6 0.06058)


setwd("~/Desktop/temp")
library(gdata)
dat <- read.csv("7c_Analysis/AF4-P7-FC6.csv")
L1 <- subset(dat, Cond == 1)
L3 <- subset(dat, Cond == 2)

#2. MEAN & SD 
mean(subset(dat, Cond == 1)$Alpha)
sd(subset(dat, Cond == 1)$Alpha)

mean(subset(dat, Cond == 2)$Alpha)
sd(subset(dat, Cond == 2)$Alpha)

#-----------------------------
#3. COMPARE Conditions
#(A) Test for Normality
#Shapiro-Wilk Test l
with(dat, tapply(dat$Alpha, dat$Cond, shapiro.test)) 
## RESULT: 
#Condition == 1 not normal p-value = 0.00421

#-----------------------------
#(B) Test for homogeneity of variances.
#Fligner-Killeen Test (non-parametric test)
#-- if greater than 0.05 then homogeneity cannnot be rejected
fligner.test(Alpha ~ Cond, data=dat)
## RESULT: 
#p-value = 0.8632

#-----------------------------
#(C) Non-parametric T-test
#NON-PARAMETRIC (Mann Whitney Wilcoxon) - common for two independent groups
wilcox.test(Alpha ~ Cond, data=dat, paired=FALSE, alternative = "two.sided")


# Welch-Satterthwaite
a <- subset(dat$Alpha, dat[,"Cond"] == 1)
b <- subset(dat$Alpha, dat[,"Cond"] == 2)
t.test(a,b, var.equal=FALSE, paired=FALSE)

