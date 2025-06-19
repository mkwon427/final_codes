#' Linear Model Summary
#'
#' Fits a linear model and returns the summary.
#'
#' @param formula A formula (e.g., y ~ x)
#' @param data A data frame
#' @return Summary of the linear model
#' @export
lm_summary <- function(formula, data) {
  model <- lm(formula, data = data)
  summary(model)
}
