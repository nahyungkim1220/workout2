#' @title minkowski
#' @description Formula to find the Minkowski distance.
#' @param x numeric vector for one point
#' @param y numeric vector for the other point
#' @param p either a numeric value greater than 1, or a character string max (default 1)
#' @return The computed Minkowski distance
#' 
minkowski <- function(x, y, p = 1) {
  if (length(x)!=length(y)) {
    stop("x and y have different lengths")
  }
  if (is.numeric(p) & p < 1 ) {
    stop("p cannot be less than 1")
  }
  if (is.character(p) & p != "max") {
    stop("invalid character value for p")
  }
  if (is.character(p) == TRUE & p == "max") {
    return(1)
  }
  else if (length(x) == length(y)) {
  a <- numeric(1)
  "max" <- numeric(1)
  for (i in 1:length(x)) {
    m <- ((abs(x[i]-y[i]))^p)
    a <- a + m
  }
  return(a^(1/p))
}
}

          
          