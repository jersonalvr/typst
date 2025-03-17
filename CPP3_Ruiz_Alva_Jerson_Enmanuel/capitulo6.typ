// capitulo6.typ
#import "/modules/impact.typ": crear-matriz-impacto
#import "/modules/tablas.typ": crear-tabla

== 6.1 Matriz de Evaluación del Impacto Social

#crear-matriz-impacto(
  dimensiones: (
    ("Económica", [
      - *Generación de ingresos*: Incremento del 40% en rentabilidad para agricultores
      - *Creación de empleo*: 150 puestos directos y 300 indirectos
      - *Valorización de tierras*: Aumento del 25% en valor de terrenos tecnificados
    ], [
      - Reducción de pobreza rural a través de la mejora productiva
      - Integración de pequeños productores en cadenas de valor
      - Disminución de migración rural mediante oportunidades locales
    ]),
    ("Ambiental", [
      - *Reducción de uso de agua*: 40% menos consumo por hectárea
      - *Disminución de agroquímicos*: 50% menos uso de pesticidas
      - *Conservación de suelos*: Reducción del 35% en erosión
    ], [
      - Mitigación del impacto del cambio climático en la agricultura
      - Preservación de la biodiversidad en zonas agrícolas
      - Disminución de la huella de carbono en la producción
    ]),
    ("Social", [
      - *Inclusión digital*: 10,000 agricultores capacitados en tecnología
      - *Seguridad alimentaria*: Aumento del 30% en producción de alimentos
      - *Equidad de género*: 40% de participación femenina en programa
    ], [
      - Revitalización de comunidades rurales con tecnología
      - Preservación de conocimientos ancestrales en formato digital
      - Mejora de acceso a servicios a través de tecnología
    ]),
    ("Cultural", [
      - *Preservación de saberes*: Documentación de 500 prácticas tradicionales
      - *Tecnología inclusiva*: Interfaces en 3 lenguas nativas
      - *Valor identitario*: Reconocimiento de prácticas culturales
    ], [
      - Integración de conocimiento tradicional con ciencia moderna
      - Promoción del orgullo cultural en nuevas generaciones
      - Visibilización de prácticas agrícolas ancestrales
    ])
  )
)

== 6.2 Objetivos de Desarrollo Sostenible

#crear-tabla(
  headers: ("ODS", "CONTRIBUCIÓN"),
  rows: (
    ("ODS 1: Fin de la pobreza", "Aumento de ingresos en 40% para pequeños agricultores"),
    ("ODS 2: Hambre cero", "Incremento de productividad agrícola en zonas vulnerables"),
    ("ODS 8: Trabajo decente", "Creación de empleos tecnológicos en zonas rurales"),
    ("ODS 9: Industria e innovación", "Desarrollo de tecnología adaptada para la agricultura"),
    ("ODS 12: Producción responsable", "Reducción del 50% en uso de agroquímicos"),
    ("ODS 13: Acción climática", "Sistemas de adaptación al cambio climático")
  )
)

#pagebreak()

== 6.3 Medición de Impacto

#crear-tabla(
  headers: ("INDICADOR", "LÍNEA BASE", "META AÑO 3", "METODOLOGÍA DE MEDICIÓN"),
  rows: (
    ("Ingreso promedio de agricultores", "S/. 950 mensual", "S/. 1,330 mensual", "Encuesta socioeconómica trimestral"),
    ("Eficiencia hídrica", "12,000 m³/ha/año", "7,200 m³/ha/año", "Monitoreo con sensores IoT"),
    ("Uso de agroquímicos", "15 kg/ha/año", "7.5 kg/ha/año", "Registro de aplicaciones"),
    ("Agricultores capacitados", "0", "10,000", "Sistema de certificación digital"),
    ("Prácticas tradicionales preservadas", "0", "500", "Repositorio digital cultural")
  )
)