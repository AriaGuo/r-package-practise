#' Bind two factors
#'
#' @param x
#'
#' @return factor
#' @export
freq_out <- function(x){
  xdf <- data_frame(x)
  dplyr::count(xdf,x)
}
