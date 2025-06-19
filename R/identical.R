
#' Chi-square Test of Homogeneity
#'
#' Runs a chi-square test for homogeneity
#' @export
identical <- function() {
  tbl <- matrix(c(20, 30, 50, 80), nrow = 2)
  print(chisq.test(tbl))
}
