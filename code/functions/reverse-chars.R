#' @title reverse-chars
#' @description Reverses a string by characters.
#' @param x string
#' @return The reversed string of characters
reverse_chars <- function(x = as.character(x)) {
  sapply(lapply(strsplit(x, NULL), rev), paste, collapse="")
}
