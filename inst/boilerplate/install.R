#' Install CORDES npm dependencies
#'
#' @inheritParams cordes::cordes_npm_install
#'
#' @importFrom cordes cordes_npm_install
#' @return
#' @export
#'
#' @examples
CORDES_npm_install <- function(
  package = "CORDES",
  force = FALSE
){
  cordes_npm_install(package = package, force = force)
}
