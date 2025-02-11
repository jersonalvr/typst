#import "@preview/tablex:0.0.5": tablex, rowspanx, colspanx, hlinex, cellx

#let project(
  title: "",
  idl: "",
  curso: "",
  estudiantes: (),
  profesores: (),
  body
) = {
  // Page setup
  set page(
    paper: "a4",
    margin: (
      left: 3cm,
      right: 3cm,
      top: 2cm,
      bottom: 2.7cm,
    )
  )
  
  set text(font: "Arial", size: 12pt)
  
  // Cover page
  page(margin: (x: 3cm, y: 2cm))[
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
      
      #text(size: 14pt, weight: "bold")[Elaborado por:]
      #v(0.3cm)
      #text(size: 12pt)[
        #for student in estudiantes {
          [#student \ ]
        }
      ]
      
      #v(1.5cm)
      #text(size: 14pt, weight: "bold")[Solicitado por:]
      #v(0.3cm)
      #text(size: 12pt)[
        #for prof in profesores {
          [#prof \ ]
        }
      ]
      
      #v(2cm)
      #text(size: 12pt)[Huancayo, #datetime.today().year()]
    ]
  ]

  // Header and footer
  set page(
    header: align(center)[
      #image("../assets/encabezado.png", width: 21cm)
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

  // Document content
  body
}

// Utility functions
#let figure(img, caption) = {
  figure(
    image(img, width: 80%),
    caption: caption
  )
}