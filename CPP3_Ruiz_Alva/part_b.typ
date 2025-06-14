= Documento SRS y Presentación Final <parte-b>

== Elaboración del Documento SRS <srs>

La Especificación de Requisitos de Software (SRS) constituye el documento fundamental que establece las bases técnicas y funcionales para el desarrollo del Sistema de Gestión de Biblioteca Universitaria. Siguiendo el estándar IEEE 830-1998 @ieee830, este documento proporciona una descripción completa y sin ambigüedades de los requisitos del sistema.

=== Estructura del Documento SRS <estructura-srs>

El documento SRS se organiza siguiendo rigurosamente la plantilla del estándar IEEE 830, asegurando completitud y trazabilidad de todos los requisitos identificados.

==== Sección 1: Introducción <srs-introduccion>

*1.1 Propósito*

El Sistema de Gestión de Biblioteca Universitaria (SGBU) tiene como propósito automatizar y optimizar los procesos de gestión bibliográfica en entornos académicos universitarios. El sistema facilitará la administración de recursos físicos y digitales, mejorará la experiencia de usuario en búsqueda y acceso a materiales, y proporcionará herramientas analíticas para la toma de decisiones estratégicas.

*1.2 Alcance*

El SGBU abarca los siguientes módulos principales:
- Gestión de catálogo bibliográfico
- Sistema de autenticación y autorización
- Módulo de préstamos y devoluciones
- Sistema de reservas y renovaciones
- Generación de reportes y estadísticas
- Módulo de notificaciones automáticas

*1.3 Definiciones, Acrónimos y Abreviaciones*

#figure(
  text(size: 10pt)[
  #table(
    columns: (1.5fr, 3fr),
    table.header([*Término*], [*Definición*]),
    [API], [Application Programming Interface - Interfaz de programación de aplicaciones],
    [CRUD], [Create, Read, Update, Delete - Operaciones básicas de gestión de datos],
    [ISBN], [International Standard Book Number - Número estándar internacional de libros],
    [LDAP], [Lightweight Directory Access Protocol - Protocolo de acceso a directorios],
    [SLA], [Service Level Agreement - Acuerdo de nivel de servicio],
    [SSO], [Single Sign-On - Inicio de sesión único],
    [UI/UX], [User Interface/User Experience - Interfaz y experiencia de usuario],
    [WCAG], [Web Content Accessibility Guidelines - Directrices de accesibilidad web],
  )],
  caption: [Glosario de términos técnicos del documento SRS.]
) <glosario-srs>

==== Sección 2: Descripción General <srs-descripcion>

*2.1 Perspectiva del Producto*

El SGBU se integra en el ecosistema tecnológico universitario existente, interfazando con sistemas de gestión académica, directorios institucionales y plataformas de recursos digitales. La arquitectura del sistema se basa en microservicios para asegurar escalabilidad y mantenibilidad.

*2.2 Funciones del Producto*

Las funciones principales del sistema se agrupan en las siguientes categorías:

/ Gestión de Usuarios: Registro, autenticación, perfiles diferenciados por rol
/ Gestión de Catálogo: Administración de recursos físicos y digitales
/ Operaciones de Préstamo: Solicitud, aprobación, seguimiento, devolución
/ Análisis y Reportes: Estadísticas de uso, informes administrativos
/ Comunicaciones: Notificaciones, alertas, recordatorios automáticos

==== Sección 3: Requisitos Específicos <srs-requisitos>

*3.1 Requisitos Funcionales*

===== RF-001: Autenticación de Usuarios <rf-001>

*Descripción:* El sistema debe proporcionar un mecanismo seguro de autenticación que permita el acceso diferenciado según el rol del usuario.

*Prioridad:* Alta

*Entradas:* Credenciales institucionales (usuario, contraseña)

*Proceso:* 
+ Validación de credenciales contra directorio LDAP institucional
+ Verificación de estado activo del usuario
+ Asignación de permisos según rol identificado
+ Generación de token de sesión con tiempo de expiración

*Salidas:* Token de autenticación válido, redirección a interfaz apropiada

*Criterios de Aceptación:*
- Tiempo de respuesta $≤ 2$ segundos
- Compatibilidad con SSO institucional
- Cifrado de credenciales en tránsito
- Bloqueo temporal tras 3 intentos fallidos

===== RF-002: Búsqueda de Recursos Bibliográficos <rf-002>

*Descripción:* El sistema debe proporcionar capacidades avanzadas de búsqueda que permitan localizar recursos utilizando múltiples criterios.

*Prioridad:* Alta

*Entradas:* Términos de búsqueda, filtros opcionales (fecha, tipo, disponibilidad)

*Proceso:*
+ Análisis semántico de términos de búsqueda
+ Aplicación de filtros seleccionados
+ Ranking de resultados por relevancia
+ Verificación de disponibilidad en tiempo real

*Salidas:* Lista ordenada de recursos con metadatos completos

*Criterios de Aceptación:*
- Tiempo de respuesta $≤ 1.5$ segundos para búsquedas simples
- Precisión de resultados $≥ 90%$ para términos exactos
- Soporte para operadores booleanos (AND, OR, NOT)
- Autocompletado con latencia $≤ 300"ms"$

===== RF-003: Gestión de Préstamos <rf-003>

*Descripción:* El sistema debe automatizar el proceso completo de préstamos desde la solicitud hasta la devolución.

*Prioridad:* Alta

*Entradas:* Solicitud de préstamo, identificación de usuario, identificación de recurso

*Proceso:*
+ Validación de elegibilidad del usuario
+ Verificación de disponibilidad del recurso
+ Aplicación de políticas de préstamo (duración, límites)
+ Registro de transacción con timestamp
+ Generación de notificaciones automáticas

*Salidas:* Confirmación de préstamo, fechas de vencimiento, comprobante digital

*Criterios de Aceptación:*
- Procesamiento automático de solicitudes elegibles
- Notificación inmediata de estado de solicitud
- Integración con sistema de códigos de barras
- Generación de recordatorios programados

*3.2 Requisitos No Funcionales*

===== RNF-001: Rendimiento <rnf-001>

*Descripción:* El sistema debe mantener niveles de rendimiento que aseguren una experiencia de usuario fluida bajo condiciones normales y de pico de demanda.

*Especificaciones:*

$ "Tiempo de respuesta promedio" ≤ 2 "segundos" $ <tiempo-respuesta>

$ "Disponibilidad del sistema" ≥ 99.5% "mensual" $ <disponibilidad>

$ "Usuarios concurrentes soportados" ≥ 500 $ <concurrencia>

$ "Transacciones por segundo" ≥ 100 "TPS" $ <throughput>

===== RNF-002: Seguridad <rnf-002>

*Descripción:* El sistema debe implementar medidas de seguridad comprehensivas para proteger la información institucional y personal.

*Especificaciones:*
- Cifrado TLS 1.3 para todas las comunicaciones
- Hashing de contraseñas utilizando algoritmos bcrypt o Argon2
- Auditoría completa de acciones sensibles
- Cumplimiento con regulaciones de protección de datos (GDPR, LOPD)

===== RNF-003: Usabilidad <rnf-003>

*Descripción:* El sistema debe proporcionar una interfaz intuitiva que minimice la curva de aprendizaje para todos los tipos de usuario.

*Especificaciones:*
- Cumplimiento con estándares WCAG 2.1 AA
- Diseño responsive para dispositivos móviles y desktop
- Tiempo de aprendizaje $≤ 30$ minutos para funciones básicas
- Tasa de error del usuario $≤ 5%$ en tareas comunes

=== Diagramas de Casos de Uso <casos-uso>

Los casos de uso principales del sistema se representan mediante diagramas UML que ilustran las interacciones entre actores y funcionalidades del sistema.

*Actores Principales:*
- Estudiante
- Docente
- Bibliotecario
- Administrador del Sistema

*Casos de Uso Críticos:*

#import "@preview/pintorita:0.1.4"

#figure(
  pintorita.render(
    ```
    activityDiagram
    title: Flujo Principal del Sistema de Biblioteca
    
    start
    :Usuario accede al sistema;
    if (¿Es búsqueda?) then (sí)
      :Buscar Recurso;
      :Mostrar resultados;
    else (no)
      if (¿Es préstamo?) then (sí)
        :Solicitar Préstamo;
        :Bibliotecario revisa;
        :Aprobar Préstamo;
        :Actualizar inventario;
      else (no)
        if (¿Es administración?) then (sí)
          :Generar Reportes;
          :Configurar Sistema;
        endif
      endif
    endif
    :Fin del proceso;
    stop
    ```.text,
    style: "default"
  ),
  caption: [Flujo de actividades del Sistema de Gestión de Biblioteca]
) <flujo-actividades>

=== Trazabilidad de Requisitos <trazabilidad>

La trazabilidad de requisitos asegura que cada requisito identificado pueda ser rastreado desde su origen hasta su implementación y validación.

#figure(
  text(size: 10pt)[
  #table(
    columns: (1fr, 2fr, 1.5fr, 1.5fr),
    table.header([*ID Requisito*], [*Origen*], [*Caso de Uso*], [*Criterio de Prueba*]),
    [RF-001], [Política de Seguridad Institucional], [Autenticar Usuario], [CP-001],
    [RF-002], [Encuesta a Estudiantes], [Buscar Recurso], [CP-002],
    [RF-003], [Proceso Bibliotecario Actual], [Solicitar Préstamo], [CP-003],
    [RNF-001], [SLA Institucional], [Todos los casos], [CP-004],
    [RNF-002], [Auditoría de Seguridad], [Todos los casos], [CP-005],
  )],
  caption: [Matriz de trazabilidad de requisitos principales.]
) <trazabilidad-matriz>

== Preparación de Presentación Final <presentacion>

La presentación final sintetiza todo el proceso de ingeniería de requerimientos realizado, proporcionando una visión comprehensiva del proyecto y sus resultados. La estructura de la presentación sigue principios de comunicación efectiva en contextos técnicos @reynolds2012.

=== Estructura de la Presentación <estructura-presentacion>

==== Sección 1: Resumen Ejecutivo (5 minutos) <resumen-ejecutivo>

*Contenido principal:*
- Contexto y justificación del proyecto
- Objetivos específicos alcanzados
- Metodología aplicada (síntesis)
- Resultados principales obtenidos
- Valor agregado para la institución

*Elementos visuales clave:*
- Infografía del proceso de ingeniería de requerimientos
- Métricas de mejora esperadas (tiempo, precisión, satisfacción)
- Timeline del proyecto con hitos principales

==== Sección 2: Proceso Metodológico (8 minutos) <proceso-metodologico>

*Subsección 2.1: Análisis de Requerimientos*
- Técnicas de elicitación utilizadas (entrevistas, observación, análisis documental)
- Stakeholders identificados y su participación
- Categorización de requerimientos (funcionales, no funcionales, restricciones)

*Subsección 2.2: Desarrollo de Prototipos*
- Justificación de funcionalidades seleccionadas
- Herramientas y metodologías de prototipado
- Principios de UX/UI aplicados
- Demostración interactiva de prototipos clave

*Subsección 2.3: Validación con Usuarios*
- Diseño del plan de validación
- Perfiles de usuarios participantes
- Métricas de evaluación definidas
- Metodología de análisis de resultados

==== Sección 3: Resultados y Hallazgos (7 minutos) <resultados-hallazgos>

*Subsección 3.1: Validación de Prototipos*
- Métricas de usabilidad obtenidas
- Patrones de comportamiento identificados
- Áreas de mejora detectadas
- Comparación con benchmarks de la industria

*Subsección 3.2: Documento SRS*
- Estructura y completitud del documento
- Requisitos críticos identificados
- Matriz de trazabilidad desarrollada
- Cumplimiento con estándares IEEE 830

*Subsección 3.3: Propuestas de Implementación*
- Arquitectura técnica recomendada
- Plan de desarrollo por fases
- Estimación de recursos requeridos
- Cronograma de implementación sugerido

=== Recursos Visuales y Herramientas <recursos-visuales>

La efectividad de la presentación depende significativamente de la calidad y relevancia de los recursos visuales utilizados @duarte2008.

==== Elementos Gráficos Principales <elementos-graficos>

*Diagramas de Proceso:*
- Flujos de trabajo actuales vs. propuestos
- Mapas de experiencia de usuario
- Arquitectura del sistema en alto nivel
- Cronología del proyecto con entregables

*Elementos Interactivos:*
- Demostración en vivo de prototipos
- Navegación guiada por interfaces principales
- Simulación de casos de uso típicos
- Comparación antes/después de mejoras

*Métricas y Análisis:*
- Gráficos de resultados de validación
- Comparativas de eficiencia
- Indicadores de satisfacción de usuario
- Proyecciones de impacto institucional

==== Herramientas de Presentación <herramientas-presentacion>

#figure(
  text(size: 10pt)[
  #table(
    columns: (2fr, 1fr, 1fr, 2fr),
    table.header([*Herramienta*], [*Tipo*], [*Uso*], [*Ventajas Principales*]),
    [Microsoft PowerPoint], [Presentación], [Slides principales], [Familiaridad, integración con Office],
    [Figma], [Prototipado], [Demos interactivas], [Navegación real de prototipos],
    [Miro], [Colaboración], [Mapas conceptuales], [Visualización de procesos complejos],
    [OBS Studio], [Grabación], [Videos demostrativos], [Calidad profesional, múltiples fuentes],
  )],
  caption: [Herramientas seleccionadas para desarrollo de presentación.]
) <herramientas-tabla>

=== Distribución de Tiempo y Dinámicas <distribucion-tiempo>

La gestión efectiva del tiempo durante la presentación asegura cobertura adecuada de todos los temas relevantes manteniendo el engagement de la audiencia.

==== Cronograma Detallado <cronograma>

*Minutos 0-2: Apertura y Contexto*
- Saludo y presentación personal
- Contexto del proyecto y relevancia institucional
- Agenda de la presentación

*Minutos 2-7: Resumen Ejecutivo*
- Problemática identificada
- Solución propuesta (visión general)
- Beneficios esperados cuantificados

*Minutos 7-15: Metodología Aplicada*
- Fases del proceso de ingeniería de requerimientos
- Técnicas específicas utilizadas en cada fase
- Demostración de prototipos (interactiva)

*Minutos 15-22: Resultados Obtenidos*
- Hallazgos de validación con usuarios
- Documento SRS desarrollado
- Propuestas de mejora identificadas

*Minutos 22-25: Conclusiones y Siguientes Pasos*
- Lecciones aprendidas principales
- Recomendaciones para implementación
- Cronograma sugerido para siguientes fases

*Minutos 25-30: Sesión de Preguntas*
- Respuestas a consultas de la audiencia
- Aclaraciones técnicas específicas
- Discusión de aspectos de implementación

==== Estrategias de Engagement <engagement>

*Elementos Interactivos:*
- Demostración en vivo de funcionalidades críticas
- Solicitud de feedback sobre aspectos específicos
- Comparación con experiencias previas de la audiencia

*Técnicas de Comunicación:*
- Storytelling para contextualizar problemas y soluciones
- Uso de analogías para explicar conceptos técnicos complejos
- Variación de ritmo entre explicación teórica y demostración práctica

*Manejo de Preguntas:*
- Anticipación de preguntas frecuentes con respuestas preparadas
- Referencia a secciones específicas del documento SRS para detalles técnicos
- Reconocimiento de limitaciones y áreas que requieren investigación adicional

=== Adaptación a Diferentes Audiencias <adaptacion-audiencias>

La presentación debe ser adaptable para diferentes tipos de audiencia manteniendo rigor técnico y relevancia profesional @heath2007.

==== Audiencia Técnica (Desarrolladores, Arquitectos) <audiencia-tecnica>

*Énfasis principal:*
- Especificaciones técnicas detalladas del SRS
- Decisiones de arquitectura y justificaciones
- Requisitos no funcionales y restricciones técnicas
- Estrategias de implementación y tecnologías recomendadas

*Ajustes en contenido:*
- Mayor tiempo dedicado a aspectos técnicos del documento SRS
- Demostración de wireframes de alta fidelidad
- Discusión de patrones de diseño aplicables
- Consideraciones de escalabilidad y mantenimiento

==== Audiencia Gerencial (Directores, Coordinadores) <audiencia-gerencial>

*Énfasis principal:*
- ROI esperado y beneficios institucionales
- Cronograma de implementación y recursos requeridos
- Riesgos identificados y estrategias de mitigación
- Alineación con objetivos estratégicos institucionales

*Ajustes en contenido:*
- Enfoque en métricas de impacto y mejora de eficiencia
- Comparación con soluciones de mercado existentes
- Análisis costo-beneficio de la implementación
- Propuesta de plan de cambio organizacional

La preparación de múltiples versiones de la presentación asegura comunicación efectiva independientemente de la composición específica de la audiencia objetivo.
