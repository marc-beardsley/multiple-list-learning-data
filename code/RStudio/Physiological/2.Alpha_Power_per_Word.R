#Calculate the alpha power change per word
  #(Onset - Prestimulus / Prestimulus) 
  #per word -- Words 1 to 20
  #per channel -- names <- c("AF3","AF4","F3","F4","F7","F8","FC5","FC6","T7","T8","P7","P8","O1","O2")
  #write to a single file per participant per list

#-----------------------------------------
# (1) Set WD
setwd("~/Desktop/temp")

# LIST 1 - START -------------------------
file.names <- list.files("1_Working/L1/") # Select all files in directory
out.file <- ""

for(i in 1:length(file.names)){
  # (2) Read .csv file
  path <- "1_Working/L1/"
  dat <- read.csv(paste(path,file.names[i], sep=""))

  ## Calculate Alpha Power for WORD 1 
  Pre1 <- colMeans(dat[c(6:12),3:17], na.rm = TRUE) ## Prestimulus
  Onset1 <- colMeans(dat[c(20:33),3:17], na.rm = TRUE) ## Word Onset
  Word1 <- (Onset1 - Pre1)/Pre1 ## Word Power
  
  ## Calculate Alpha Power for WORD 2 
  Pre2 <- colMeans(dat[c(41:46),3:17], na.rm = TRUE) ## Prestimulus
  Onset2 <- colMeans(dat[c(54:67),3:17], na.rm = TRUE) ## Word Onset
  Word2 <- (Onset2 - Pre2)/Pre2 ## Word Power
  
  ## Calculate Alpha Power for WORD 3 
  Pre3 <- colMeans(dat[c(75:80),3:17], na.rm = TRUE) ## Prestimulus
  Onset3 <- colMeans(dat[c(88:101),3:17], na.rm = TRUE) ## Word Onset
  Word3 <- (Onset3 - Pre3)/Pre3 ## Word Power
  
  ## Calculate Alpha Power for WORD 4 
  Pre4 <- colMeans(dat[c(109:114),3:17], na.rm = TRUE) ## Prestimulus
  Onset4 <- colMeans(dat[c(122:136),3:17], na.rm = TRUE) ## Word Onset
  Word4 <- (Onset4 - Pre4)/Pre4 ## Word Power
  
  ## Calculate Alpha Power for WORD 5 
  Pre5 <- colMeans(dat[c(144:148),3:17], na.rm = TRUE) ## Prestimulus
  Onset5 <- colMeans(dat[c(156:170),3:17], na.rm = TRUE) ## Word Onset
  Word5 <- (Onset5 - Pre5)/Pre5 ## Word Power
  
  ## Calculate Alpha Power for WORD 6 
  Pre6 <- colMeans(dat[c(178:183), 3:17], na.rm = TRUE) ## Prestimulus
  Onset6 <- colMeans(dat[c(191:204), 3:17], na.rm = TRUE) ## Word Onset
  Word6 <- (Onset6 - Pre6)/Pre6 ## Word Power
  
  ## Calculate Alpha Power for WORD 7 
  Pre7 <- colMeans(dat[c(212:217), 3:17], na.rm = TRUE) ## Prestimulus
  Onset7 <- colMeans(dat[c(225:238), 3:17], na.rm = TRUE) ## Word Onset
  Word7 <- (Onset7 - Pre7)/Pre7 ## Word Power
  
  ## Calculate Alpha Power for WORD 8 
  Pre8 <- colMeans(dat[c(246:251), 3:17], na.rm = TRUE) ## Prestimulus
  Onset8 <- colMeans(dat[c(259:272), 3:17], na.rm = TRUE) ## Word Onset
  Word8 <- (Onset8 - Pre8)/Pre8 ## Word Power
  
  ## Calculate Alpha Power for WORD 9 
  Pre9 <- colMeans(dat[c(280:285), 3:17], na.rm = TRUE) ## Prestimulus
  Onset9 <- colMeans(dat[c(293:306), 3:17], na.rm = TRUE) ## Word Onset
  Word9 <- (Onset9 - Pre9)/Pre9 ## Word Power
  
  ## Calculate Alpha Power for WORD 10 
  Pre10 <- colMeans(dat[c(314:319), 3:17], na.rm = TRUE) ## Prestimulus
  Onset10 <- colMeans(dat[c(327:340), 3:17], na.rm = TRUE) ## Word Onset
  Word10 <- (Onset10 - Pre10)/Pre10 ## Word Power
  
  ## Calculate Alpha Power for WORD 11 
  Pre11 <- colMeans(dat[c(348:353), 3:17], na.rm = TRUE) ## Prestimulus
  Onset11 <- colMeans(dat[c(361:375), 3:17], na.rm = TRUE) ## Word Onset
  Word11 <- (Onset11 - Pre11)/Pre11 ## Word Power
  
  ## Calculate Alpha Power for WORD 12 
  Pre12 <- colMeans(dat[c(383:387), 3:17], na.rm = TRUE) ## Prestimulus
  Onset12 <- colMeans(dat[c(395:409), 3:17], na.rm = TRUE) ## Word Onset
  Word12 <- (Onset12 - Pre12)/Pre12 ## Word Power
  
  ## Calculate Alpha Power for WORD 13 
  Pre13 <- colMeans(dat[c(417:421), 3:17], na.rm = TRUE) ## Prestimulus
  Onset13 <- colMeans(dat[c(429:443), 3:17], na.rm = TRUE) ## Word Onset
  Word13 <- (Onset13 - Pre13)/Pre13 ## Word Power
  
  ## Calculate Alpha Power for WORD 14 
  Pre14 <- colMeans(dat[c(451:456), 3:17], na.rm = TRUE) ## Prestimulus
  Onset14 <- colMeans(dat[c(464:477), 3:17], na.rm = TRUE) ## Word Onset
  Word14 <- (Onset14 - Pre14)/Pre14 ## Word Power
  
  ## Calculate Alpha Power for WORD 15 
  Pre15 <- colMeans(dat[c(485:490), 3:17], na.rm = TRUE) ## Prestimulus
  Onset15 <- colMeans(dat[c(498:511), 3:17], na.rm = TRUE) ## Word Onset
  Word15 <- (Onset15 - Pre15)/Pre15 ## Word Power
  
  ## Calculate Alpha Power for WORD 16 
  Pre16 <- colMeans(dat[c(519:522), 3:17], na.rm = TRUE) ## Prestimulus
  Onset16 <- colMeans(dat[c(530:545), 3:17], na.rm = TRUE) ## Word Onset
  Word16 <- (Onset16 - Pre16)/Pre16 ## Word Power
  
  ## Calculate Alpha Power for WORD 17 
  Pre17 <- colMeans(dat[c(553:555), 3:17], na.rm = TRUE) ## Prestimulus
  Onset17 <- colMeans(dat[c(563:579), 3:17], na.rm = TRUE) ## Word Onset
  Word17 <- (Onset17 - Pre17)/Pre17 ## Word Power
  
  ## Calculate Alpha Power for WORD 18 
  Pre18 <- colMeans(dat[c(587:592), 3:17], na.rm = TRUE) ## Prestimulus
  Onset18 <- colMeans(dat[c(600:613), 3:17], na.rm = TRUE) ## Word Onset
  Word18 <- (Onset18 - Pre18)/Pre18 ## Word Power
  
  ## Calculate Alpha Power for WORD 19 
  Pre19 <- colMeans(dat[c(621:626), 3:17], na.rm = TRUE) ## Prestimulus
  Onset19 <- colMeans(dat[c(634:648), 3:17], na.rm = TRUE) ## Word Onset
  Word19 <- (Onset19 - Pre19)/Pre19 ## Word Power
  
  ## Calculate Alpha Power for WORD 20 
  Pre20 <- colMeans(dat[c(656:660), 3:17], na.rm = TRUE) ## Prestimulus
  Onset20 <- colMeans(dat[c(668:683), 3:17], na.rm = TRUE) ## Word Onset
  Word20 <- (Onset20 - Pre20)/Pre20 ## Word Power
  
  ## Create new data frame
  dat_new <-rbind(Word1, Word2, Word3, Word4, Word5, Word6, Word7, Word8, Word9, Word10, Word11, Word12, Word13, Word14, Word15, Word16, Word17, Word18, Word19, Word20)
  
  ## Write file for LIST 1 
  write.csv(dat_new, file=paste0("2_Power/L1_",file.names[i]))
}
# LIST 1 - END -------------------------
# LIST 3 - START -------------------------
file.names <- list.files("1_Working/L3/") # Select all files in directory
out.file <- ""

for(i in 1:length(file.names)){
  # (2) Read .csv file
  path <- "1_Working/L3/"
  dat_L3 <- read.csv(paste(path,file.names[i], sep=""))

  ## Calculate Alpha Power for WORD 1 
  Pre1 <- colMeans(dat_L3[c(6:12),3:17], na.rm = TRUE) ## Prestimulus
  Onset1 <- colMeans(dat_L3[c(20:33),3:17], na.rm = TRUE) ## Word Onset
  Word1 <- (Onset1 - Pre1)/Pre1 ## Word Power
  
  ## Calculate Alpha Power for WORD 2 
  Pre2 <- colMeans(dat_L3[c(41:46),3:17], na.rm = TRUE) ## Prestimulus
  Onset2 <- colMeans(dat_L3[c(54:67),3:17], na.rm = TRUE) ## Word Onset
  Word2 <- (Onset2 - Pre2)/Pre2 ## Word Power
  
  ## Calculate Alpha Power for WORD 3 
  Pre3 <- colMeans(dat_L3[c(75:80),3:17], na.rm = TRUE) ## Prestimulus
  Onset3 <- colMeans(dat_L3[c(88:101),3:17], na.rm = TRUE) ## Word Onset
  Word3 <- (Onset3 - Pre3)/Pre3 ## Word Power
  
  ## Calculate Alpha Power for WORD 4 
  Pre4 <- colMeans(dat_L3[c(109:114),3:17], na.rm = TRUE) ## Prestimulus
  Onset4 <- colMeans(dat_L3[c(122:136),3:17], na.rm = TRUE) ## Word Onset
  Word4 <- (Onset4 - Pre4)/Pre4 ## Word Power
  
  ## Calculate Alpha Power for WORD 5 
  Pre5 <- colMeans(dat_L3[c(144:148),3:17], na.rm = TRUE) ## Prestimulus
  Onset5 <- colMeans(dat_L3[c(156:170),3:17], na.rm = TRUE) ## Word Onset
  Word5 <- (Onset5 - Pre5)/Pre5 ## Word Power
  
  ## Calculate Alpha Power for WORD 6 
  Pre6 <- colMeans(dat_L3[c(178:183),3:17], na.rm = TRUE) ## Prestimulus
  Onset6 <- colMeans(dat_L3[c(191:204),3:17], na.rm = TRUE) ## Word Onset
  Word6 <- (Onset6 - Pre6)/Pre6 ## Word Power
  
  ## Calculate Alpha Power for WORD 7 
  Pre7 <- colMeans(dat_L3[c(212:217),3:17], na.rm = TRUE) ## Prestimulus
  Onset7 <- colMeans(dat_L3[c(225:238),3:17], na.rm = TRUE) ## Word Onset
  Word7 <- (Onset7 - Pre7)/Pre7 ## Word Power
  
  ## Calculate Alpha Power for WORD 8 
  Pre8 <- colMeans(dat_L3[c(246:251),3:17], na.rm = TRUE) ## Prestimulus
  Onset8 <- colMeans(dat_L3[c(259:272),3:17], na.rm = TRUE) ## Word Onset
  Word8 <- (Onset8 - Pre8)/Pre8 ## Word Power
  
  ## Calculate Alpha Power for WORD 9 
  Pre9 <- colMeans(dat_L3[c(280:285),3:17], na.rm = TRUE) ## Prestimulus
  Onset9 <- colMeans(dat_L3[c(293:306),3:17], na.rm = TRUE) ## Word Onset
  Word9 <- (Onset9 - Pre9)/Pre9 ## Word Power
  
  ## Calculate Alpha Power for WORD 10 
  Pre10 <- colMeans(dat_L3[c(314:319),3:17], na.rm = TRUE) ## Prestimulus
  Onset10 <- colMeans(dat_L3[c(327:340),3:17], na.rm = TRUE) ## Word Onset
  Word10 <- (Onset10 - Pre10)/Pre10 ## Word Power
  
  ## Calculate Alpha Power for WORD 11 
  Pre11 <- colMeans(dat_L3[c(348:353),3:17], na.rm = TRUE) ## Prestimulus
  Onset11 <- colMeans(dat_L3[c(361:375),3:17], na.rm = TRUE) ## Word Onset
  Word11 <- (Onset11 - Pre11)/Pre11 ## Word Power
  
  ## Calculate Alpha Power for WORD 12 
  Pre12 <- colMeans(dat_L3[c(383:387),3:17], na.rm = TRUE) ## Prestimulus
  Onset12 <- colMeans(dat_L3[c(395:409),3:17], na.rm = TRUE) ## Word Onset
  Word12 <- (Onset12 - Pre12)/Pre12 ## Word Power
  
  ## Calculate Alpha Power for WORD 13 
  Pre13 <- colMeans(dat_L3[c(417:421),3:17], na.rm = TRUE) ## Prestimulus
  Onset13 <- colMeans(dat_L3[c(429:443),3:17], na.rm = TRUE) ## Word Onset
  Word13 <- (Onset13 - Pre13)/Pre13 ## Word Power
  
  ## Calculate Alpha Power for WORD 14 
  Pre14 <- colMeans(dat_L3[c(451:456),3:17], na.rm = TRUE) ## Prestimulus
  Onset14 <- colMeans(dat_L3[c(464:477),3:17], na.rm = TRUE) ## Word Onset
  Word14 <- (Onset14 - Pre14)/Pre14 ## Word Power
  
  ## Calculate Alpha Power for WORD 15 
  Pre15 <- colMeans(dat_L3[c(485:490),3:17], na.rm = TRUE) ## Prestimulus
  Onset15 <- colMeans(dat_L3[c(498:511),3:17], na.rm = TRUE) ## Word Onset
  Word15 <- (Onset15 - Pre15)/Pre15 ## Word Power
  
  ## Calculate Alpha Power for WORD 16 
  Pre16 <- colMeans(dat_L3[c(519:522),3:17], na.rm = TRUE) ## Prestimulus
  Onset16 <- colMeans(dat_L3[c(530:545),3:17], na.rm = TRUE) ## Word Onset
  Word16 <- (Onset16 - Pre16)/Pre16 ## Word Power
  
  ## Calculate Alpha Power for WORD 17 
  Pre17 <- colMeans(dat_L3[c(553:555),3:17], na.rm = TRUE) ## Prestimulus
  Onset17 <- colMeans(dat_L3[c(563:579),3:17], na.rm = TRUE) ## Word Onset
  Word17 <- (Onset17 - Pre17)/Pre17 ## Word Power
  
  ## Calculate Alpha Power for WORD 18 
  Pre18 <- colMeans(dat_L3[c(587:592),3:17], na.rm = TRUE) ## Prestimulus
  Onset18 <- colMeans(dat_L3[c(600:613),3:17], na.rm = TRUE) ## Word Onset
  Word18 <- (Onset18 - Pre18)/Pre18 ## Word Power
  
  ## Calculate Alpha Power for WORD 19 
  Pre19 <- colMeans(dat_L3[c(621:626),3:17], na.rm = TRUE) ## Prestimulus
  Onset19 <- colMeans(dat_L3[c(634:648),3:17], na.rm = TRUE) ## Word Onset
  Word19 <- (Onset19 - Pre19)/Pre19 ## Word Power
  
  ## Calculate Alpha Power for WORD 20 
  Pre20 <- colMeans(dat_L3[c(656:660),3:17], na.rm = TRUE) ## Prestimulus
  Onset20 <- colMeans(dat_L3[c(668:683),3:17], na.rm = TRUE) ## Word Onset
  Word20 <- (Onset20 - Pre20)/Pre20 ## Word Power
  
  ## Create new data frame
  dat_L3_new <-rbind(Word1, Word2, Word3, Word4, Word5, Word6, Word7, Word8, Word9, Word10, Word11, Word12, Word13, Word14, Word15, Word16, Word17, Word18, Word19, Word20)
  
  ## Write file for LIST 1 
  write.csv(dat_L3_new, file=paste0("2_Power/L3_",file.names[i]))
}  
# LIST 3 - START -------------------------