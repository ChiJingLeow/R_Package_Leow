#'remove potential NA values in rdata
#'
#'@params data - your working rdata
#'@params product - the counts without NA values from all samples
#

countdata_no_NA <- function(data) {
  product <- na.omit(data)
  product <- data[,-(1:2)]
  return(product)
}
