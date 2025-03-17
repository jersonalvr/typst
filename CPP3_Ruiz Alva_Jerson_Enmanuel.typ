// Archivo principal: CPP3_Ruiz_Alva_Jerson_Enmanuel.typ
#import "modules/template.typ": project
#import "modules/biz_canvas.typ": biz_canvas
#import "modules/references.typ": (add-reference, cite, print-references)
#include "CPP3_Ruiz_Alva_Jerson_Enmanuel/referencias.typ"

#show: project.with(
  title: "PROYECTO DE INICIATIVA EMPRESARIAL: AGRO-IA PERÚ",
  idl: "3",
  curso: "Iniciativa Empresarial",
  estudiantes: ("Jerson Ruiz Alva",),
  profesores: ("Jorge Martin Vega Rosales",)
)

// Índice
#outline(title: "Índice", indent: auto)
#pagebreak()

#include "CPP3_Ruiz_Alva_Jerson_Enmanuel/resumen.typ"
#align(center)[
= Capítulo I: Descripción del Negocio
]
#include "CPP3_Ruiz_Alva_Jerson_Enmanuel/capitulo1.typ"

#align(center)[
= Capítulo II: Análisis del Mercado
]
#include "CPP3_Ruiz_Alva_Jerson_Enmanuel/capitulo2.typ"

#align(center)[
= Capítulo III: Estudio Técnico operativo
]
#include "CPP3_Ruiz_Alva_Jerson_Enmanuel/capitulo3.typ"

#align(center)[
= Capítulo IV: Estudio legal-organizacional administrativo
]
#include "CPP3_Ruiz_Alva_Jerson_Enmanuel/capitulo4.typ"

#align(center)[
= Capítulo V: Estudio y Evaluación Económica
]
#include "CPP3_Ruiz_Alva_Jerson_Enmanuel/capitulo5.typ"

#align(center)[
= Capítulo VI: Análisis del Impacto Social Positivo
]
#include "CPP3_Ruiz_Alva_Jerson_Enmanuel/capitulo6.typ"

#include "CPP3_Ruiz_Alva_Jerson_Enmanuel/bmc.typ"
#include "CPP3_Ruiz_Alva_Jerson_Enmanuel/conclusions.typ"
#print-references()