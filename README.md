
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cordes

<!-- badges: start -->

<!-- badges: end -->

``` r
withr::with_dir(
  tempdir(),{
    cordes::cordes_create("plop", open = FALSE)
  }
)
#> ✓ Creating '/private/var/folders/5z/rm2h62lj45d332kfpj28c8zm0000gn/T/RtmpJ4Xryf/plop/'
#> ✓ Setting active project to '/private/var/folders/5z/rm2h62lj45d332kfpj28c8zm0000gn/T/RtmpJ4Xryf/plop'
#> ✓ Creating 'R/'
#> ✓ Writing 'DESCRIPTION'
#> Package: plop
#> Title: What the Package Does (One Line, Title Case)
#> Version: 0.0.0.9000
#> Authors@R (parsed):
#>     * Colin Fay <contact@colinfay.me> [aut, cre] (<https://orcid.org/0000-0001-7343-1846>)
#> Description: What the package does (one paragraph).
#> License: MIT + file LICENSE
#> Encoding: UTF-8
#> LazyData: true
#> Roxygen: list(markdown = TRUE)
#> RoxygenNote: 7.1.0
#> ✓ Writing 'NAMESPACE'
#> ✓ Setting active project to '<no active project>'
#> ✓ Setting active project to '/private/var/folders/5z/rm2h62lj45d332kfpj28c8zm0000gn/T/RtmpJ4Xryf/plop'
#> ✓ Adding '^inst/cordes$' to '.Rbuildignore'
#> Wrote to /private/var/folders/5z/rm2h62lj45d332kfpj28c8zm0000gn/T/RtmpJ4Xryf/plop/inst/cordes/package.json:
#> 
#> {
#>   "name": "cordes",
#>   "version": "1.0.0",
#>   "description": "",
#>   "main": "app.js",
#>   "scripts": {
#>     "test": "echo \"Error: no test specified\" && exit 1"
#>   },
#>   "keywords": [],
#>   "author": "",
#>   "license": "ISC"
#> }
#> ✓ Adding 'processx' to Imports field in DESCRIPTION
#> ● Refer to functions with `processx::fun()`
#> ✓ Adding 'yesno' to Imports field in DESCRIPTION
#> ● Refer to functions with `yesno::fun()`
#> ✓ Adding 'cordes' to Imports field in DESCRIPTION
#> ✓ Adding 'ColinFay/cordes' to Remotes field in DESCRIPTION
#> ● Refer to functions with `cordes::fun()`
```

``` r
withr::with_dir(
  tempdir(),{
    fs::dir_tree("plop")
  }
)
#> plop
#> ├── DESCRIPTION
#> ├── NAMESPACE
#> ├── R
#> │   ├── npm_install.R
#> │   └── run.R
#> └── inst
#>     └── cordes
#>         ├── app.js
#>         └── package.json
```
