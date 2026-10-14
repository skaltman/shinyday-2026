library(ggplot2)

capability_profile_plot <- function(values, title = NULL, accent = "#b8623f") {
  stopifnot(
    is.numeric(values),
    length(values) == 5L,
    all(is.finite(values)),
    all(values >= 0 & values <= 1)
  )

  angles <- seq(0, 2 * pi, length.out = 6)[1:5]
  axes <- data.frame(x = sin(angles), y = cos(angles))
  closed_x <- c(axes$x, axes$x[1])
  closed_y <- c(axes$y, axes$y[1])

  grid <- do.call(
    rbind,
    lapply(c(1 / 3, 2 / 3, 1), function(radius) {
      data.frame(x = closed_x * radius, y = closed_y * radius, ring = radius)
    })
  )

  profile <- data.frame(
    x = closed_x * c(values, values[1]),
    y = closed_y * c(values, values[1])
  )

  labels <- data.frame(
    x = c(0, 1.4, 0.9, -0.9, -1.4),
    y = c(1.35, 0.43, -1.17, -1.17, 0.43),
    label = c("planning", "writing", "code review", "refactor", "data analysis")
  )

  ggplot() +
    geom_path(
      data = grid,
      aes(x, y, group = ring),
      linewidth = 0.35,
      alpha = 0.2
    ) +
    geom_segment(
      data = axes,
      aes(x = 0, y = 0, xend = x, yend = y),
      linewidth = 0.35,
      alpha = 0.2
    ) +
    geom_polygon(data = profile, aes(x, y), fill = accent, alpha = 0.12) +
    geom_path(data = profile, aes(x, y), color = accent, linewidth = 0.7) +
    geom_text(
      data = labels,
      aes(x, y, label = label),
      size = 6,
      family = "sans"
    ) +
    coord_fixed(xlim = c(-2.25, 2.25), ylim = c(-1.5, 1.5), expand = FALSE) +
    labs(title = title) +
    theme_void() +
    theme(
      plot.title = element_text(size = 30, face = "bold", hjust = 0.5),
      plot.background = element_rect(fill = "transparent", color = NA),
      panel.background = element_rect(fill = "transparent", color = NA),
      plot.margin = margin(10, 10, 10, 10)
    )
}
