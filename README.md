
## tinythemes -- Lightweight Repackaging of ggplot2 Themes

[![CI](https://github.com/eddelbuettel/tinythemes/actions/workflows/r2u.yaml/badge.svg)](https://github.com/eddelbuettel/tinythemes/actions/workflows/r2u.yaml)
[![License](https://img.shields.io/badge/License-MIT-orange.svg)](https://opensource.org/licenses/MIT)
[![CRAN](https://www.r-pkg.org/badges/version/tinythemes)](https://cran.r-project.org/package=tinythemes)
[![r-universe](https://eddelbuettel.r-universe.dev/badges/tinythemes)](https://eddelbuettel.r-universe.dev/tinythemes)
[![Dependencies](https://tinyverse.netlify.com/badge/tinythemes)](https://cran.r-project.org/package=tinythemes)
[![Last Commit](https://img.shields.io/github/last-commit/eddelbuettel/tinythemes)](https://github.com/eddelbuettel/tinythemes)

### Example: Without, and With, The Theme 

![](https://eddelbuettel.github.io/images/2023-12-18/tinythemes_demo.png)

One the left are `ggplot()` defaults, on the right the theme is added.

### Motivation

The [hrbrthemes][hrbrthemes] package contains a nice theme as seen in the preceding example. 
Installing the package, however, comes at cost of fourty-nine (yeah, really) additional packages:

```r
> db <- tools::CRAN_package_db()
> deps <- tools::package_dependencies(c("ggplot2", "hrbrthemes"), recursive=TRUE, db=db)
> Filter(\(x) x != "ggplot2", setdiff(deps[[2]], deps[[1]]))
 [1] "extrafont"         "knitr"             "rmarkdown"        
 [4] "htmltools"         "tools"             "gdtools"          
 [7] "extrafontdb"       "Rttf2pt1"          "Rcpp"             
[10] "systemfonts"       "gfonts"            "curl"             
[13] "fontquiver"        "base64enc"         "digest"           
[16] "ellipsis"          "fastmap"           "evaluate"         
[19] "highr"             "xfun"              "yaml"             
[22] "bslib"             "fontawesome"       "jquerylib"        
[25] "jsonlite"          "stringr"           "tinytex"          
[28] "cachem"            "memoise"           "mime"             
[31] "sass"              "fontBitstreamVera" "fontLiberation"   
[34] "shiny"             "crul"              "crayon"           
[37] "stringi"           "cpp11"             "urltools"         
[40] "httpcode"          "fs"                "rappdirs"         
[43] "httpuv"            "xtable"            "sourcetools"      
[46] "later"             "promises"          "commonmark"       
[49] "triebeard"        
>
```

So this package goes the other way and currently contains only _one_ theme: `theme_ipsum_rc()`,
taken from [hrbrthemes][hrbrthemes] and minimally polished. 
Installing this package from CRAN results in zero additional dependencies.

### What If Something Goes Wrong?

Good question. This package is for when you know the Roboto Condensed font is in fact present and
ready to be used. Package [hrbrthemes][hrbrthemes] has some documentation and helpers about what to
do when that is not the case; consult that documentation first.

### Author

The theme was written by Bob Rudis who is the principal author of [hrbrthemes][hrbrthemes].

This package was put together by Dirk Eddelbuettel

### License

tinythemese is released under the same terms as [hrbrthemes][hrbrthemes], namely the MIT license.

[hrbrthemes]: https://github.com/hrbrmstr/hrbrthemes
