# designer: Design tools for R users

latest version... `0.1.2` (20150114)

## Installation

From GitHub

```r
devtools::install_github("uribo/designer")
```

## Usage

```r
library(designer) # loading package
```

### color_picker: return using color in doc.

```r
color_picker("sample.Rmd")
[1] "#000000" "#FFFFFF" "#9E9E9E" "#87CEEB" "#32CD32"
```

## Function

* `color_picker`
* `get_pal`
* `get_shot_pal`
* `golden_ratio`