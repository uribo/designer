#' generate color palette from Dribble shot
#'
#' @import rvest
#' @export
get_shot_pal <- function (palette = 8, genre = c("debut", "recent", "teams", "playoffs", "animated"), post.n = 1) {
  
  base.url <- c("https://dribbble.com")
  
  request.url <- html(paste(base.url, "/shots?list=", genre, sep = "")) %>%
    html_nodes(".dribbble-img a") %>%
    html_attr("href") %>%
    unique() %>%
    head(post.n)
  
  request.url <-paste(base.url, request.url, sep = "")
  
  url <- html(request.url)
  cols <- url %>% 
    html_nodes("ul.color-chips li a") %>%
    html_attr("title")
  
  cols[1:palette]
  na.omit(cols)
}