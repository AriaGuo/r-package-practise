
#' Bind two string characters
#'
#' @param a character
#' @param b character
#'
#' @return character
#' @export
#'
#' @examples
#' string_bind("abc","bcd")

string_bind <- function(a,b){
  a_paste <- paste(a,b,sep="")
  input <- stringr::str_split(a_paste,"")
  input_unique <- unique(unlist(input))
  result <- paste(input_unique,collapse = "")
  result
}
