#'store count data as DGE object, add the status from sampleinfo to this object. 
#'
#'@params countdata - counts only
#'@params sampleinfo - the samples information
#'@product a DGElist storing count and sample info

DGEobject <- function(countdata, sampleinfo) {
  if(is.data.frame(countdata) == FALSE) {
    return("not a dataframe")
  }
  if(is.data.frame(sampleinfo) == FALSE) {
    return("not a dataframe")
  }
  product <- DGEList(countdata)
  combined <- paste(sampleinfo$CellType, sampleinfo$Status, sep = "_")
  combined <- factor(combined) 
  product$samples$group <- combined
  return(product)
}

  
