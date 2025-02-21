#import "@preview/tablex:0.0.9": tablex, rowspanx, colspanx, hlinex, cellx

#let project(
  title: "",
  idl: "",
  curso: "",
  estudiantes: (),
  profesores: (),
  body
) = {
  // Configuración de página ajustada
  set page(
    paper: "a4",
    margin: (
      left: 3cm,
      right: 3cm,
      top: 3cm,
      bottom: 3cm,
    )
  )
  
  set text(font: "Arial", size: 11pt) 
  set page(
    header: align(center)[
      #box(width: 100%)[
        #image("../assets/encabezado.png", width: 21.5cm)
      ]
    ],
    footer: context {
      let page-number = counter(page).at(here()).first()
      if page-number > 2 {
        grid(
          columns: (1fr, auto),
          align(left)[#text(font: "Century Gothic", size: 9pt)[Oficina de Gestión de la Calidad]],
          align(right)[#text(font: "Century Gothic", size: 9pt, weight: "bold")[icontinental]#text(font: "Century Gothic", size: 9pt)[.edu.pe | #page-number]]
        )
      } else {
        grid(
          columns: (1fr, auto),
          align(right)[#text(font: "Century Gothic", size: 9pt, weight: "bold")[icontinental]#text(font: "Century Gothic", size: 9pt)[.edu.pe]]
        )
      }
    }
  )

  body
}

// Utility functions
#let figure(img, caption) = {
  figure(
    image(img, width: 80%),
    caption: caption
  )
}