
#' Graph Example
#'
#' Draws a sample plot with regression line
#' @export
graph <- function() {
  x <- 1:10
  y <- x + rnorm(10)
  plot(x, y, pch = 20, cex = 2)
  abline(lm(y ~ x), col = "blue", lwd = 2)
}
