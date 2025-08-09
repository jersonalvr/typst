// main.typ
#import "modules/template.typ": project

// Configuración del proyecto
#let project-config = (
  title: "Definición versus Concepto",
  idl: "3",
  curso: "Comunicación y Argumentación",
  estudiantes: ("RUIZ ALVA, JERSON ENMANUEL",),
  profesores: ("ROCIO JESSICA TICLLACURI RAMOS",)
)

#show: project.with(..project-config)

// Título principal del documento extraído automáticamente
= #project-config.title <introduccion>

#include "CPP3_1_Ruiz_Alva/introduction.typ"

#include "CPP3_1_Ruiz_Alva/part_a.typ"

#include "CPP3_1_Ruiz_Alva/part_b.typ"

#include "CPP3_1_Ruiz_Alva/conclusions.typ"

#bibliography(
  "CPP3_1_Ruiz_Alva/bibliografia.bib",
  title: auto, 
  full: false, // solo incluir las entradas citadas
  style: "apa"
)