
#' Bind two string characters
#'
#' @param a character
#' @param b character
#' @param method; find unique characters or duplicated characters
#' @return character
#' @export
#'
#' @examples
#' string_bind("abc","bcd")

string_bind <- function(a,b,method = "UNIQUE"){
  a_paste <- paste(a,b,sep="")
  input <- unlist(stringr::str_split(a_paste,""))
  if (method == "UNIQUE"){
    input_unique <- unique(input)
    result <- paste(input_unique,collapse = "")
    result
  } else if (method == "DUPLICATE") {
    input_duplicate <- input[which(duplicated(input))]
    result <-paste(input_duplicate,collapse = "")
    result
  }
}
