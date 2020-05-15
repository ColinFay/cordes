#' Run CORDES Node Script
#'
#' @return
#' @export
#'
#' @importFrom cordes cordes_run
#'
#' @examples
CORDES_run <- function(){
  cordes_run(package = "CORDES", file = "app.js")
}
