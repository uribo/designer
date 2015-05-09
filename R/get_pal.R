#' generate color palette from Dribble
#'
#' @param url input URL
#' @param pallet integer
#' @import rvest
#' @export
get_pal <- function(url, pallet = 8, show = TRUE) {
  url <- html(url)
  cols <- url %>% 
    html_nodes("ul.color-chips li a") %>%
    html_attr("title")
  cols[1:pallet]
  na.omit(cols)
  
  if (show == TRUE) {
    colortools::pizza(cols)
  } else {
    NA
    print(cols)
  }
}