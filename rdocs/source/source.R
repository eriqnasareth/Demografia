# A padronização a seguir teve como inspiração a padronização da ESTAT - Unb

# Fonte

windowsFonts(Arial=windowsFont("sans"))


# Cores e temas

if (!require("pacman")) install.packages("pacman")

cores_ibgeriq <- c(
  "#990F26", "#3D0F99", "#CC9900", "#E25822", "#54990F",
  "#7B4173", "#006606", "#663333", "#008091", "#041835",
  "#333333")


theme_ibgeriq <- function(...) {
  theme <- ggplot2::theme_bw() +
    ggplot2::theme(
      axis.title.y = ggplot2::element_text(colour = "black", size = 10),
      axis.title.x = ggplot2::element_text(colour = "black", size = 10),
      axis.text = ggplot2::element_text(colour = "black", size = 10),
      panel.border = ggplot2::element_blank(),
      axis.line = ggplot2::element_line(colour = "black"),
      text = element_text(family = "sans", size = 12),
      legend.position = "top",
      ...
    )
  return(
    list(
      theme,
      scale_fill_manual(values = cores_ibgeriq),
      scale_colour_manual(values = cores_ibgeriq),
      scale_y_continuous(
        labels = scales::number_format(decimal.mark = ',',
                                       #accuracy = 0.01,
                                       big.mark = "."))
    )
  )
}
