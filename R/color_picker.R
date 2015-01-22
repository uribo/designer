#' return using color in doc
#' 
#' @import magrittr
#' @usage NULL
#' @export
color_picker <- function(file, show = TRUE, ...) {
  col <- readLines(file, warn = FALSE) %>%
    stringr::str_match_all("[\"\'](#[0-9a-fA-F]{6})[\"\']") %>% 
    Filter(function(x) length(x) != 0, .) %>%
    Map(function(x) x[,2], .) %>% 
    unlist %>%
    unique %>%
    print
  
  if(show == TRUE) {
    colortools::pizza(col)
    } else {
      NA
    print(col)
    }
}