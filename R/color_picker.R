#' color picker using in file
#' 
#' @import magrittr
#' @export
color_picker <- function(file, show = TRUE) {
  d <- readLines(file) %>%
    grep("#", ., value = TRUE) %>%
    strsplit(split = " +") %>%
    unlist() %>%
    grep("#[[:alnum:]]", ., value = TRUE) %>%
    strsplit(split = " +") %>%
    unlist() %>%
    stringr::str_extract("#[[:alnum:]]+") %>%
    grep("^#[[:alnum:]]{6}", .,  value = TRUE) %>%
    unique() %>%
    print()
  
  if(show == TRUE) {
    colortools::pizza(d)
    } else {
      NA
    print(d)
    }
}