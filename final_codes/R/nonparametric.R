
#' Nonparametric Test (Wilcoxon)
#'
#' Runs Wilcoxon rank-sum test
#' @export
nonparametric <- function() {
  x <- rnorm(20)
  y <- rnorm(20, mean = 1)
  print(wilcox.test(x, y))
}
