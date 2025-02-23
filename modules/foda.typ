// foda.typ

#let foda-section(title, color, content) = {
  block(
    width: 100%,
    fill: color.lighten(80%),
    inset: 1em,
    radius: 4pt,
    stroke: 0.5pt + color
  )[
    #text(weight: "bold", size: 11pt, fill: color.darken(20%))[#title]
    
    #set text(fill: color.darken(10%))
    #content
  ]
}

#let create-foda(
  title: "",
  fortalezas: [],
  debilidades: [],
  oportunidades: [],
  amenazas: []
) = {
  // Solo muestra el título y el espacio vertical si hay un título
  if title != "" {
    text(size: 14pt, weight: "bold")[#title]
    v(1em)
  }

  grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    
    foda-section(
      "Fortalezas",
      rgb("#22c55e"),
      fortalezas
    ),
    
    foda-section(
      "Debilidades",
      rgb("#ef4444"),
      debilidades
    ),
    
    foda-section(
      "Oportunidades",
      rgb("#3b82f6"),
      oportunidades
    ),
    
    foda-section(
      "Amenazas",
      rgb("#f97316"),
      amenazas
    )
  )
}