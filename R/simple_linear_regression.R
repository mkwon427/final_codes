#' Simple Linear Regression Example
#'
#' This function runs a basic example of simple linear regression and shows model summary, ANOVA, and a plot.
#'
#' @export
simple_linear_regression <- function() {
  # 데이터 설정
  x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
  y <- c(2, 4, 5, 4, 5, 7, 8, 9, 10, 12)
  result <- data.frame(x, y)

  # 회귀모형 적합
  result.fit <- lm(y ~ x, data = result)

  # 결과 요약 출력
  print(summary(result.fit))
  print(anova(result.fit))

  # 시각화
  plot(result$x, result$y, pch = 20, cex = 2, lwd = 2, main = "Simple Linear Regression")
  abline(result.fit, lwd = 2, col = "red")

  # 예측값과 잔차
  cat("Fitted values:\n")
  print(result.fit$fitted.values)

  cat("Residuals:\n")
  print(result.fit$residuals)
}
