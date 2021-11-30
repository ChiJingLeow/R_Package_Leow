#'shorten the sample names
#'
#'@params data - your working count data
#'
#

short_name <- function(data) {
  if(is.data.frame(data) == FALSE) {
    return("not a dataframe")
  }
  colnames(data) <- substr(colnames(data),start=1,stop=7)
  return(data)
  
}
 
