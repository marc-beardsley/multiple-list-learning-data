# Calculate alpha power per segment per electrode
#   Calculate alpha power for L1 for first 10 words
#   Calculate alpha power for L1 for last 10 words
#   Combine into a single file with F10 (first 10) and L10 (last 10) means per participant for L1

########## L1 Means for First 10 and Last 10 words per participant ########## 
setwd("~/Desktop/temp")

file.names <- list.files("4_Outliers/L1/") # Select all files in directory
out.file <- ""
         
for(i in 1:length(file.names)){
  file <- read.csv(paste("4_Outliers/L1/",file.names[i], sep = ""))
  F10 <- colMeans(file[1:10,2:16], na.rm = TRUE, dims = 1) #Mean for first 10 rows
  L10 <- colMeans(file[11:20,2:16], na.rm = TRUE, dims = 1) #Mean for last 10 rows
  out.file <- rbind(out.file, F10, L10) #Combine into one file
}

write.csv(out.file, "5_Average_Alpha/L1_Summary.csv")

# ########## L3 Means for First 10 and Last 10 words per participant ########## 
# 
# file.names <- list.files("4_Outliers/L3/") # Select all files in directory
# out.file <- ""
# 
# for(i in 1:length(file.names)){
#   file <- read.csv(paste("4_Outliers/L3/",file.names[i], sep = ""))
#   F10 <- colMeans(file[1:10,2:16], na.rm = TRUE, dims = 1) #Mean for first 10 rows
#   L10 <- colMeans(file[11:20,2:16], na.rm = TRUE, dims = 1) #Mean for last 10 rows
#   out.file <- rbind(out.file, F10, L10) #Combine into one file
# }
# 
# write.csv(out.file, "5_Average_Alpha/L3_Summary.csv")
