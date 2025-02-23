// capitulo2.typ
#import "../modules/references.typ": *
#include "referencias.typ"

== 2.1 Oportunidad de Negocio
- 70% de pequeños agricultores en Perú utilizan métodos tradicionales de cultivo #cite("inei2023")

- Pérdidas anuales por plagas y enfermedades ascienden a \$300 millones #cite("minagri2024")

- Creciente demanda de productos agrícolas trazables y sostenibles

- Expansión de cobertura móvil en zonas rurales

- Programas gubernamentales de apoyo a la agricultura familiar

== 2.2 Propuesta de Valor
#grid(
  columns: 2,
  [*Problema*
  - Baja productividad agrícola por métodos tradicionales

  - Pérdidas post-cosecha significativas

  - Impacto del cambio climático en los cultivos

  - Acceso limitado a asistencia técnica

  - Dificultad en acceso a mercados premium

  ],
  [*Solución*
  - Alertas tempranas mediante IA para detección de plagas

  - Optimización de recursos hídricos y fertilizantes

  - Seguro agrícola digital integrado

  - Asistencia técnica virtual 24/7

  - Conexión directa con compradores certificados
  
  ]
)

== 2.3 Mercado Potencial

#let data = (
  ("La Libertad", "85,000", "5% anual", "Papa, Maíz"),
  ("Piura", "120,000", "7% anual", "Banano, Mango"),
  ("Arequipa", "65,000", "4% anual", "Quinua, Kiwicha"),
)

#align(center,
  table(
    columns: 4,
    [*Región*], [*Agricultores*], [*Crecimiento*], [*Cultivos Principales*],
    ..data.flatten()
  )
)

== 2.4 Mercado Objetivo
- Agricultores de 20-60 años con:
  - Acceso básico a tecnología móvil
  - Disposición a adoptar nuevas prácticas
  - Participación en cooperativas

- Parcelas de 1-5 hectáreas dedicadas a:
  - Cultivos de alto valor
  - Producción orgánica
  - Agroexportación

- Cooperativas agrícolas en zonas rurales con:
  - Mínimo 50 miembros activos
  - Estructura organizacional establecida
  - Experiencia en proyectos de innovación

== 2.5 Competidores
#grid(
  columns: (1fr, 2fr),
  [*Directos*
  - AgroTech SAC:
    + Solución general sin adaptación local
    + Mayor costo de implementación
  - SmartFarming:
    + Enfoque en grandes productores
    + Sin soporte en idiomas locales
  ],
  [*Indirectos*
  - Asesores agrícolas tradicionales:
    + Limitada cobertura geográfica
    + Sin integración tecnológica
  - Proveedores de insumos agrícolas:
    + Recomendaciones sesgadas
    + Sin seguimiento continuo
  ]
)