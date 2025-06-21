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
  set text(font: "Arial", size: 12pt)
  set par(justify: true)

  // Configuración de ecuaciones (si se necesitan)
  set math.equation(numbering: "(1)")

  // Configuración de encabezados con numeración
  set heading(numbering: "1.", supplement: [Sección])

  // Configuración de numeración para tablas
  show figure.where(kind: table): set figure(supplement: [Tabla])

  // Configuración de numeración para figuras
  show figure.where(kind: image): set figure(supplement: [Figura])

  
  // Cover page with header and footer
  page(
    margin: (x: 3cm, y: 2cm),
    header: align(center)[
      #box(width: 100%)[
        #image("../assets/encabezado.png", width: 21.5cm)
      ]
    ],
    footer: grid(
      columns: (1fr, auto),
      align(right)[#text(font: "Century Gothic", size: 9pt, weight: "bold")[icontinental]#link("https://icontinental.edu.pe")[#text(font: "Century Gothic", size: 9pt)[.edu.pe]]]
    )
  )[
    #align(center)[
      #v(2cm)
      #image("../assets/logo_continental.png", width: 7.3cm)
      #v(2cm)
      
      #text(size: 18pt, weight: "bold")[INDICADOR DE LOGRO #idl]
      #v(0.3cm)
      
      #line(length: 11.35cm, stroke: rgb("#a6a6a6"))
      #v(0.1cm)
      
      #text(size: 18pt)[#curso]
      #v(0.1cm)
      
      #line(length: 11.35cm, stroke: rgb("#a6a6a6"))
      #v(2cm)
      
      #text(size: 16pt, weight: "bold")[Elaborado por:]
      #v(0.3cm)
      #text(size: 14pt)[
        #for student in estudiantes {
          [#student \ ]
        }
      ]
      
      #v(1.5cm)
      #text(size: 16pt, weight: "bold")[Solicitado por:]
      #v(0.3cm)
      #text(size: 14pt)[
        #for prof in profesores {
          [#prof \ ]
        }
      ]
      
      #v(2cm)
      #text(size: 14pt)[Huancayo, #datetime.today().year()]
    ]
  ]
  
  // Rest of the document
  set page(
    header: align(center + top)[
      #box(width: 100%, outset: (top: 0pt))[
        #image("../assets/encabezado.png", width: 21.5cm)
      ]
    ],
    footer: context {
      let page-number = counter(page).at(here()).first()
      if page-number > 1 {
        grid(
          columns: (1fr, auto),
          align(left)[#text(font: "Century Gothic", size: 9pt)[Oficina de Gestión de la Calidad]],
          align(right)[#text(font: "Century Gothic", size: 9pt, weight: "bold")[icontinental]#link("https://icontinental.edu.pe")[#text(font: "Century Gothic", size: 9pt)[.edu.pe]] | #page-number]
        )
      } else {
        grid(
          columns: (1fr, auto),
          align(right)[#text(font: "Century Gothic", size: 9pt, weight: "bold")[icontinental]#link("https://icontinental.edu.pe")[#text(font: "Century Gothic", size: 9pt)[.edu.pe]]]
        )
      }
    }
  )

  // Table of contents
  outline(title: "Índice", indent: auto)
  //outline(
    //title: "Lista de Figuras",
    //target: figure.where(kind: image)
  //)
  //outline(
    //title: "Lista de Tablas",
    //target: figure.where(kind: table)
  //)

  pagebreak()

  body
}