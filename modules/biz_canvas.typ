#import "@preview/tablex:0.0.9": tablex, rowspanx, colspanx, hlinex, cellx

#let canvas(
  title:[],
  business:[],
  problems:[],
  activities:[],
  metrics:[],
  proposition:[],
  unfair:[],
  channels:[],
  clients:[],
  costs:[] ,
  revenues:[],
) = {
  set page(
    "a4",
    flipped: true,
    fill: rgb("ffffff"),
    margin: (
      top: 3cm,    // Más espacio para el encabezado
      bottom: 3cm, // Más espacio para el pie de página
      left: 2cm,   // Margen izquierdo ajustado
      right: 2cm   // Margen derecho ajustado
    )
  )
  set text(font: "Arial", size: 9.5pt)
  
  let colors = (
    problems: rgb("#FFE5E5"),
    activities: rgb("#E5FFE5"),
    metrics: rgb("#E5FFFF"),
    proposition: rgb("#FFE5FF"),
    unfair: rgb("#FFFFE5"),
    channels: rgb("#E5E5FF"),
    clients: rgb("#FFE5CC"),
    costs: rgb("#E5FFE5"),
    revenues: rgb("#E5FFE5")
  )
  pad(x:2em, top:4em, bottom: 3em)[
    #place(dy:-3em, title)
    #place(left, dy:-4em, dx: 15.8cm, box(
      fill: rgb("#F8F9FA"),
      radius: 1em,
      width: 8.5cm,
      height: 1cm,
      inset: 1em,
      stroke: 0.5pt,
      business))
    #tablex(
      columns: (2fr, 2fr, 1fr, 1fr, 2fr, 2fr),
      rows: (1fr, 1fr, 1fr),
      inset: 0.8em,
      stroke: 0.5pt,
      radius: 4pt,
      rowspanx(2, fill: colors.problems)[#problems],
      cellx(fill: colors.activities)[#activities],
      cellx(colspan: 2, rowspan:2, fill: colors.proposition)[#proposition],
      cellx(fill: colors.unfair)[#unfair],
      rowspanx(2, fill: colors.clients)[#clients],
      (),
      cellx(fill: colors.metrics)[#metrics],
      (),
      cellx(fill: colors.channels)[#channels],
      (),
      cellx(colspan:3, fill: colors.costs)[#costs],
      cellx(colspan:3, fill: colors.revenues)[#revenues]
    )
  ]
}