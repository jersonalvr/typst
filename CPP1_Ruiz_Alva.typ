// main.typ
#import "modules/template.typ": project
#import "modules/biz_canvas.typ": biz_canvas
#import "modules/references.typ": *
#include "CPP1_Ruiz_Alva_Jerson_Enmanuel/referencias.typ"

#show: project.with(
  title: "Evolución de la IA y su relevancia",
  idl: "1",
  curso: "Introducción a la Inteligencia Artificial",
  estudiantes: ("Jerson Ruiz Alva",),
  profesores: ("Gino Joel Taipe Miranda",)
)

// Table of contents
#outline(title: "Índice", indent: auto)
#pagebreak()

= Introducción
#include "CPP1_Ruiz_Alva_Jerson_Enmanuel/introduction.typ"

#include "CPP1_Ruiz_Alva_Jerson_Enmanuel/part_a.typ"

#include "CPP1_Ruiz_Alva_Jerson_Enmanuel/part_b.typ"

= Conclusiones
#include "CPP1_Ruiz_Alva_Jerson_Enmanuel/conclusions.typ"

#print-references()