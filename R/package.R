modify_package_json <- function(
  field,
  content
){
  yml <- yaml::read_yaml(
    here::here("inst/cordes/package.json")
  )
}
