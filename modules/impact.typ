#import "@preview/tablex:0.0.9": tablex, cellx, rowspanx, colspanx

#let crear-matriz-impacto(dimensiones: ()) = {
  heading(level: 3, "Matriz de Impacto del Proyecto")
  
  tablex(
    columns: (auto, 1fr, 1fr),
    inset: 8pt,
    stroke: 0.5pt,
    
    cellx(fill: rgb("#f0f0f0"))[*Dimensión*], 
    cellx(fill: rgb("#f0f0f0"))[*Impactos Cuantificables*], 
    cellx(fill: rgb("#f0f0f0"))[*Impactos Cualitativos*],
    
    ..dimensiones.map(dim => {
      (
        cellx(fill: rgb("#e6f2ff"))[*#dim.at(0)*],
        cellx()[#dim.at(1)],
        cellx()[#dim.at(2)]
      )
    }).flatten()
  )
}