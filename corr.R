corr <- function(directory, threshold = 0){
  files_list <- list.files(directory, full.names=TRUE)
  data_c <- complete(directory)
  data_cors <- numeric()
  for (i in 1:nrow(data_c)){
    if (data_c[i, "nobs"] >= threshold){
      # calculate cor
      d <- read.csv(files_list[i])
      d_cor <- cor(d$sulfate, d$nitrate, use="na.or.complete")
      data_cors <- c(data_cors, d_cor)
    }
  }
  data_cors
}