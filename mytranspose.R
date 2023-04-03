mytranspose <- function(x) {
  
  if (is.data.frame(x)) {
    x <- as.matrix(x)
  }
  
  if (is.vector(x)) {
    x <- matrix(x, nrow = length(x), ncol = 1)}
  
  if (length(x) == 0) {
    if (is.vector(x)){return(NULL)}
    return(x)}
  
  y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
  for(i in 1:nrow(x)) {
    for(j in 1:ncol(x)) {
      y[j,i] <- x[i,j]
    }
  }
  return(y)
}

