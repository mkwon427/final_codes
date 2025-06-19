#' Pearson Correlation Test
#'
#' Performs a correlation test between two variables.
#'
#' @param x Numeric vector
#' @param y Numeric vector
#' @return Result of cor.test
#' @export
cor_test <- function(x, y) {
  cor.test(x, y)
}
