
#' Covariance and Correlation Test
#'
#' Computes covariance and correlation test
#' @export
covariance <- function() {
  x <- rnorm(20)
  y <- x + rnorm(20, sd = 0.5)
  print(cov(x, y))
  print(cor.test(x, y))
}
