
#' Multiple Regression Example
#'
#' Fits and shows summary of a multiple regression
#' @export
multiple_regression <- function() {
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  print(summary(fit))
}
