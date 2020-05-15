#' Add a module to the Corde Package
#'
#' @param module module name
#' @param npm_opt Vector of options passed to `npm install`
#'
#' @importFrom processx run
#' @importFrom here here
#' @importFrom cli cat_rule
#' @export
install_module <- function(module, npm_opt = c()) {
  proc <- run(
    "npm",
    c("install", module, npm_opt),
    wd = here("inst/cordes")
  )
  for (i in c("stdout", "stderr")){
    cat_rule(i)
    cat(proc[[i]])
  }
  invisible(proc)
}
