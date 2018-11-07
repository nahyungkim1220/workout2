library(stringr)

#' @title is_string
#' @description Checks if the input is a single string.
#' @param x string
#' @return TRUE if input is a string, and FALSE otherwise.
is_string <- function(x){
  x <- is.character(x) && length(x) == 1
}

#' @title count_vowels
#' @description Computes the number of vowels of a character string.
#' @param x string
#' @return Number of vowels in a character string.
count_vowels <- function(x) {
  if (!is_string(x)) {
    stop("invalid input; a string was expected")
}
vowels <- c('a','e','i','o','u')
a <- str_count(tolower(x), pattern= vowels)
a <- as.double(a)
names(a) <- vowels
return(a)
}

