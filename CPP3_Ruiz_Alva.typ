// main.typ
#import "modules/template.typ": project

// Configuración del proyecto
#let project-config = (
  title: "Prototipos y validación, Documentación de requerimientos, Integración de conocimientos",
  idl: "3",
  curso: "Requisitos del Software",
  estudiantes: ("APAZA PEREZ, OSCAR GONZALO", "PONCE DE LEON TORRES, FABYOLA KORAYMA", "RUIZ ALVA, JERSON ENMANUEL",),
  profesores: ("Ray Leonardo Rojas Enciso",)
)

#show: project.with(..project-config)

// Título principal del documento extraído automáticamente
= #project-config.title <introduccion>

#include "CPP3_Ruiz_Alva/introduction.typ"

#include "CPP3_Ruiz_Alva/part_a.typ"

#include "CPP3_Ruiz_Alva/part_b.typ"

#include "CPP3_Ruiz_Alva/conclusions.typ"

= Bibliografía
#bibliography(
  "CPP3_Ruiz_Alva/bibliografia.bib",
  title: none, 
  full: false, // solo incluir las entradas citadas
  style: "ieee"
)