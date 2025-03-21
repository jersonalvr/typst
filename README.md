Typst es una alternativa moderna a LaTeX que permite crear documentos profesionales con código limpio y una curva de aprendizaje más accesible. Los módulos personalizados aprovechan la potencia de Typst para:

- **Reducir el tiempo de creación** de documentación técnica y comercial en más de un 40%
- **Mantener la consistencia** en todos los documentos corporativos
- **Profesionalizar la imagen** de tus presentaciones, informes y propuestas

## 📦 Módulos Incluidos

Este paquete incluye módulos esenciales para la documentación empresarial:

### `biz_canvas.typ` 
Crea lienzos de modelo de negocio profesionales con secciones para problemas, actividades, métricas, propuesta de valor y más. Ideal para startups y planificación estratégica.

```typst
#import "modules/biz_canvas.typ": biz_canvas

#biz_canvas(
  title: "Modelo de Negocio - EcoSolutions",
  business: "EcoSolutions S.A.",
  problems: [
    • Desperdicio excesivo de materiales
    • Altos costos operativos
    • Cumplimiento normativo
  ],
  // ...más secciones...
)
```

### `foda.typ` (SWOT)
Genera análisis FODA (SWOT) visualmente atractivos con código mínimo. Perfecto para presentaciones ejecutivas y planificación estratégica.

```typst
#import "modules/foda.typ": create-foda

#create-foda(
  title: "Análisis FODA - Proyecto de Expansión",
  fortalezas: [
    • Equipo experimentado
    • Tecnología propietaria
    • Base de clientes leales
  ],
  // ...más secciones...
)
```

### `impact.typ`
Crea matrices de impacto para evaluar proyectos con dimensiones cuantitativas y cualitativas, ideales para propuestas y evaluaciones de proyectos.

### `references.typ`
Sistema completo de gestión de referencias bibliográficas con formato APA, perfecto para informes técnicos y white papers.

### `tablas.typ`
Crea tablas financieras y de datos con formato profesional con mínimo código.

### `template.typ`
Plantilla corporativa modificable que incluye portada profesional, encabezados y pies de página automáticos.

## 🔧 Instalación

1. Clona este repositorio en tu entorno de trabajo
   ```bash
   gh repo clone jersonalvr/typst
   ```

2. Importa los módulos necesarios en tus documentos Typst
   ```typst
   #import "módulos/template.typ": project
   ```

## 💻 Ejemplo de Uso

```typst
#import "modules/template.typ": project
#import "modules/foda.typ": create-foda
#import "modules/biz_canvas.typ": biz_canvas

#project(
  title: "Propuesta de Valor - Proyecto Renovación",
  idl: "IDL-2025",
  curso: "Planificación Estratégica",
  estudiantes: ("Ana García", "Carlos Méndez"),
  profesores: ("Dr. Juan Silva")
)[
  = Resumen Ejecutivo
  
  Este documento presenta el análisis y plan de implementación para el Proyecto Renovación...

  == Análisis FODA
  
  #create-foda(
    fortalezas: [• Capacidad técnica avanzada],
    debilidades: [• Recursos limitados],
    // ...más contenido...
  )
  
  // ...resto del documento...
]
```

## 🌟 Beneficios para tu Empresa

- **Ahorra tiempo valioso**: Genera documentación compleja en minutos, no horas
- **Profesionaliza tu imagen**: Documentos con calidad profesional que impresionan a clientes y stakeholders
- **Consistencia garantizada**: Todos los documentos mantienen la misma apariencia y estructura
- **Facilita la colaboración**: Todos los miembros del equipo pueden crear documentos con la misma calidad
- **Control de versiones**: Compatible con Git para seguimiento de cambios

## 📊 Casos de Uso

- Propuestas comerciales
- Planes de negocio
- Informes financieros
- Documentación técnica
- Presentaciones ejecutivas
- Informes de proyectos
- Análisis estratégicos

## 📱 Compatibilidad

Funciona en cualquier sistema que ejecute Typst (v0.10.0+):
- Windows
- macOS
- Linux
- Entornos cloud como Typst.app

## 🔄 Personalización

Todos los módulos son altamente personalizables:
- Colores corporativos
- Fuentes personalizadas
- Logotipos
- Estructura y secciones específicas