#'remove potential NA values in rdata and gives only the count data
#'
#'@params data - your working rdata
#'@params product - the counts without NA values from all samples
#

countdata_no_NA <- function(data) {
  if(is.data.frame(data) == FALSE) {
    return("not a dataframe")
  }
  product <- na.omit(data)
  if(product == data){
    print("no NA values found")
  }
  product <- data[,-(1:2)]
  return(product)
}
