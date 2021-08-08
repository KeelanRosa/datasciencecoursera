complete <- function(directory, id=1:322){
  # set up dataframe
  data <- data.frame()
  # add rows
  files_list <- list.files(directory, full.names=TRUE)
  for (i in id){
    data <- rbind(data, c(i, nrow(na.omit(read.csv(files_list[i])))))
  }
  # format
  colnames(data) <- c("id", "nobs")
  print(data)
}