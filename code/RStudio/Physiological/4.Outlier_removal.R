# Remove outliers from EEG data (e.g. blinks, etc. still may be present)
  # Identify based on 1.5*IQR
  # Replace outliers with NA
  # Write to separate directories for L1 and L3

# To run code, enter participant ID (ID = 00) and run all code.
  # When run in a for loop, the outliers weren't being removed (update in future)

#-----------------------------------------
# (1) Set WD
setwd("~/Desktop/temp")

# (2) Run the function
#Source: https://www.r-bloggers.com/identify-describe-plot-and-remove-the-outliers-from-the-dataset/

outlierKD <- function(dt, var) {
  var_name <- eval(substitute(var),eval(dt))
  na1 <- sum(is.na(var_name))
  m1 <- mean(var_name, na.rm = T)
  par(mfrow=c(2, 2), oma=c(0,0,3,0))
  boxplot(var_name, main="With outliers")
  hist(var_name, main="With outliers", xlab=NA, ylab=NA)
  outlier <- boxplot.stats(var_name)$out
  mo <- mean(outlier)
  var_name <- ifelse(var_name %in% outlier, NA, var_name)
  boxplot(var_name, main="Without outliers")
  hist(var_name, main="Without outliers", xlab=NA, ylab=NA)
  title("Outlier Check", outer=TRUE)
  na2 <- sum(is.na(var_name))
  cat("Outliers identified:", na2 - na1, "n")
  cat("Propotion (%) of outliers:", round((na2 - na1) / sum(!is.na(var_name))*100, 1), "n")
  cat("Mean of the outliers:", round(mo, 2), "n")
  m2 <- mean(var_name, na.rm = T)
  cat("Mean without removing outliers:", round(m1, 2), "n")
  cat("Mean if we remove outliers:", round(m2, 2), "n")
  dt[as.character(substitute(var))] <- invisible(var_name)
  assign(as.character(as.list(match.call())$dt), dt, envir = .GlobalEnv)
  cat("Outliers successfully removed", "n")
  return(invisible(dt))
  
}

# ---------------------------- 
# (3) Enter file ID (Participant ID) - then select all the code and run it
ID <- 3

############################ Read Files
dat <- read.csv(file=paste0("3_Clean/L1/",ID,".csv"))
dat_L3 <- read.csv(file=paste0("3_Clean/L3/",ID,".csv"))

############################ Remove Outliers
outlierKD(dat, AF3)
outlierKD(dat, AF4)
outlierKD(dat, F3)
outlierKD(dat, F4)
outlierKD(dat, F7)
outlierKD(dat, F8)
outlierKD(dat, FC5, na.rm=TRUE)
outlierKD(dat, FC6)
outlierKD(dat, T7)
outlierKD(dat, T8)
outlierKD(dat, P7)
outlierKD(dat, P8)
outlierKD(dat, O1)
outlierKD(dat, O2)

outlierKD(dat_L3, AF3) 
outlierKD(dat_L3, AF4)
outlierKD(dat_L3, F3)
outlierKD(dat_L3, F4)
outlierKD(dat_L3, F7)
outlierKD(dat_L3, F8)
outlierKD(dat_L3, FC5)
outlierKD(dat_L3, FC6)
outlierKD(dat_L3, T7)
outlierKD(dat_L3, T8)
outlierKD(dat_L3, P7)
outlierKD(dat_L3, P8)
outlierKD(dat_L3, O1)
outlierKD(dat_L3, O2)

############################ Write Files

write.csv(dat, file=paste0("4_Outliers/L1/",ID,".csv"))
write.csv(dat_L3, file=paste0("4_Outliers/L3/",ID,".csv"))
