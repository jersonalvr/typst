// main.typ
#import "modules/template.typ": project
#import "modules/references.typ": *
#include "CPP1_Ruiz_Alva/referencias.typ"

#show: project.with(
  title: "Evolución de la IA y su relevancia",
  idl: "2",
  curso: "Introducción a la Inteligencia Artificial",
  estudiantes: ("APAZA PEREZ, OSCAR GONZALO", "PONCE DE LEON TORRES, FABYOLA KORAYMA", "RUIZ ALVA, JERSON ENMANUEL"),
  profesores: ("Gino Joel Taipe Miranda",)
)

// Table of contents
#outline(title: "Índice", indent: auto)
#pagebreak()

= Introducción
#include "CPP2_Ruiz_Alva/introduction.typ"

#include "CPP2_Ruiz_Alva/part_a.typ"

#include "CPP2_Ruiz_Alva/part_b.typ"

= Conclusiones
#include "CPP2_Ruiz_Alva/conclusions.typ"

#print-references()