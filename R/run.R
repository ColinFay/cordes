#' Run Node Script
#'
#' @return
#' @export
#'
#' @importFrom processx run
#'
#' @examples
cordes_run <- function(
  package,
  extra_args = c(),
  file = "app.js",
  folder = "cordes"
){
  run(
    command = "node",
    args = c(
      "app.js",
      extra_args
    ),
    wd = system.file(folder, package = package)
  )
}
