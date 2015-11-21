#' reorder letters according to alphabetical order
#'
#' @param x random letter
#' @param normal.sort boolean; define the sorting method wheather ascending or descending
#'
#' @return ordered letter
#' @export
#'
#' @examples
#' letter_order("a,c,d")
letter_order <- function (x,normal.sort = TRUE){
  input <- unlist(stringr::str_split(x,","))
  df <- data.frame(letters=input,n=order(input))
   if (normal.sort == FALSE) {
    df <- dplyr::arrange(df,desc(n))
    letter <- as.vector(reorder(df$letters,df$n))
    paste(df$letter,collapse=",")
   } else if(normal.sort == TRUE) {
    df <- dplyr::arrange(df,n)
    letter <- as.vector(reorder(df$letters,df$n))
    paste(df$letter,collapse=",")
   } else {
     warning(sprintf("'%s' is not a valid sorting method",normal.sort))
   }
}
