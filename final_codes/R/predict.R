
#' Predict Demo
#'
#' Runs a simple prediction using a linear model
#' @export
predict_demo <- function() {
  fit <- lm(mpg ~ wt, data = mtcars)
  new <- data.frame(wt = c(2.5, 3.0, 3.5))
  print(predict(fit, new, interval = "prediction"))
}
