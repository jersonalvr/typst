= Desarrollo de Prototipos y Validación con Usuarios <parte-a>

== Desarrollo del Prototipo de Interfaz de Usuario <prototipado>

El prototipado constituye una técnica fundamental en la ingeniería de requerimientos que permite visualizar y validar conceptos antes de la implementación completa @rudd1996. Para el Sistema de Gestión de Biblioteca Universitaria, se han identificado dos funcionalidades críticas que requieren prototipado detallado.

=== Selección de Funcionalidades Críticas <seleccion-funcionalidades>

La selección de funcionalidades para prototipado se basó en criterios de criticidad del negocio y frecuencia de uso @nielsen2003:

==== Funcionalidad 1: Búsqueda y Solicitud de Préstamo de Libros <func-busqueda>

Esta funcionalidad representa el núcleo del sistema desde la perspectiva del usuario final. Los estudiantes y docentes requieren un mecanismo eficiente para localizar recursos bibliográficos y solicitar préstamos de manera intuitiva.

*Características principales del prototipo:*

- *Barra de búsqueda inteligente* con autocompletado y filtros avanzados
- *Visualización de resultados* con información relevante (disponibilidad, ubicación, clasificación)
- *Proceso de solicitud* simplificado con confirmación en tiempo real
- *Panel de usuario* para seguimiento de solicitudes pendientes

*Flujo de interacción diseñado:*

+ Usuario accede al sistema mediante autenticación institucional
+ Utiliza la barra de búsqueda con términos específicos o navegación por categorías
+ Aplica filtros adicionales (fecha, tipo de recurso, disponibilidad)
+ Selecciona el recurso deseado y visualiza información detallada
+ Confirma la solicitud de préstamo y recibe notificación de confirmación

==== Funcionalidad 2: Gestión de Préstamos y Devoluciones <func-gestion>

Esta funcionalidad es crítica para el personal bibliotecario, ya que centraliza las operaciones administrativas del sistema. Debe proporcionar herramientas eficientes para gestionar el ciclo completo de préstamos.

*Características principales del prototipo:*

- *Dashboard administrativo* con métricas en tiempo real
- *Gestión de solicitudes* con opciones de aprobación/rechazo
- *Control de inventario* con seguimiento de ubicaciones físicas
- *Sistema de alertas* para fechas de vencimiento y recursos en mora

*Flujo de interacción diseñado:*

+ Bibliotecario accede al panel administrativo
+ Visualiza solicitudes pendientes organizadas por prioridad
+ Procesa solicitudes verificando disponibilidad y elegibilidad del usuario
+ Registra préstamos físicos mediante escáner de códigos de barras
+ Gestiona devoluciones y actualiza estado del inventario

=== Principios de Diseño Aplicados <principios-diseno>

El desarrollo de prototipos siguió principios establecidos de usabilidad y experiencia de usuario @norman2013:

/ Consistencia Visual: Mantenimiento de patrones de diseño coherentes en todas las pantallas
/ Navegación Intuitiva: Estructura de información lógica que reduce la carga cognitiva
/ Retroalimentación Inmediata: Confirmaciones visuales para todas las acciones del usuario
/ Tolerancia a Errores: Mecanismos de prevención y recuperación de errores
/ Accesibilidad: Cumplimiento de estándares WCAG para usuarios con discapacidades

=== Herramientas de Prototipado Utilizadas <herramientas>

Para el desarrollo de prototipos se evaluaron múltiples herramientas según criterios de funcionalidad, colaboración y fidelidad visual:

#figure(
  text(size: 10pt)[
  #table(
    columns: (2fr, 1fr, 1fr, 2fr),
    table.header([*Herramienta*], [*Fidelidad*], [*Colaboración*], [*Ventajas Principales*]),
    [Figma], [Alta], [Excelente], [Componentes reutilizables, prototipado interactivo],
    [Balsamiq], [Media], [Buena], [Rapidez de desarrollo, enfoque en estructura],
    [Adobe XD], [Alta], [Excelente], [Integración con ecosistema Adobe],
    [Sketch], [Alta], [Limitada], [Potente para diseño visual detallado],
  )],
  caption: [Comparación de herramientas de prototipado evaluadas.]
) <tabla-herramientas>

Basándose en el análisis de @tabla-herramientas, se seleccionó *Figma* como herramienta principal debido a su capacidad de prototipado interactivo y facilidades de colaboración en tiempo real.

== Planificación de Validación con Usuarios <validacion>

La validación con usuarios constituye un proceso crítico para asegurar que los prototipos desarrollados satisfacen las necesidades reales de los stakeholders @rubin2008. Se diseñó un plan comprehensivo de validación que abarca metodologías cuantitativas y cualitativas.

=== Metodología de Validación <metodologia-validacion>

La metodología de validación se estructura en tres componentes principales siguiendo las recomendaciones de @krug2014:

==== Enfoque Mixto de Investigación <enfoque-mixto>

Se adoptó un enfoque de investigación mixto que combina:

- *Métodos Cuantitativos*: Métricas objetivas de usabilidad (tiempo de tarea, tasa de éxito, errores)
- *Métodos Cualitativos*: Observación directa, entrevistas post-tarea, análisis de comportamiento

==== Selección de Participantes <seleccion-participantes>

La selección de participantes siguió criterios de representatividad para asegurar validez externa:

#figure(
  text(size: 10pt)[
  #table(
    columns: (2fr, 1fr, 1fr, 2fr),
    table.header([*Perfil de Usuario*], [*Cantidad*], [*Experiencia*], [*Características Específicas*]),
    [Estudiantes de pregrado], [8], [Básica-Intermedia], [Usuarios frecuentes de bibliotecas digitales],
    [Estudiantes de posgrado], [6], [Intermedia-Avanzada], [Investigadores con necesidades especializadas],
    [Docentes], [4], [Intermedia], [Usuarios con patrones de uso diferenciados],
    [Bibliotecarios], [4], [Avanzada], [Usuarios expertos con conocimiento del dominio],
  )],
  caption: [Distribución de participantes por perfil de usuario.]
) <tabla-participantes>

=== Escenarios de Prueba <escenarios>

Se diseñaron escenarios realistas que reflejan casos de uso típicos del sistema. Cada escenario incluye contexto, tareas específicas y criterios de éxito medibles.

==== Escenario 1: Búsqueda Académica Urgente <escenario-busqueda>

*Contexto*: Un estudiante de últimeor año necesita localizar bibliografia específica para su tesis con plazo limitado.

*Tareas a evaluar*:
+ Búsqueda por términos específicos relacionados con el tema de investigación
+ Aplicación de filtros para localizar recursos recientes (últimos 5 años)
+ Solicitud de préstamo de múltiples recursos simultáneamente
+ Verificación de estado de solicitudes pendientes

*Métricas de evaluación*:
- Tiempo total para completar la búsqueda: $≤ 3$ minutos
- Tasa de éxito en localización de recursos relevantes: $≥ 85%$
- Número de errores de navegación: $≤ 2$ por sesión
- Nivel de satisfacción subjetiva: $≥ 4/5$ en escala Likert

==== Escenario 2: Gestión Administrativa Diaria <escenario-gestion>

*Contexto*: Un bibliotecario inicia su jornada laboral y debe procesar solicitudes pendientes y gestionar devoluciones.

*Tareas a evaluar*:
+ Revisión de dashboard con métricas del día anterior
+ Procesamiento de solicitudes pendientes por orden de prioridad
+ Registro de devoluciones físicas utilizando escáner
+ Generación de reportes de recursos en mora

*Métricas de evaluación*:
- Tiempo promedio por solicitud procesada: $≤ 30$ segundos
- Precisión en registro de devoluciones: $≥ 98%$
- Eficiencia en identificación de prioridades: evaluación cualitativa
- Satisfacción con flujo de trabajo: $≥ 4.5/5$ en escala Likert

=== Métricas de Evaluación <metricas>

La evaluación de prototipos utiliza un conjunto comprehensivo de métricas que abarcan aspectos de usabilidad, eficiencia y satisfacción del usuario @tullis2013.

==== Métricas Cuantitativas <metricas-cuantitativas>

/ Eficiencia de Tarea: Tiempo requerido para completar tareas específicas comparado con benchmarks establecidos
/ Tasa de Éxito: Porcentaje de tareas completadas exitosamente sin asistencia externa
/ Tasa de Error: Número de errores cometidos por sesión de prueba normalizado por duración
/ Curva de Aprendizaje: Mejora en rendimiento entre primera y última repetición de tarea

Las métricas cuantitativas se calculan utilizando las siguientes fórmulas:

$ "Eficiencia" = ("Tiempo objetivo" / "Tiempo real") × 100% $ <eficiencia>

$ "Tasa de éxito" = ("Tareas completadas" / "Tareas totales") × 100% $ <tasa-exito>

==== Métricas Cualitativas <metricas-cualitativas>

/ Satisfacción Subjetiva: Evaluación mediante escalas Likert de 5 puntos sobre aspectos específicos de la experiencia
/ Preferencias de Diseño: Identificación de elementos visuales y funcionales preferidos por los usuarios
/ Puntos de Fricción: Análisis cualitativo de momentos de confusión o dificultad durante las pruebas
/ Sugerencias de Mejora: Recopilación estructurada de propuestas de optimización

=== Análisis de Resultados Simulados <analisis-resultados>

Basándose en estudios similares en sistemas bibliotecarios @zhang2019library, se proyectan los siguientes resultados de validación:

==== Hallazgos Principales Esperados <hallazgos>

*Funcionalidad de Búsqueda:*
- Los usuarios completan búsquedas básicas en promedio en 2.3 minutos ($23%$ mejor que el objetivo)
- La tasa de éxito alcanza $89%$ en localización de recursos relevantes
- Los filtros avanzados son utilizados por $67%$ de usuarios con experiencia intermedia-avanzada
- El autocompletado reduce errores de digitación en $45%$

*Funcionalidad de Gestión:*
- Bibliotecarios procesan solicitudes en promedio en 25 segundos (mejora del $17%$ sobre objetivo)
- La precisión en registro de devoluciones alcanza $99.2%$
- El dashboard reduce tiempo de orientación inicial en $40%$
- Las alertas automáticas mejoran seguimiento de recursos en mora en $60%$

==== Patrones de Comportamiento Identificados <patrones>

*Usuarios Estudiantes:*
- Prefieren búsquedas por palabras clave sobre navegación por categorías ($78%$ vs $22%$)
- Utilizan principalmente dispositivos móviles para consultas rápidas ($65%$ del tiempo)
- Valoran especialmente la información de disponibilidad inmediata

*Personal Bibliotecario:*
- Requieren acceso rápido a herramientas de gestión desde pantalla principal
- Prefieren confirmaciones visuales claras para acciones críticas
- Solicitan integración con sistemas de gestión institucional existentes

=== Propuestas de Mejora <mejoras>

Basándose en el análisis de resultados simulados, se identifican las siguientes áreas de optimización:

==== Mejoras de Usabilidad <mejoras-usabilidad>

+ *Optimización de Búsqueda Móvil*: Implementar diseño responsive específico para pantallas pequeñas
+ *Personalización de Dashboard*: Permitir configuración de widgets según preferencias del usuario
+ *Integración de Ayuda Contextual*: Incluir tooltips y tutoriales interactivos para usuarios nuevos
+ *Mejora de Retroalimentación*: Implementar animaciones subtiles para confirmar acciones

==== Mejoras Funcionales <mejoras-funcionales>

+ *Sistema de Recomendaciones*: Implementar algoritmos de recomendación basados en historial de búsquedas
+ *Búsqueda Semántica*: Incorporar capacidades de procesamiento de lenguaje natural
+ *Integración API*: Desarrollar conectividad con sistemas bibliotecarios externos
+ *Análisis Predictivo*: Implementar herramientas de análisis para predecir demanda de recursos

La implementación de estas mejoras requiere un enfoque iterativo que priorice impacto en la experiencia del usuario y factibilidad técnica de implementación @gothelf2013.
