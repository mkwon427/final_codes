
#' Simple Linear Regression
#'
#' Demonstrates simple linear regression
#' @export
simple_linear <- function() {
  x <- 1:10
  y <- c(2, 4, 5, 4, 5, 7, 8, 9, 10, 12)
  result <- data.frame(x, y)
  fit <- lm(y ~ x, data = result)
  print(summary(fit))
  print(anova(fit))
  plot(result$x, result$y, pch = 20, cex = 2)
  abline(fit, col = "red", lwd = 2)
}
