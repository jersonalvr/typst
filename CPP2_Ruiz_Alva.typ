// main.typ
#import "modules/template.typ": project

// Configuración del proyecto
#let project-config = (
  title: "",
  idl: "2",
  curso: "Proyecto Productivo IIIA",
  estudiantes: ("APAZA PEREZ, OSCAR GONZALO", "PONCE DE LEON TORRES, FABYOLA KORAYMA", "RUIZ ALVA, JERSON ENMANUEL",),
  profesores: ("Sergio Victor Orizano Salvador",)
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
  style: "ieee"
)