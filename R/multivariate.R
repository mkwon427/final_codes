
#' Multivariate Analysis Demo
#'
#' Displays multivariate regression summary
#' @export
multivariate <- function() {
  fit <- lm(mpg ~ wt + hp + disp, data = mtcars)
  print(summary(fit))
}
