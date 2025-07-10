// main.typ
#import "modules/template.typ": project

// Configuración del proyecto
#let project-config = (
  title: "NORMATIVA DEL ESPAÑOL",
  idl: "2",
  curso: "Comunicación y Argumentación",
  estudiantes: ("RUIZ ALVA, JERSON ENMANUEL",),
  profesores: ("ROCIO JESSICA TICLLACURI RAMOS",)
)

#show: project.with(..project-config)

// Título principal del documento extraído automáticamente
= #project-config.title <introduccion>

#include "Ruiz_Alva/introduction.typ"

#include "Ruiz_Alva/part_a.typ"

#include "Ruiz_Alva/part_b.typ"

#include "Ruiz_Alva/conclusions.typ"

= Bibliografía
#bibliography(
  "Ruiz_Alva/bibliografia.bib",
  title: none, 
  full: false, // solo incluir las entradas citadas
  style: "apa"
)