# Libraries
library(ggplot2)
library(patchwork)
# Create data
data1 <- data.frame(
  x=LETTERS[1],
  y=abs(rnorm(1))
)

data2 <- data.frame(
  x=LETTERS[1:26],
  y=abs(rnorm(26))
)


# Horizontal version
p1 <- ggplot(data1, aes(x=x, y=y)) +
  geom_segment( aes(x=x, xend=x, y=0, yend=y), color="skyblue") +
  geom_point( color="blue", size=4, alpha=0.6) +
  theme_light() +
  coord_flip() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    axis.ticks.y = element_blank()
  ) + scale_x_discrete(labels = NULL, expand = c(0, .2))

p2 <- ggplot(data2, aes(x=x, y=y)) +
  geom_segment( aes(x=x, xend=x, y=0, yend=y), color="skyblue") +
  geom_point( color="blue", size=4, alpha=0.6) +
  theme_light() +
  coord_flip() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    axis.ticks.y = element_blank()
  ) + scale_x_discrete(labels = NULL, expand = c(0, .2))


p1 / p2 + plot_layout(ncol = 1, heights = c(1, 5))
