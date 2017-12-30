#-----------------------------
#1. SET WORKSPACE: working directory, libraries, and load files
setwd(" ")
library(gdata)
dat <- read.csv("Behavioural_analysis_RStudio/Behavioural_data_summary_2017.csv")
head(dat) #show column headings

#-----------------------------
#2. MEAN & SD PER CONDITION: L3 score Mean & SD per Condition
mean(subset(dat, Condition == 1)$L3_Score)
sd(subset(dat, Condition == 1)$L3_Score)
mean(subset(dat, Condition == 2)$L3_Score)
sd(subset(dat, Condition == 2)$L3_Score)
#(1) M = 6.318182 SD = 1.835791 (2) M = 2.333333 SD = 1.403928

#-----------------------------
#3. COMPARE Conditions
#(A) Test for Normality
#Shapiro-Wilk Test 
#-- for small sample sizes (< 50 samples)
#-- if greater than 0.05 then data is normal
with(dat, tapply(dat$L3_Score, dat$Condition, shapiro.test)) 
## RESULT: 
#Condition 1 not normal p-value = 0.01274 (Condition 2 = p-value = 0.09292)

#-----------------------------
#(B) Test for homogeneity of variances.
#Fligner-Killeen Test (non-parametric test)
#-- if greater than 0.05 then homogeneity cannnot be rejected
fligner.test(L3_Score ~ Condition, data=dat)
## RESULT: 
#p-value = 0.05668

#-----------------------------
#Alternative Non-parametric test
#Mann Whitney Wilcoxon U Test
#NON-PARAMETRIC (Mann Whitney Wilcoxon) - common for two independent groups
wilcox.test(L3_Score ~ Condition, data=dat, paired=FALSE, conf.int = TRUE)
#W = 509, p-value = 5.831e-08 (0.00000005831)
#95 percent confidence interval: 2.999978 5.000052
#-- At .05 significance level, we conclude that the (L3 Scores) of Conditionitions 1 and 2 in dat are nonidentical populations.
## RESULT: 
#If we were to replicate the study 100000000 times we'd be wrong 5.8 times (e.g. 0.00000005831).
#W is equivalent to U

# To get exact p-value
library(coin)
A <- subset(dat, Condition == 1)
B <- subset(dat, Condition == 2)

g = factor(c(rep("A", length(A$L3_Score)), rep("B", length(B$L3_Score))))
v = c(A$L3_Score, B$L3_Score)
wilcox_test(v ~ g, distribution="exact")
#Z = 5.435, p-value = 1.757e-10 (0.0000000001757)

# To get effect size rs
Z = 5.435
Z / sqrt(46)
r = 0.801347 # Effect size

#Convert and Check Effect Size
# d = 2.615 (http://www.psychometrica.de/effect_size.html#nonparametric)


#-----------------------------
library ("lsr")
dat_new <- dat[complete.cases(dat), ]

#Correlation
correlate(dat_new$Condition, dat_new$L3_Score, corr.method="spearman")
#-0.810 (spearman)
correlate(dat_new$Condition, dat_new$L3_Intrusions, corr.method="spearman")
#0.590 (spearman)