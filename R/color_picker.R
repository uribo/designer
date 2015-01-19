#' return using color in doc
#' 
#' @import magrittr
#' @usage NULL
#' @export
color_picker <- function(file, show = TRUE, ...) {
  col <- readLines(file, warn = FALSE) %>%
    grep("#", ., value = TRUE) %>%
    strsplit(split = " +") %>%
    unlist() %>%
    grep("#[[:alnum:]]", ., value = TRUE) %>%
    strsplit(split = " +") %>%
    unlist() %>%
    stringr::str_extract("#[[:alnum:]]+") %>%
    grep("^#[[:alnum:]]{6}", .,  value = TRUE) %>%
    stringr::str_sub(start = 1, end = 7) %>%
    unique() %>%
    print()
  
  if(show == TRUE) {
    colortools::pizza(col)
    } else {
      NA
    print(col)
    }
}