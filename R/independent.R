
#' Chi-square Test of Independence
#'
#' Runs a chi-square test for independence
#' @export
independent <- function() {
  tbl <- matrix(c(10, 20, 30, 40), nrow = 2)
  print(chisq.test(tbl))
}
