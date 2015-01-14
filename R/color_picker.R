#' color picker using in file
#' 
#' @export
color_picker <- function(file, show = TRUE) {
  d <- readLines(file)
  
  d <- grep("#", d, value = TRUE) %>%
    strsplit(split = " +") %>%
    unlist()

  d <- grep("#[[:alnum:]]", d, value = TRUE) %>%
    strsplit(split = " +") %>%
    unlist() %>%
    stringr::str_extract("#[[:alnum:]]+") %>%
    unique() %>%
    print()
  
  if(show == TRUE) {
    colortools::pizza(d)
    } else {
      NA
    print(d)
    }
}