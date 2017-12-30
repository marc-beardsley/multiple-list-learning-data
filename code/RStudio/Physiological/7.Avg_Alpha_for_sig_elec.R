# Calculate average alpha per list per participant for all electrodes
  # One file for L1 - all participants - average alpha power per electrode
  # One file for L3 - all participants - average alpha power per electrode
  # Calculating the alpha power change (L3-L1)/L1 and averaging across significant electrodes was done in Google Sheets

setwd("~/Desktop/temp")

########## L1 Means per Electrode per Participant ##########
file.names <- list.files("4_Outliers/L1/") # Select all files in directory
out.file.L1<-""

for(i in 1:length(file.names)){
  file <- read.csv(file=paste0("4_Outliers/L1/",file.names[i], sep=""))
  means.file <- colMeans(file, na.rm = TRUE, dims = 1) #Calculate mean for each row
  out.file.L1 <- rbind(out.file.L1, means.file) #Combine into one file
}
write.csv(out.file.L1, "7_Analysis/L1_All_Means.csv")

########## L3 Means per Electrode per Participant ##########
file.names.L3 <- list.files("4_Outliers/L3/") # Select all files in directory
out.file.L3<-""

for(i in 1:length(file.names.L3)){
  file <- read.csv(file=paste0("4_Outliers/L3/",file.names.L3[i], sep=""))
  means.file <- colMeans(file, na.rm = TRUE, dims = 1) #Calculate mean for each row
  out.file.L3 <- rbind(out.file.L3, means.file) #Combine into one file
}
write.csv(out.file.L3, "7_Analysis/L3_All_Means.csv")