#' Create a Cordes Boilerplate
#'
#' @inheritParams usethis::create_package
#' @param ... args passed to `usethis::create_package`
#'
#' @export
#' @importFrom fs path_abs dir_create file_create file_copy
#' @importFrom processx run
#' @importFrom rstudioapi openProject isAvailable
#' @importFrom usethis create_package use_build_ignore use_package use_dev_package
cordes_create <- function(
  path,
  open,
  ...
) {
  create_package(path_abs(path), open = FALSE, ...)
  curr_dir <- setwd(path)
  on.exit(setwd(curr_dir))

  # Creating Node Related stuff
  dir_create("inst/cordes")
  use_build_ignore("inst/cordes")
  file_create("inst/cordes/app.js")

  proc <- run(
    "npm", c("init", "-y"), wd = "inst/cordes"
  )

  cat(proc$stdout)
  # R default files

  file_copy(
    system.file("boilerplate/install.R", package = "cordes"),
    "R/npm_install.R"
  )
  x <- readLines("R/npm_install.R")
  x <- gsub("CORDES", basename(path), x)
  writeLines(x, "R/npm_install.R")

  # R default files
  file_copy(
    system.file("boilerplate/run.R", package = "cordes"),
    "R/run.R"
  )
  x <- readLines("R/run.R")
  x <- gsub("CORDES", basename(path), x)
  writeLines(x, "R/run.R")

  # Readme
  file_copy(
    system.file("readme.txt", package = "cordes"),
    "inst/readme.txt"
  )

  # Pak deps
  use_package("processx")
  use_package("yesno")
  use_dev_package("cordes")
  if (isAvailable() && open) {
    openProject(path)
  } else {
    browseURL(path)
  }
}

# to be used in RStudio "new project" GUI
cordes_create_gui <- function(path,...){
  dots <- list(...)
  cordes_create(
    path = path,
    open = FALSE
    #dots$blabla
  )
}

