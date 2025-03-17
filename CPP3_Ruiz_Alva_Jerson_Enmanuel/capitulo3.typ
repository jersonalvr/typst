// capitulo3.typ
#import "/modules/tablas.typ": crear-tabla
#import "@preview/pintorita:0.1.3"
#import "@preview/fletcher:0.5.6" as fletcher: diagram, node, edge
#import fletcher.shapes: diamond

== 3.1 Características Técnicas del Producto/Servicio
#crear-tabla(
  headers: ("FICHA TÉCNICA DEL PRODUCTO/SERVICIO", ""),
  rows: (
    ("NOMBRE COMERCIAL", "Sistema Agro-IA Perú"),
    ("DESCRIPCIÓN", [
      *Plataforma integral* que combina hardware IoT y software de IA para optimización agrícola, con los siguientes componentes principales:
      
      - *Sensores IoT*: Medición de parámetros de suelo, clima y cultivo
      - *Aplicación móvil*: Interfaz de usuario para agricultores
      - *Backend de IA*: Procesamiento de datos y generación de recomendaciones
      - *Sistema de alertas*: Notificaciones para prevención de riesgos
    ]),
    ("ESPECIFICACIONES TÉCNICAS", [
      *Hardware*:
      - Sensores de humedad: Precisión ±2%, rango 0-100%
      - Sensores de temperatura: Precisión ±0.5°C, rango -10°C a 50°C
      - Estaciones meteorológicas: Autonomía de 1 año con energía solar
      - Trampas inteligentes: Detección de 15 tipos de plagas comunes
      
      *Software*:
      - Compatibilidad: Android 8.0+, iOS 12+
      - Modo offline: Sincronización con \<5MB de datos
      - Idiomas: Español, Quechua, Aymara
      - Asistente de voz: Reconocimiento de comandos en dialectos locales
    ]),
    ("CAPACIDAD DE PRODUCCIÓN", [
      - Implementación en 50 comunidades por mes
      - Soporte técnico para 5,000 usuarios simultáneos
      - Actualización de modelos de IA: Mensual
      - Procesamiento de datos: 10TB mensuales
    ])
  )
)

== 3.2 Proceso de Producción/Prestación del Servicio

=== 3.2.1 Diagrama de Flujo del Proceso

#let rect-node(pos, content) = {
  node(pos, content, corner-radius: 3pt, width: auto, height: auto, inset: 5pt)
}

#let diamond-node(pos, content) = {
  node(pos, content, shape: diamond, width: auto, height: auto, inset: 6pt)
}

#set text(size: 9pt)
#diagram(
  node-stroke: 0.8pt,
  spacing: 12mm,
  
  // Nodos principales de configuración
  rect-node((0, 0), [Inicio]),
  edge((0, 0), (0, 1), "->"),
  rect-node((0, 1), [Evaluación de parcela]),
  edge((0, 1), (0, 2), "->"),
  rect-node((0, 2), [Instalación de sensores IoT]),
  edge((0, 2), (0, 3), "->"),
  rect-node((0, 3), [Configuración de app para usuario]),
  edge((0, 3), (0, 4), "->"),
  rect-node((0, 4), [Recolección de datos iniciales]),
  edge((0, 4), (0, 5), "->"),
  rect-node((0, 5), [Entrenamiento de modelo personalizado]),
  edge((0, 5), (0, 6), "->"),
  rect-node((0, 6), [Puesta en marcha del sistema]),
  edge((0, 6), (0, 7), "->"),
  
  // Nodo central de monitoreo (diamante)
  diamond-node((0, 7), [Monitoreo continuo]),
  
  // Ciclo de alerta - aún más reducido
  edge((0, 7), (1.2, 7), "->", label: [Alerta detectada]),
  rect-node((1.2, 7), [Notificación al agricultor]),
  edge((1.2, 7), (1.2, 8), "->"),
  rect-node((1.2, 8), [Recomendación de acción]),
  edge((1.2, 8), (1.2, 9), "->"),
  rect-node((1.2, 9), [Seguimiento de implementación]),
  edge(
    (1.2, 9), (0, 7), 
    "->", 
    bend: 35deg
  ),
  
  // Ciclo de actualización - aún más reducido
  edge((0, 7), (-1.2, 7), "->", label: [Actualización periódica]),
  rect-node((-1.2, 7), [Mejora de modelos]),
  edge(
    (-1.2, 7), (0, 7), 
    "->", 
    bend: 35deg
  ),
  
  // Ciclo de fin de temporada
  edge((0, 7), (0, 9), "->", label: [Finalización de temporada]),
  rect-node((0, 9), [Análisis de resultados]),
  edge((0, 9), (0, 10), "->"),
  rect-node((0, 10), [Ajuste de parámetros]),
  edge(
    (0, 10), (0, 7), 
    "->", 
    bend: -100deg // Curva menos amplia
  ),
)
#set text(size: 12pt)

=== 3.2.2 Descripción del Proceso

1. *Evaluación inicial*: Análisis de la parcela, tipos de cultivo y condiciones locales
2. *Instalación de hardware*: Colocación estratégica de sensores según topografía
3. *Configuración personalizada*: Ajuste de parámetros según cultivos y prácticas locales
4. *Capacitación del usuario*: Entrenamiento básico en uso de aplicación
5. *Recolección de datos base*: Período inicial de monitoreo (2 semanas)
6. *Activación del sistema predictivo*: Puesta en marcha de alertas y recomendaciones
7. *Monitoreo y mejora continua*: Ajuste progresivo de modelos con nuevos datos

== 3.3 Localización del Negocio

=== 3.3.1 Ubicación Estratégica

- *Sede principal*: Lima (distrito de San Isidro)
  - Proximidad a instituciones financieras y gubernamentales
  - Acceso a talento tecnológico y centros de investigación

- *Centros de operaciones regionales*:
  - Trujillo: Cobertura norte (La Libertad, Piura)
  - Arequipa: Cobertura sur (Arequipa, Cusco)
  - Huancayo: Cobertura central (Junín, Ayacucho)

- *Laboratorios de desarrollo*:
  - Campus UNALM (Universidad Nacional Agraria La Molina)
  - Parque Científico de Arequipa

=== 3.3.2 Distribución de Instalaciones

- *Oficina principal (250m²)*:
  - Área de desarrollo de software (80m²)
  - Laboratorio de hardware y pruebas (60m²)
  - Sala de datos y servidores (30m²)
  - Espacios administrativos (50m²)
  - Áreas comunes y reuniones (30m²)

- *Centros regionales (cada uno 100m²)*:
  - Área técnica y soporte (50m²)
  - Almacén de equipos y repuestos (30m²)
  - Oficina administrativa (20m²)

== 3.4 Requerimientos

=== 3.4.1 Equipamiento Tecnológico

#crear-tabla(
  headers: ("ÍTEM", "CANTIDAD", "CARACTERÍSTICAS", "VIDA ÚTIL", "PROVEEDOR"),
  rows: (
    ("Servidores de procesamiento", "5", "32 núcleos, 128GB RAM, 20TB SSD", "5 años", "Dell Technologies"),
    ("Estaciones de trabajo", "20", "Workstation i7, 32GB RAM, GPU RTX 3080", "4 años", "Lenovo"),
    ("Sensores IoT de humedad", "10,000", "Precisión ±2%, inalámbricos, batería 2 años", "3 años", "IoTech Solutions"),
    ("Sensores IoT de temperatura", "10,000", "Precisión ±0.5°C, inalámbricos", "3 años", "IoTech Solutions"),
    ("Estaciones meteorológicas", "500", "Medición de lluvia, viento, radiación solar", "5 años", "Davis Instruments"),
    ("Trampas inteligentes", "5,000", "Cámara HD, reconocimiento de imágenes", "4 años", "AgroTech SAC"),
    ("Drones de mapeo", "20", "Cámara multiespectral, autonomía 30 min", "3 años", "DJI Enterprise"),
    ("Gateway LoRaWAN", "200", "Cobertura 15km, alimentación solar", "5 años", "The Things Network"),
    ("Tablets para capacitación", "50", "Android 11, 10", "3 años", "Samsung")
  )
)

=== 3.4.2 Recursos de Software y Desarrollo

#crear-tabla(
  headers: ("ÍTEM", "CANTIDAD", "CARACTERÍSTICAS", "RENOVACIÓN", "PROVEEDOR"),
  rows: (
    ("Licencias Cloud AWS", "1", "Servicios de procesamiento y almacenamiento", "Anual", "Amazon Web Services"),
    ("Herramientas de ML", "1", "TensorFlow Enterprise, PyTorch", "Anual", "Google Cloud"),
    ("Servidor GIS", "1", "Sistema de información geográfica", "Anual", "ESRI"),
    ("Licencias de diseño UX", "5", "Adobe XD, Figma", "Anual", "Adobe"),
    ("Base de datos especializada", "1", "PostgreSQL con extensiones espaciales", "Perpetua", "Desarrollo propio"),
    ("Servicios de API meteorológica", "1", "Acceso a pronósticos históricos y actuales", "Anual", "Weather API"),
    ("Software de análisis de imágenes", "1", "Procesamiento de imágenes satelitales", "Anual", "Planet Labs"),
    ("Herramientas de desarrollo mobile", "10", "Android Studio, Xcode", "Anual", "Google, Apple"),
    ("Plataforma de capacitación virtual", "1", "LMS personalizado para agricultores", "Anual", "Desarrollo propio")
  )
)

=== 3.4.3 Recursos Humanos Técnicos

#crear-tabla(
  headers: ("CARGO", "CANTIDAD", "PERFIL", "FUNCIÓN PRINCIPAL"),
  rows: (
    ("Data Scientists", "5", "Especialización en ML agrícola", "Desarrollo de modelos predictivos"),
    ("Desarrolladores Backend", "8", "Python, Java, Cloud", "Arquitectura de sistemas de IA"),
    ("Desarrolladores Frontend", "6", "React Native, Flutter", "Interfaz de usuario móvil"),
    ("Ingenieros IoT", "4", "Electrónica, redes inalámbricas", "Diseño y mantenimiento de sensores"),
    ("Especialistas DevOps", "3", "Kubernetes, CI/CD", "Infraestructura y despliegue"),
    ("Ingenieros Agrónomos", "10", "Expertos en cultivos locales", "Validación de modelos y asesoría"),
    ("Técnicos de Campo", "20", "Instalación y mantenimiento", "Soporte técnico in situ"),
    ("Especialistas UX", "3", "Diseño centrado en usuario rural", "Experiencia de usuario adaptada"),
    ("Administrador de Bases de Datos", "2", "PostgreSQL, TimescaleDB", "Gestión de datos agrícolas")
  )
)
