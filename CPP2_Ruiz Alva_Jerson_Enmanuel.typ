// Archivo principal: CPP2_Ruiz_Alva_Jerson_Enmanuel.typ
#import "modules/template.typ": project
#import "modules/biz_canvas.typ": biz_canvas
#import "modules/references.typ": (add-reference, cite, print-references)
#include "CPP2_Ruiz_Alva_Jerson_Enmanuel/referencias.typ"

#show: project.with(
  title: "PROYECTO DE INICIATIVA EMPRESARIAL: AGRO-IA PERÚ",
  idl: "2",
  curso: "Iniciativa Empresarial",
  estudiantes: ("Jerson Ruiz Alva",),
  profesores: ("Jorge Martin Vega Rosales",)
)

// Índice
#outline(title: "Índice", indent: auto)
#pagebreak()

= Resumen Ejecutivo
#include "CPP2_Ruiz_Alva_Jerson_Enmanuel/resumen.typ"

= Capítulo I: Descripción del Negocio
#include "CPP2_Ruiz_Alva_Jerson_Enmanuel/capitulo1.typ"

= Capítulo II: Análisis del Mercado
#include "CPP2_Ruiz_Alva_Jerson_Enmanuel/capitulo2.typ"

= Business Model Canvas
#include "CPP2_Ruiz_Alva_Jerson_Enmanuel/bmc.typ"

= Conclusiones
#include "CPP2_Ruiz_Alva_Jerson_Enmanuel/conclusions.typ"

#print-references()