// capitulo1.typ
#import "/modules/foda.typ": create-foda
#import "@preview/pintorita:0.1.3"
#show raw.where(lang: "pintora"): it => pintorita.render(it.text, style: "default", font: "Century Gothic")

== 1.1 Nombre del Negocio
*Agro-IA Perú: Sistema Inteligente para Agricultura Sostenible*

== 1.2 Descripción del Negocio
Plataforma tecnológica que integra:
- Sensores IoT para monitoreo en tiempo real de:
  - Humedad y temperatura del suelo
  - pH y nutrientes
  - Condiciones atmosféricas locales
  - Niveles de plagas mediante trampas inteligentes
- Aplicación móvil con:
  - Asistente por voz en español y quechua
  - Modo offline con sincronización automática
  - Calendario de actividades agrícolas personalizado
  - Sistema de alertas tempranas
- Dashboard web para cooperativas agrícolas, permitiendo:
  - Gestión colectiva de recursos
  - Análisis de tendencias de mercado
  - Coordinación de ventas conjuntas
  - Seguimiento de certificaciones orgánicas

== 1.3 Elementos Estratégicos
=== 1.3.1 Visión
"Ser líder en soluciones agrícolas inteligentes para Latinoamérica al 2030, transformando la agricultura familiar en un modelo de eficiencia y sostenibilidad"

=== 1.3.2 Misión
"Empoderar a los pequeños agricultores mediante tecnología accesible y sostenible, preservando conocimientos ancestrales e integrando innovación tecnológica"

=== 1.3.3 Objetivos
1. Reducir costos de producción en 30% en los primeros dos años mediante:
   - Optimización de uso de insumos
   - Prevención de pérdidas por plagas
   - Eficiencia en uso de recursos hídricos

2. Aumentar rendimientos en 40% en el primer año a través de:
   - Predicciones precisas de siembra
   - Manejo integrado de cultivos
   - Optimización de ciclos de cosecha

3. Capacitar a 10,000 agricultores en el primer año:
   - Programa de alfabetización digital
   - Talleres de agricultura de precisión
   - Certificación en manejo sostenible

=== 1.3.4 Estructura Organizacional

```pintora
mindmap
@param layoutDirection LR
@param {
  l1NodeBgColor   #2B7A5D
  l1NodeTextColor #fff
  l2NodeBgColor   #26946C
  l2NodeTextColor #fff
  nodeBgColor     #67B599
  textColor       #fff
}
+ CEO
++ CTO \ Data Scientist
+++ Desarrolladores \ IA
+++ IoT \ Especialistas
+++ UX \ Diseñadores
++ CFO \ Finanzas
+++ Contabilidad
+++ Inversiones
++ COO \ Operaciones
+++ Agrónomos \ Campo
+++ Soporte \ Técnico
+++ Capacitación
```

== 1.4 Análisis FODA
#create-foda(
  fortalezas: [
    - Alianzas estratégicas con universidades y centros de investigación agrícola
    - Modelos de IA adaptados a microclimas locales y cultivos específicos
    - Equipo multidisciplinario con experiencia en agtech
    - Tecnología probada en pilotos exitosos
    - Red establecida de agricultores early adopters
  ],
  debilidades: [
    - Dependencia inicial de financiamiento externo para escalamiento
    - Curva de aprendizaje de usuarios en zonas rurales
    - Infraestructura limitada en algunas regiones objetivo
    - Necesidad de validación extensa de modelos predictivos
    - Costos iniciales de hardware IoT
  ],
  oportunidades: [
    - Crecimiento del mercado agrotech en Latinoamérica
    - Apoyo gubernamental a la digitalización agrícola
    - Tendencia creciente hacia agricultura sostenible
    - Demanda de trazabilidad en cadenas de suministro
    - Acceso a fondos de innovación agrícola
  ],
  amenazas: [
    - Competencia de multinacionales con mayores recursos
    - Cambios regulatorios en políticas agrícolas
    - Resistencia cultural al cambio tecnológico
    - Inestabilidad climática afectando predicciones
    - Fluctuaciones en precios de commodities agrícolas
  ]
)
