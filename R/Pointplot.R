#'plot the library reads from each sample group and do a mean of all samples. 
#'
#'@params group - each treatment group
#'@params lib_size - libray size (reads)
#'
#

plot_library_reads <- function(group, lib_size) {
  if(is.numeric(lib_size) == FALSE) {
    return("not a numeric data")
  }
  ggplot(mapping = aes(x = group, y = lib_size)) +geom_point() 
  print("library average reads")
  mean(lib_size)
}
  
