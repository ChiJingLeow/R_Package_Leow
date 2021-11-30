#'filtering out the lowly expressed genes and give a summary.
#'
#'@params data - countdata
#'@params thresholda below 0.5
#'
#


Filter_low_counts <- function(data) {
  if(is.data.frame(data) == FALSE) {
    return("not a dataframe")
  }
  data_cpm <- cpm(data)
  threshold <- data_cpm > 0.5
  threshold <- summary(threshold)
  return(threshold)
}