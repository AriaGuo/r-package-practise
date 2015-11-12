
#' Bind two factors
#'
#' @param a factor
#' @param b factor
#'
#' @return factor
#' @export
#'
#' @examples
#' fbind(iris$species[c(1)],"hit")
fbind <- function(a,b){
  factor(c(as.character(a),as.character(b)))
}

