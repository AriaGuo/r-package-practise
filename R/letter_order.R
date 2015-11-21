#' reorder letters according to alphabetical order
#'
#' @param x random letter
#'
#'
#' @return ordered letter
#' @export
#'
#' @examples
#' letter_order("a,c,d")
letter_order <- function (x){
  input <- unlist(stringr::str_split(x,","))
  df <- data.frame(letters=input,n=order(input))
  dplyr::arrange(df,letters,desc(n))
  letter <- as.vector(levels(reorder(df$letters,df$n)))
  paste(letter,collapse=",")
}


