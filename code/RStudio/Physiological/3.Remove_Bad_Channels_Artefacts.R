# Remove bad channels and words from L1 and L3 files per participant
  # Values for bad channels and bad words are in a csv file
  # Unfortunately the code is inefficient and very manual
  # Creates updated L1 and L3 files per participant

# To run code, enter participant ID (ID = 00) 
# Paste in bad channels and bad words from csv file (in future replace with loop)
# Run all the code 
# Writes L1 and L3 files into same directory (better to separate)
#-----------------------------------------
setwd("~/Desktop/temp")
names <- c("AF3", "AF4", "F3", "F4", "F7", "F8", "FC5", "FC6", "T7", "T8", "P7", "P8", "O1", "O2")

## Enter file ID
ID <- 66
bad_channels <- c("F7", "F8", "FC5", "P7")
bad_words <- c(4, 5, 7, 12, 14, 18)
bad_words_L3 <- c(2:4, 10, 16, 19)
                  
## Read file
dat <- read.csv(file=paste0("2_Power/L1_",ID,".csv"))
dat_L3 <- read.csv(file=paste0("2_Power/L3_",ID,".csv"))

## Replace bad channel data
dat[, bad_channels] <- NA
dat_L3[, bad_channels] <- NA

## Replace bad word data
dat[bad_words,] <- NA
dat_L3[bad_words_L3,] <- NA

## Create new data frame per electrode
dat_new <- dat[, names]
dat_new_L3 <- dat_L3[, names]
dat_new$ID <- ID
dat_new_L3$ID <- ID

## Write files with new data per participant
write.csv(dat_new, file=paste0("3_Clean/L1/",ID, ".csv"))
write.csv(dat_new_L3, file=paste0("3_Clean/L3/",ID, ".csv"))
