pollutantmean <- function(directory, pollutant, id=1:322){
  files_list <- list.files(directory, full.names=TRUE)
  dat <- data.frame()
  for (i in id){
    dat <- rbind(dat, read.csv(files_list[i]))
    print(head(files_list[i]))
  }
  median(dat[,pollutant], na.rm=TRUE)
}