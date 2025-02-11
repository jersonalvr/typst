// main.typ
#import "modules/template.typ": project
#import "modules/biz_canvas.typ": canvas
#import "referencias.typ": references, print-references, cite

#show: project.with(
  title: "Plan de iniciativa empresarial y modelo de negocio",
  idl: "1",
  curso: "Iniciativa Empresarial",
  estudiantes: ("Jerson Ruiz Alva",),
  profesores: ("Jorge Martin Vega Rosales",)
)

// Table of contents
#outline(title: "Índice", indent: true)
#pagebreak()

= Introducción
#include "sections/introduction.typ"

= Parte A: Caso de Estudio Hershey's
#include "sections/part_a.typ"

= Parte B: Identificación de Ideas
#include "sections/part_b.typ"

= Business Model Canvas
#include "sections/bmc.typ"

= Conclusiones
#include "sections/conclusions.typ"

#print-references()