#' Add a module to the Corde Package
#'
#' @param module module name
#' @param npm_opt Vector of options passed to `npm install`
#'
#' @importFrom processx run
#' @importFrom here here
#' @export
npm_install_module <- function(module, npm_opt = c()) {
  run(
    "npm",
    c("install", module, npm_opt),
    wd = here("inst/cordes")
  )
}
