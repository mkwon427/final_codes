
#' Poisson Regression Example
#'
#' Demonstrates Poisson regression
#' @export
poisson <- function() {
  x <- rpois(100, lambda = 2)
  y <- rpois(100, lambda = 2 + 0.5 * x)
  model <- glm(y ~ x, family = poisson)
  print(summary(model))
}
