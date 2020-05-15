#' Install Npm infra inside Cordes Package
#'
#' @param package package name
#' @param force Prompt the user to accept install?
#' @param yes_no_message What to display as a prompt message
#' @param folder Where to got to run `npm install`
#'
#' @export
#'
#' @importFrom yesno yesno
#' @importFrom processx run
#'
cordes_npm_install <- function(
  package,
  force = FALSE,
  yes_no_message = "This will install plop npm dependencies on your local library. \nAre you ok with that?",
  folder = "cordes"
){
  # Prompt the users unless they bypass (we're installing stuff on their machine)
  if (!force) {
    ok <- yesno(yes_no_message)
  } else {
    ok <- TRUE
  }

  # If user is ok, run npm install in the node folder in the package folder
  # We should also check that the infra is not already there
  if (ok){
    run(
      command = "npm",
      args = c("install"),
      wd = system.file(folder, package = package)
    )
  }
}
