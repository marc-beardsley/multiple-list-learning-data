# Which electrodes reflect encoding activity for the tasks 
  # Compare the first half of list values vs. last half of list values 
  # Which electrodes show a significant differences between the first and last halves of the lists

# - Paired T-Test (if normally distributed data - Shapiro-Wilk test of normality)
# - Paired Samples Wilcoxon Test (if data symmetrical in shape)
# - Two Sample Sign Test (if above tests not appilcable, use sign test but has less power)

setwd("~/Desktop/temp")
Electrodes <- c("AF3", "AF4", "F3", "F4", "F7", "F8", "FC5",
                "FC6", "T7", "T8", "P7", "P8", "O1", "O2")

############## 
dat <- read.csv("5_Average_Alpha/L1_Summary.csv") 

dat_new <- dat[-c(1), ]
dat_f10 <- dat_new[dat_new$X.1 == "F10", 3:16]
dat_l10 <- dat_new[dat_new$X.1 == "L10", 3:16]

####### PAIRED T-TEST ####### 
for(i in Electrodes){
  before <- dat_f10[, i]
  after <- dat_l10[, i]
  results_normality <- shapiro.test(dat_new[, i]) #test for normality
  results_ttest <- t.test(before, after, paired = TRUE, alternative = "two.sided")
  sink('6_Significant_Electrodes/TTest.txt',append=TRUE) #writes results to a txt file
  print(i)
  print(results_normality)
  print(results_ttest)
  sink()  
}

####### WILCOXON SIGNED RANK TEST ####### 
library(e1071) #library for skewness and kurtosis (library(moments) as well)
for(i in Electrodes){
  before <- dat_f10[, i]
  after <- dat_l10[, i]
  results_skewness <- skewness(dat_new[1:67, i], na.rm = TRUE)
  results_wilcoxon <- wilcox.test(before, after, paired = TRUE, na.rm = TRUE )
  sink('6_Significant_Electrodes/SignedRankTest.txt',append=TRUE)
  print(i)
  print(results_skewness)
  print(results_wilcoxon)
  sink()
}

####### SIGN RANK TEST ####### 
library(BSDA)
for(i in Electrodes){
  before <- dat_f10[, i]
  after <- dat_l10[, i]
  results_signtest <- SIGN.test(before,
                       after,
                       alternative = "two.sided",
                       conf.level = 0.95)
  sink('6_Significant_Electrodes/SignRankTest.txt',append=TRUE)
  print(i)
  print(results_signtest)
  sink()
}

# ####### TEST FOR SKEWNESS OF DATA ####### 
# # nrow(dat_all)
# 
# library(moments)
# for(i in Electrodes){
#   before <- dat_f10[, i]
#   after <- dat_l10[, i]
#   results_skewness <- skewness(dat_new[1:66, i], na.rm = TRUE)
#   results_kurtosis <- kurtosis(dat_new[1:66, i], na.rm = TRUE)
#   print(i)
#   print(results_skewness)
#   print(results_kurtosis)
# }
# 
# # A symmetrical dataset will have a skewness equal to 0.  
# # So, a normal distribution will have a skewness of 0.   
# # Skewness essentially measures the relative size of the two tails.
# # The rule of thumb seems to be:
#   # If the skewness is between -0.5 and 0.5, the data are fairly symmetrical
#   # If the skewness is between -1 and -0.5 or between 0.5 and 1, the data are moderately skewed
#   # If the skewness is less than -1 or greater than 1, the data are highly skewed
# 
# # The kurtosis of the normal distribution is equal to 3.
# # If the kurtosis is greater than 3, then the dataset has heavier tails than a normal distribution (more in the tails).
# # If the kurtosis is less than 3, then the dataset has lighter tails than a normal distribution (less in the tails).  
# # source: https://www.spcforexcel.com/knowledge/basic-statistics/are-skewness-and-kurtosis-useful-statistics