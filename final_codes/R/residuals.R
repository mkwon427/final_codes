
#' Residual Plot
#'
#' Shows residuals of a model
#' @export
residuals_demo <- function() {
  fit <- lm(mpg ~ wt, data = mtcars)
  plot(fit$residuals, pch = 20, main = "Residuals")
  abline(h = 0, col = "red")
}
