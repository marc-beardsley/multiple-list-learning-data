# To extract L1 & L3 EEG signals as timing of 2015 and 2017 trials differ slightly
# Writes a .csv file per list (1 and 3) per participant
  #L1 is Wordlist 1, L3 is Wordlist 3
    # 2017 L1 23s (0:00:23) to 87s (0:01:27) // Row 246:931
    # 2017 L3 357s (0:05:57) to 421s (0:07:01) // Row 3808:4494
    # 2015 L1 93s (01:33) to 157s (02:37) // Row 992:1676
    # 2015 L3 427s (0:07:07) to 491s (0:08:11) Row 4555:5241

# -------------- 2017 Files -----------------------
# (1) Set WD
setwd("~/Desktop/temp")

file.names <- list.files("Original/2017/") # Select all files in directory
out.file <- ""

for(i in 1:length(file.names)){
  # (2) Read .csv file
  path <- "Original/2017/"
  file <- read.csv(paste(path,file.names[i], sep=""))
  
  # (3) Select data (rows and columns)
  L1 <- file[c(246:931),] #Prestimulus of word 1 to end of onset of word 20
  L3 <- file[c(3808:4494),] 

  # (4) Write .csv file
  colnames(L1) <- c("Time (s)","AF3","AF4","F3","F4","F7","F8","FC5","FC6","T7","T8","P7","P8","O1","O2","Sampling Rate")
  colnames(L3) <- c("Time (s)","AF3","AF4","F3","F4","F7","F8","FC5","FC6","T7","T8","P7","P8","O1","O2","Sampling Rate")
  write.csv(L1, paste('1_Working/L1/', file.names[i], sep=""))
  write.csv(L3, paste('1_Working/L3/', file.names[i], sep=""))
}


# -------------- 2015 Files -----------------------
# (1) Set WD
setwd("~/Desktop/temp")

file.names <- list.files("Original/2015/") # Select all files in directory
out.file <- ""

for(i in 1:length(file.names)){
  # (2) Read .csv file
  path <- "Original/2015/"
  file <- read.csv(paste(path,file.names[i], sep=""))
  
  # (3) Select data (rows and columns)
  L1 <- file[c(992:1676),]
  L3 <- file[c(4555:5241),] 
  
  # (4) Write .csv file
  colnames(L1) <- c("Time (s)","AF3","AF4","F3","F4","F7","F8","FC5","FC6","T7","T8","P7","P8","O1","O2","Sampling Rate")
  colnames(L3) <- c("Time (s)","AF3","AF4","F3","F4","F7","F8","FC5","FC6","T7","T8","P7","P8","O1","O2","Sampling Rate")
  write.csv(L1, paste('1_Working/L1/', file.names[i], sep=""))
  write.csv(L3, paste('1_Working/L3/', file.names[i], sep=""))
}
