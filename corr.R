corr <- function(directory, threshold = 0){
  files_list <- list.files(directory, full.names=TRUE)
  data_c <- complete(directory)
  data_ids <- c()
  for (i in 1:nrow(data_c)){
    if (data_c[i, "nobs"] >= threshold){
      data_ids <- c(data_ids, i)
    }
  }
  # TODO: cor
  print(data_ids)
}