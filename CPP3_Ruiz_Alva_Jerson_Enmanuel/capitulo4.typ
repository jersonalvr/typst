// capitulo4.typ
#import "/modules/tablas.typ": *
#import "@preview/pintorita:0.1.3"
#show raw.where(lang: "pintora"): it => pintorita.render(it.text, style: "default", font: "Century Gothic")

== 4.1 Constitución Legal y Régimen Tributario

=== 4.1.1 Forma Jurídica

#crear-tabla(
  headers: ("ASPECTO", "DETALLE"),
  rows: (
    ("Tipo de Empresa", "Sociedad Anónima Cerrada (S.A.C.)"),
    ("Objeto Social", "Desarrollo y comercialización de soluciones tecnológicas para el sector agrícola"),
    ("Capital Social", "S/. 500,000 dividido en 500,000 acciones de S/. 1.00 cada una"),
    ("Distribución Accionaria", [
      - Fundador principal: 60%
      - Inversionistas ángeles: 25%
      - Fondo de inversión de impacto: 15%
    ]),
    ("Domicilio Fiscal", "Av. Javier Prado Este 1494, San Isidro, Lima"),
    ("Duración", "Indefinida")
  )
)

=== 4.1.2 Régimen Tributario

#crear-tabla(
  headers: ("ASPECTO", "DETALLE"),
  rows: (
    ("Régimen Tributario", "Régimen MYPE Tributario (RMT)"),
    ("Impuesto a la Renta", "Anual progresivo: 10% hasta 15 UIT, 29.5% por el exceso"),
    ("IGV", "18% (con derecho a crédito fiscal)"),
    ("Libros Contables", "Registro de ventas, compras, libro diario y mayor"),
    ("Declaraciones", "Declaración mensual y anual"),
    ("Beneficios", [
      - Emisión de facturas y boletas electrónicas
      - Suspensión de pagos a cuenta bajo condiciones
      - Acceso a beneficios de la Ley de Promoción Agraria
    ])
  )
)

== 4.2 Trámites de Constitución

=== 4.2.1 Proceso de Formalización

1. *Búsqueda y reserva de nombre* (SUNARP)
   - Verificación de disponibilidad del nombre "Agro-IA Perú S.A.C."
   - Reserva de denominación por 30 días

2. *Elaboración de Minuta y Escritura Pública*
   - Redacción por abogado especializado
   - Firma ante notario público

3. *Inscripción en Registros Públicos*
   - Registro de la empresa en SUNARP
   - Obtención de asiento registral

4. *Obtención de RUC*
   - Inscripción en SUNAT
   - Selección del régimen tributario

5. *Licencias Municipales*
   - Licencia de funcionamiento en San Isidro
   - Certificado de defensa civil

6. *Permisos Especiales*
   - Registro de marca en INDECOPI
   - Certificación de protección de datos personales

7. *Registros Laborales*
   - Inscripción en REMYPE
   - Registro en Planilla Electrónica

8. *Autorizaciones Sectoriales*
   - Registro en SENASA para equipos de monitoreo agrícola
   - Registro en MTC para equipos de comunicación inalámbrica

#pagebreak()

=== 4.2.2 Presupuesto de Constitución

#crear-tabla-financiera(
  ("CONCEPTO", "COSTO (S/.)"),
  (
    ("Búsqueda y Reserva de Nombre", "25.00"),
    ("Elaboración de Minuta", "500.00"),
    ("Escritura Pública", "450.00"),
    ("Inscripción en SUNARP", "90.00"),
    ("Obtención de RUC", "Gratuito"),
    ("Legalización de Libros Contables", "300.00"),
    ("Licencia de Funcionamiento", "580.00"),
    ("Certificado de Defensa Civil", "350.00"),
    ("Registro de Marca en INDECOPI", "534.99"),
    ("Certificación de Protección de Datos", "200.00"),
    ("Registro en SENASA", "350.00"),
    ("Registro en MTC", "450.00"),
    ("Asesoría Legal y Gestión", "1,500.00"),
    ("TOTAL", "5,329.99")
  )
)

== 4.3 Estructura Organizacional

=== 4.3.1 Organigrama

```pintora
mindmap
  @param layoutDirection LR
  @param {
    l1NodeBgColor   #0f305e
    l1NodeTextColor #fff
    l2NodeBgColor   #063971
    l2NodeTextColor #fff
    nodeBgColor     #3f5688
    textColor       #fff
  }
  + Junta de Accionistas
    ++ Gerencia General
      +++ Dirección Tecnológica
        ++++ Desarrollo de Software
        ++++ Infraestructura IoT
        ++++ Ciencia de Datos
      +++ Dirección de Operaciones
        ++++ Despliegue de Campo
        ++++ Soporte Técnico
        ++++ Control de Calidad
      +++ Dirección Comercial
        ++++ Marketing y Ventas
        ++++ Servicio al Cliente
        ++++ Gestión de Alianzas
      +++ Dirección de Finanzas
        ++++ Contabilidad
        ++++ Tesorería
        ++++ Inversiones
```
#pagebreak()

=== 4.3.2 Perfiles de Puesto Clave

#crear-tabla(
  headers: ("PUESTO", "PERFIL REQUERIDO", "FUNCIONES PRINCIPALES"),
  rows: (
    ("Gerente General", [
      - MBA con especialización en AgTech
      - Experiencia mínima de 5 años en startups tecnológicas
      - Conocimiento del sector agrícola peruano
      - Liderazgo transformacional
    ], [
      - Definición de estrategia organizacional
      - Gestión de relaciones con inversionistas
      - Representación legal de la empresa
      - Supervisión de las direcciones funcionales
    ]),
    ("Director Tecnológico", [
      - Ingeniería en Sistemas o afines
      - Experiencia en desarrollo de productos de IA
      - Conocimiento en IoT y sistemas embebidos
      - Certificaciones en Cloud Computing
    ], [
      - Liderazgo del equipo de desarrollo
      - Definición de arquitectura tecnológica
      - Gestión de la cartera de innovación
      - Supervisión de calidad del producto
    ]),
    ("Director de Operaciones", [
      - Ingeniería Industrial o Agrónoma
      - Experiencia en gestión de campo
      - Conocimiento en logística rural
      - Certificación en gestión de proyectos
    ], [
      - Coordinación de despliegue de soluciones
      - Gestión de la cadena de suministro
      - Optimización de procesos operativos
      - Supervisión del soporte técnico
    ])
  )
)

=== 4.3.3 Política de Remuneraciones

#crear-tabla(
  headers: ("NIVEL", "RANGO SALARIAL (S/.)", "BENEFICIOS ADICIONALES"),
  rows: (
    ("Gerencial", "12,000 - 18,000", [
      - Participación accionaria (stock options)
      - Seguro EPS familiar
      - Bono anual por objetivos
    ]),
    ("Jefaturas", "8,000 - 12,000", [
      - Seguro EPS
      - Bono semestral por objetivos
      - Home office parcial
    ]),
    ("Especialistas", "5,000 - 8,000", [
      - Seguro EPS personal
      - Capacitación especializada
      - Horario flexible
    ]),
    ("Técnicos", "3,000 - 5,000", [
      - Seguro SCTR
      - Bonificación por desplazamiento
      - Capacitación técnica
    ])
  )
)

== 4.4 Planificación Estratégica

=== 4.4.1 Objetivos Estratégicos (2025-2030)

#crear-tabla(
  headers: ("PERIODO", "OBJETIVOS COMERCIALES", "OBJETIVOS TECNOLÓGICOS", "OBJETIVOS FINANCIEROS"),
  rows: (
    ("Año 1", [
      - Implementación en 5,000 hectáreas
      - Captación de 3 cooperativas clave
    ], [
      - Desarrollo de MVP completo
      - Validación de modelos en 3 cultivos
    ], [
      - Ventas por S/. 500,000
      - Obtención de financiamiento semilla
    ]),
    ("Año 2", [
      - Expansión a 15,000 hectáreas
      - Alianzas con 2 gobiernos regionales
    ], [
      - Ampliación a 5 cultivos adicionales
      - Desarrollo de plataforma de datos
    ], [
      - Ventas por S/. 1,500,000
      - Margen operativo positivo
    ]),
    ("Año 3", [
      - Cobertura de 50,000 hectáreas
      - Expansión a 2 países vecinos
    ], [
      - Integración con satélites y drones
      - Desarrollo de marketplace agrícola
    ], [
      - Ventas por S/. 5,000,000
      - Ronda de inversión serie A
    ]),
    ("Año 4-5", [
      - Presencia en 5 países de Latinoamérica
      - 200,000 hectáreas bajo gestión
    ], [
      - Plataforma de trazabilidad blockchain
      - API para desarrolladores externos
    ], [
      - Ventas por S/. 20,000,000
      - Preparación para OPI
    ])
  )
)