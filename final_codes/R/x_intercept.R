
#' X-Intercept Finder
#'
#' Finds the x-intercept of a fitted linear model
#' @export
x_intercept <- function() {
  model <- lm(mpg ~ wt, data = mtcars)
  intercept <- -coef(model)[1] / coef(model)[2]
  cat("X-Intercept:", intercept, "\n")
}
