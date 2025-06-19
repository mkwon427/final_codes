
#' Display Code Examples
#'
#' Prints example code templates for finals package
#' @param name A string indicating the code example name
#' @export
final_codes <- function(name) {
  examples <- list(
    "simple_linear" = '\n# 데이터 설정\nx <- ...\ny <- ...\nresult <- data.frame(x, y)\n\n# 회귀모형 적합\nresult.fit <- lm(y ~ x, data = result)\n\n# 결과 요약\nsummary(result.fit)\nanova(result.fit)\n\n# 시각화\nplot(result$x, result$y, pch = 20, cex = 2, lwd = 2)\nabline(result.fit, lwd = 2, col = "red")\n\n# 예측값과 잔차\nresult.fit$fitted.values     # 예측값\nresult.fit$residuals         # 잔차\n',
    "predict" = '\n# 새로운 데이터 설정\nnew_data <- data.frame(\n  temp = c(190, 200, 210, 185, 205),\n  time = c(55, 60, 62, 59, 61)\n)\n\n# 예측 (prediction interval 포함)\npredict(df.res, newdata = new_data, interval = "prediction", level = 0.95)\n',
    "residuals" = '\n# 회귀모형 잔차 시각화\nfit <- lm(mpg ~ wt, data = mtcars)\nplot(fit$residuals, pch = 20, main = "Residuals")\nabline(h = 0, col = "red")\n',
    "multiple_regression" = '\n# 다중 회귀 예제\nfit <- lm(mpg ~ wt + hp, data = mtcars)\nsummary(fit)\n',
    "help" = '\nHere are the available finals code examples:\n- simple_linear\n- predict\n- residuals\n- multiple_regression\n\nUse: final_codes("<example_name>") to print the code.\n',
    "covariance" = '\n# 공분산과 상관계수 계산\nx <- c(...)\ny <- c(...)\n\n# 공분산\ncov(x, y)\n\n# 상관계수 및 검정\ncor.test(x, y)\n',
    "x_intercept" = '\n# 회귀직선의 x절편 계산\nfit <- lm(y ~ x, data = dataset)\nintercept <- coef(fit)[1]\nslope <- coef(fit)[2]\nx_intercept <- -intercept / slope\nx_intercept\n',
    "multivariate" = '\n# 다변량 회귀분석\nfit <- lm(y ~ x1 + x2 + x3, data = dataset)\nsummary(fit)\n',
    "poisson" = '\n# 포아송 회귀 예제\nfit <- glm(y ~ x, family = poisson(link = "log"), data = dataset)\nsummary(fit)\n',
    "identical" = '\n# 동일성 검정 (카이제곱 적합도 검정)\nobserved <- c(...)\nexpected <- c(...)\nchisq.test(x = observed, p = expected / sum(expected))\n',
    "independent" = '\n# 독립성 검정 (카이제곱 독립성 검정)\ntable <- matrix(c(...), nrow = 2)\nchisq.test(table)\n',
    "nonparametric" = '\n# 비모수 검정 (예: Wilcoxon 순위합 검정)\nx <- c(...)\ny <- c(...)\nwilcox.test(x, y, alternative = "two.sided")\n',
    "help" = "Here are the available finals code examples:\n- simple_linear\n- predict\n- residuals\n- multiple_regression\n- help\n- covariance\n- x_intercept\n- multivariate\n- poisson\n- identical\n- independent\n- nonparametric"

  )
  if (name %in% names(examples)) {
    cat(examples[[name]])
  } else {
    cat("No such example found. Use final_codes('help') to list options.\n")
  }
}
