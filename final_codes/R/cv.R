#' Coefficient of Variation
#'
#' Calculates the coefficient of variation (CV) as sd(x)/mean(x)
#'
#' @param x Numeric vector
#' @return Numeric value of CV
#' @export
cv <- function(x) {
  sd(x) / mean(x)
}
