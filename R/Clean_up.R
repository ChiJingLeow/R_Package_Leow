#'remove potential NA values in rdata
#'
#'@params data - your working rdata
#'@params product - the data without NA values 
#

clean_up <- function(data) {
  product <- na.omit(data)
  NA_omit_rdata <- data
  return(NA_omit_rdata)
}
