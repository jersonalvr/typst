// main.typ
#import "modules/template.typ": project

// Configuración del proyecto
#let project-config = (
  title: "La crisis de violencia sexual en el sistema educativo peruano",
  idl: "2",
  curso: "Comunicación y Argumentación",
  estudiantes: ("RUIZ ALVA, JERSON ENMANUEL",),
  profesores: ("ROCIO JESSICA TICLLACURI RAMOS",)
)

#show: project.with(..project-config)

// Título principal del documento extraído automáticamente
= #project-config.title <introduccion>

#include "CPP2_Ruiz_Alva/introduction.typ"

#include "CPP2_Ruiz_Alva/part_a.typ"

#include "CPP2_Ruiz_Alva/part_b.typ"

#include "CPP2_Ruiz_Alva/conclusions.typ"

= Bibliografía
#bibliography(
  "CPP2_Ruiz_Alva/bibliografia.bib",
  title: none, 
  full: false, // solo incluir las entradas citadas
  style: "apa"
)