// main.typ
#import "modules/template.typ": project

#show: project.with(
  title: "Aplicaciones prácticas de IA",
  idl: "3",
  curso: "Introducción a la Inteligencia Artificial",
  estudiantes: ("RUIZ ALVA, JERSON ENMANUEL",),
  profesores: ("Gino Joel Taipe Miranda",)
)

// Configuración de numeración para tablas
#show figure.where(kind: table): set figure(supplement: [Tabla])

// Configuración de ecuaciones (si se necesitan)
#set math.equation(numbering: "(1)")

// Configuración de encabezados con numeración
#set heading(numbering: "1.")

// Table of contents
#outline(title: "Índice", indent: auto)
#pagebreak()

#include "CPP3_Ruiz_Alva/introduction.typ"

#include "CPP3_Ruiz_Alva/part_a.typ"

#include "CPP3_Ruiz_Alva/part_b.typ"

#include "CPP3_Ruiz_Alva/conclusions.typ"

#bibliography(
  "CPP3_Ruiz_Alva/bibliografia.bib",
  title: "Bibliografía",
  full: false,                // solo incluir las entradas citadas
  style: "ieee"
)