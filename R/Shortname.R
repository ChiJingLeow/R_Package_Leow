#'shorten the sample names
#'
#'@params data - your working cleaned up data
#'@params 
#

short_name <- function(data) {
  colnames(data) <- substr(colnames(data),start=1,stop=7)
  return(data)
  
}
 
