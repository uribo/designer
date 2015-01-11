#' plot palette
#' @export
gg_palette <- function(palette) {
  x <- c(1:length(palette))
  y <- rep(1, length(palette))
  z <- c(letters[1:length(palette)])
  xyz <- merge(x, y) %>% cbind(palette)
  
  ggplot(data = xyz, 
         aes(x = x, y = y), guide = F) +
    geom_point(size = 12, aes(color = palette)) +
    scale_colour_manual(values = palette) +
    theme_bw()
}