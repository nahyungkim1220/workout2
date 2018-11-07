#' @title is_string
#' @description Checks if the input is a single string.
#' @param x string
#' @return TRUE if input is a string, and FALSE otherwise.
is_string <- function(x){
  x <- is.character(x) && length(x) == 1
}

#' @title is_hex
#' @description Checks whether an input string is a valid hex color without an alpha transparency value.
#' @param x Hex color name (string)
#' @return Returns TRUE for a valid hex color, and FALSE otherwise.
is_hex <- function(x) {
  if (!is_string(x)) {
    stop("invalid input; a string was expected")
  }
  y <- grepl("^#(\\d|[a-f]){6}$",x,ignore.case=TRUE)
  return(y)
}

#' @title is_hex_alpha
#' @description Checks whether an input string is a valid hex color with an alpha transparency value.
#' @param x Hex color name (string)
#' @return Returns TRUE for a valid hex color, and FALSE otherwise.
is_hex_alpha <- function(x) {
  if (!is_string(x)) {
    stop("invalid input; a string was expected")
  }
  y <- grepl("^#(\\d|[a-f]){8}$",x,ignore.case=TRUE)
  return(y)
}