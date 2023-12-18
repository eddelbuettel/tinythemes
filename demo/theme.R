library(ggplot2)
library(patchwork)

## example from hrbrthemese::theme_ipsum_rc(), first with defaults
p1 <- ggplot(mtcars, aes(mpg, wt)) + geom_point() +
    labs(x="Fuel effiiency (mpg)", y="Weight (tons)",
         title="Seminal ggplot2 scatterplot example",
         subtitle="A plot that is only useful for demonstration purposes",
         caption="Brought to you by the letter 'g'")

## and then with the theme
p2 <- p1 + tinythemes::theme_ipsum_rc()

## side by side
p1 + p2

#png("demo.png", 1200, 600)
#p1 + p2
#dev.off()
