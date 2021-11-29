#'store count data as DGE object
#'
#'
#

DGEobject <- function(countdata, sampleinfo) {
  a <- DGEList(countdata)
  combined <- paste(sampleinfo$CellType, sampleinfo$Status, sep = "_")
  combined <- factor(combined) 
  a$samples$group <- combined
  return(a$samples)
}

  
