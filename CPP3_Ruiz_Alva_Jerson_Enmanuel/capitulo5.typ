// capitulo5.typ
#import "/modules/tablas.typ": *

== 5.1 Inversión Inicial

=== 5.1.1 Inversión en Activos Fijos Tangibles

#crear-tabla-financiera(
  ("CONCEPTO", "CANTIDAD", "COSTO UNITARIO (S/.)", "COSTO TOTAL (S/.)"),
  (
    ("Servidores y equipos de cómputo", "1 lote", "250,000", "250,000"),
    ("Estaciones de trabajo", "20", "5,000", "100,000"),
    ("Sensores IoT (stock inicial)", "2,000", "120", "240,000"),
    ("Estaciones meteorológicas", "50", "3,500", "175,000"),
    ("Mobiliario de oficina", "1 lote", "50,000", "50,000"),
    ("Equipos de laboratorio", "1 lote", "80,000", "80,000"),
    ("Vehículos de campo", "3", "70,000", "210,000"),
    ("Equipos de comunicación", "1 lote", "35,000", "35,000"),
    ("", "", [*SUBTOTAL*], [*1,140,000*])
  ),
  text-size: 10.5pt
)

=== 5.1.2 Inversión en Activos Intangibles

#crear-tabla-financiera(
  ("CONCEPTO", "COSTO TOTAL (S/.)"),
  (
    ("Desarrollo de software base", "350,000"),
    ("Licencias de software", "120,000"),
    ("Patentes y registros", "50,000"),
    ("Constitución y formalización", "5,330"),
    ("Certificaciones", "25,000"),
    ("Estudios de mercado", "40,000"),
    ("Capacitación inicial", "60,000"),
    ("", [*SUBTOTAL*: *650,330*])
  )
)

=== 5.1.3 Capital de Trabajo

#crear-tabla-financiera(
  ("CONCEPTO", "MONTO MENSUAL (S/.)", "PERÍODO (MESES)", "COSTO TOTAL (S/.)"),
  (
    ("Planilla de personal", "180,000", "6", "1,080,000"),
    ("Alquiler de oficinas", "15,000", "6", "90,000"),
    ("Servicios básicos", "8,000", "6", "48,000"),
    ("Marketing y publicidad", "35,000", "6", "210,000"),
    ("Gastos de movilidad", "12,000", "6", "72,000"),
    ("Materiales y suministros", "6,000", "6", "36,000"),
    ("Servicios de terceros", "25,000", "6", "150,000"),
    ("Gastos imprevistos", "30,000", "6", "180,000"),
    ("", "", [*SUBTOTAL*], [*1,866,000*])
  )
)

=== 5.1.4 Inversión Total

#crear-tabla-financiera(
  ("CONCEPTO", "MONTO (S/.)"),
  (
    ("Activos Fijos Tangibles", "1,140,000"),
    ("Activos Intangibles", "650,330"),
    ("Capital de Trabajo", "1,866,000"),
    ("", [*TOTAL INVERSIÓN INICIAL*: *3,656,330*])
  )
)

== 5.2 Estructura de Costos

=== 5.2.1 Costos Fijos

#crear-tabla-financiera(
  ("CONCEPTO", "MONTO MENSUAL (S/.)", "MONTO ANUAL (S/.)"),
  (
    ("Planillas de personal", "180,000", "2,160,000"),
    ("Alquiler de oficinas", "15,000", "180,000"),
    ("Servicios básicos", "8,000", "96,000"),
    ("Servicios cloud", "25,000", "300,000"),
    ("Mantenimiento de equipos", "10,000", "120,000"),
    ("Seguros", "8,000", "96,000"),
    ("Gastos administrativos", "12,000", "144,000"),
    ("Depreciación", "19,000", "228,000"),
    ("Amortización de intangibles", "10,839", "130,066"),
    ("", [*TOTAL COSTOS FIJOS*], [*3,454,066*])
  )
)

#pagebreak()

=== 5.2.2 Costos Variables

#crear-tabla-financiera(
  ("CONCEPTO", "COSTO UNITARIO (S/.)", "UNIDADES ANUALES", "COSTO ANUAL (S/.)"),
  (
    ("Kit de sensores IoT", "120", "5,000", "600,000"),
    ("Instalación en campo", "180", "5,000", "900,000"),
    ("Mantenimiento preventivo", "50", "5,000", "250,000"),
    ("Servicio de datos móviles", "120", "5,000", "600,000"),
    ("Comisiones por venta", "100", "5,000", "500,000"),
    ("Soporte técnico por usuario", "60", "5,000", "300,000"),
    ("", "", [*TOTAL COSTOS VARIABLES*], [*3,150,000*])
  )
)

== 5.3 Estructura de Ingresos

=== 5.3.1 Proyección de Ventas

#crear-tabla-financiera(
  ("PRODUCTO/SERVICIO", "PRECIO UNITARIO (S/.)", "UNIDADES AÑO 1", "INGRESO AÑO 1 (S/.)", "UNIDADES AÑO 2", "INGRESO AÑO 2 (S/.)", "UNIDADES AÑO 3", "INGRESO AÑO 3 (S/.)", "UNIDADES AÑO 4", "INGRESO AÑO 4 (S/.)", "UNIDADES AÑO 5", "INGRESO AÑO 5 (S/.)"),
  (
    ("Suscripción básica", "200", "3,000", "600,000", "8,000", "1,600,000", "15,000", "3,000,000", "25,000", "5,000,000", "40,000", "8,000,000"),
    ("Suscripción premium", "500", "1,000", "500,000", "3,000", "1,500,000", "8,000", "4,000,000", "15,000", "7,500,000", "25,000", "12,500,000"),
    ("Instalación de sensores", "1,000", "4,000", "4,000,000", "8,000", "8,000,000", "15,000", "15,000,000", "20,000", "20,000,000", "25,000", "25,000,000"),
    ("Servicio de consultoría", "3,000", "100", "300,000", "250", "750,000", "500", "1,500,000", "800", "2,400,000", "1,200", "3,600,000"),
    ("Venta de datos anónimos", "25,000", "4", "100,000", "10", "250,000", "20", "500,000", "35", "875,000", "50", "1,250,000"),
    ("", "", "", [*5,500,000*], "", [*12,100,000*], "", [*24,000,000*], "", [*35,775,000*], "", [*50,350,000*])
  ),
  text-size: 6pt
)

#pagebreak()

== 5.4 Punto de Equilibrio

#crear-tabla-financiera(
  ("CONCEPTO", "VALOR"),
  (
    ("Costos Fijos Totales (S/. anual)", "3,454,066"),
    ("Precio Promedio Ponderado (S/.)", "850"),
    ("Costo Variable Unitario (S/.)", "630"),
    ("Margen de Contribución Unitario (S/.)", "220"),
    ("Punto de Equilibrio (unidades)", "15,700"),
    ("Punto de Equilibrio (S/.)", "13,345,000")
  )
)

== 5.5 Flujo de Caja Proyectado

#crear-tabla-financiera(
  ("CONCEPTO", "AÑO 0 (S/.)", "AÑO 1 (S/.)", "AÑO 2 (S/.)", "AÑO 3 (S/.)", "AÑO 4 (S/.)", "AÑO 5 (S/.)"),
  (
    ([*INGRESOS*], "", "", "", "", "", ""),
    ("Ventas", "", "5,500,000", "12,100,000", "24,000,000", "35,775,000", "50,350,000"),
    ("Total Ingresos", "", "5,500,000", "12,100,000", "24,000,000", "35,775,000", "50,350,000"),
    ([*EGRESOS*], "", "", "", "", "", ""),
    ("Inversión Inicial", "(3,656,330)", "", "", "", "", ""),
    ("Costos Variables", "", "(3,150,000)", "(6,930,000)", "(12,600,000)", "(18,795,000)", "(26,460,000)"),
    ("Costos Fijos", "", "(3,454,066)", "(3,799,473)", "(4,179,420)", "(4,597,362)", "(5,057,098)"),
    ("Impuesto a la Renta", "", "0", "(413,658)", "(2,166,174)", "(3,714,791)", "(5,649,870)"),
    ("Total Egresos", "(3,656,330)", "(6,604,066)", "(11,143,130)", "(18,945,594)", "(27,107,153)", "(37,166,968)"),
    ([*FLUJO DE CAJA NETO*], "(3,656,330)", "(1,104,066)", "956,870", "5,054,406", "8,667,847", "13,183,032"),
    ("Flujo Acumulado", "(3,656,330)", "(4,760,396)", "(3,803,526)", "1,250,880", "9,918,727", "23,101,759")
  ),
  text-size: 9.7pt
)

#pagebreak()

== 5.6 Indicadores de Evaluación Financiera

#crear-tabla-financiera(
  ("INDICADOR", "VALOR", "INTERPRETACIÓN"),
  (
    ("Tasa de Descuento (WACC)", "15%", "Costo promedio ponderado de capital"),
    ("Valor Actual Neto (VAN)", "S/. 10,218,952", "El proyecto genera valor económico"),
    ("Tasa Interna de Retorno (TIR)", "43.2%", "Rentabilidad superior al costo de capital"),
    ("Periodo de Recuperación", "2.75 años", "Inversión recuperada durante el tercer año"),
    ("Relación Beneficio/Costo", "1.85", "Por cada sol invertido se obtiene 1.85 soles"),
    ("ROI año 5", "631.6%", "Retorno sobre inversión al quinto año")
  )
)

== 5.7 Análisis de Sensibilidad

#crear-tabla-financiera(
  ("ESCENARIO", "VARIACIÓN", "VAN (S/.)", "TIR", "INTERPRETACIÓN"),
  (
    ("Optimista", "Ventas +20%", "15,325,428", "62.5%", "Alta rentabilidad con crecimiento superior"),
    ("Base", "Proyección actual", "10,218,952", "43.2%", "Rentabilidad esperada"),
    ("Pesimista", "Ventas -20%", "5,112,476", "28.7%", "Proyecto viable incluso con menor demanda"),
    ("Crítico", "Ventas -40%", "98,547", "15.4%", "Punto crítico de rentabilidad")
  ),
  text-size: 9pt
)

#pagebreak()