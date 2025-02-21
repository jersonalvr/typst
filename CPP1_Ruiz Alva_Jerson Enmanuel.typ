// main.typ
#import "modules/template.typ": project
#import "modules/biz_canvas.typ": canvas
#import "modules/references.typ": (add-reference, cite, print-references)
#include "CPP1_Ruiz_Alva_Jerson_Enmanuel/referencias.typ"

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
#include "CPP1_Ruiz_Alva_Jerson_Enmanuel/introduction.typ"

= Parte A: Caso de Estudio Hershey's
#include "CPP1_Ruiz_Alva_Jerson_Enmanuel/part_a.typ"

= Parte B: Identificación de Ideas
#include "CPP1_Ruiz_Alva_Jerson_Enmanuel/part_b.typ"

= Business Model Canvas
#include "CPP1_Ruiz_Alva_Jerson_Enmanuel/bmc.typ"

= Conclusiones
#include "CPP1_Ruiz_Alva_Jerson_Enmanuel/conclusions.typ"

#print-references()