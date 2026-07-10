library(ggplot2)
library(scales)

col_azul <- "#1F4E79"
col_azul_oscuro <- "#16324F"
col_turquesa <- "#19A7AE"
col_turquesa_suave <- "#7AD7D1"
col_coral <- "#D95D39"
col_gris_oscuro <- "#374151"
col_gris_medio <- "#6B7280"
col_gris_claro <- "#E5E7EB"

# Colores para ejemplos didácticos de dos clases simples
colores_clase_simple <- c(
  "Alta" = col_coral,
  "Baja" = col_turquesa,
  "Con víctimas" = col_coral,
  "Solo daños" = col_turquesa
)

tema_libro <- function() {
  theme_minimal(base_size = 13) +
    theme(
      plot.background = element_rect(fill = "white", color = NA),
      panel.background = element_rect(fill = "white", color = NA),
      panel.grid.major = element_line(color = col_gris_claro, linewidth = 0.4),
      panel.grid.minor = element_blank(),
      axis.title = element_text(face = "bold", color = col_gris_oscuro),
      axis.text = element_text(color = col_gris_oscuro),
      plot.title = element_text(face = "bold", size = 16, color = col_azul, hjust = 0),
      plot.subtitle = element_text(size = 11, color = col_gris_medio, hjust = 0),
      plot.caption = element_text(size = 9, color = col_gris_medio),
      legend.title = element_text(face = "bold", color = col_gris_oscuro),
      legend.text = element_text(color = col_gris_oscuro),
      strip.text = element_text(face = "bold", color = col_azul_oscuro),
      strip.background = element_rect(fill = "#DCEAF7", color = NA),
      axis.line = element_line(color = col_gris_claro),
      plot.margin = margin(10, 12, 10, 10)
    )
}

escala_clases_fill <- function(...) {
  scale_fill_manual(values = colores_clase_simple, ...)
}

escala_clases_color <- function(...) {
  scale_color_manual(values = colores_clase_simple, ...)
}

etiqueta_numero <- label_number(big.mark = ",", decimal.mark = ".")
etiqueta_porcentaje <- label_percent(accuracy = 1, decimal.mark = ".")
