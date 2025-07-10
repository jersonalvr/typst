Sigue las instruciones, no confundas el markdown que es unicamente para organizar el prompt con codigo para typst

# Guía para Redacción Académica con Typst

## Estructura del Proyecto

El proyecto tiene la siguiente estructura de archivos:

```
c:\Users\Jerson\Documents\typst\
├── CPP2_Ruiz_Alva.typ                 # Archivo principal Caso Practico Propuesto (NO EDITAR)
├── modules/
│   ├── template.typ                   # Plantilla del proyecto (NO EDITAR)
│   └── web_resources.typ              # Módulo para recursos web (NO EDITAR)
├── CPP2_Ruiz_Alva/                   # CARPETA DE TRABAJO (Esta carpeta puede ser CPP1, CPP2, etc. y tener diferentes autores, se te debe indicar el nombre de la carpeta)
│   ├── introduction.typ              # EDITABLE - Introducción del documento
│   ├── part_a.typ                    # EDITABLE - Parte A del contenido
│   ├── part_b.typ                    # EDITABLE - Parte B del contenido
│   ├── conclusions.typ               # EDITABLE - Conclusiones
│   └── bibliografia.bib              # EDITABLE - Referencias bibliográficas
└── INSTRUCTIONS.md                    # Este archivo de instrucciones
```

## INSTRUCCIONES CRÍTICAS PARA EDICIÓN

**SOLO EDITA LOS ARCHIVOS EN LA CARPETA `CPP2_Ruiz_Alva/`:**

- `introduction.typ` - Para contenido de introducción
- `part_a.typ` - Para la primera parte del documento
- `part_b.typ` - Para la segunda parte del documento
- `conclusions.typ` - Para las conclusiones
- `bibliografia.bib` - Para las referencias bibliográficas

**NO EDITES NUNCA:**

- `CPP2_Ruiz_Alva.typ` (archivo principal)
- Archivos en la carpeta `modules/`
- `INSTRUCTIONS.md`

**CONFIGURACIÓN YA INCLUIDA:**
El archivo principal (`CPP2_Ruiz_Alva.typ`) ya incluye:

- Configuración de plantilla con `#import "modules/template.typ"`
- Configuración del proyecto con títulos, autores, etc.
- Inclusión automática de todos los archivos de contenido
- Configuración de bibliografía en estilo IEEE

## Instrucciones Generales

Tu tarea es ayudarme a redactar contenido académico utilizando Typst. Sigue estas pautas EXACTAMENTE al trabajar con mis documentos:

## 1. Secciones jerarquizadas

* **OBLIGATORIO:** Crea capítulos y secciones usando `=` (nivel 1), `==` (nivel 2), `===` (nivel 3), etc. Ejemplo:

  ```typst
  = #project-config.title <introduccion> // En el main el título principal del documento es extraído automáticamente, continuar con el contenido
  == Antecedentes <ante>
  === Marco teórico <marco>
  ```

  - `supplement: [Sección]` renderiza "Sección" antes del número en nivel 1
  - Las etiquetas `<intro>`, `<ante>`, `<marco>` sirven para referencias cruzadas
  - **SIEMPRE** añade etiquetas descriptivas a todos los encabezados
* **Referencias a secciones:** Usa `@etiqueta` en el texto para referenciar automáticamente:

  ```typst
  Como se explica en @intro, los antecedentes de @ante muestran...
  ```

  Esto produce automáticamente "Capítulo 1", "Sección 1.1", etc.

## 2. Contenido científico

### Ecuaciones

* **Ecuaciones en línea:** Usa `$ecuación$` (sin espacios alrededor)
* **Ecuaciones en bloque:** Usa espacios antes y después de `$`:

  ```typst
  La fórmula básica es $E = mc^2$.

  $ E = mc^2 $ <energia>

  En la @energia se muestra la relación masa-energía.
  ```
* **IMPORTANTE:** En ecuaciones, usa `^` para exponentes (NO `**`):

  ```typst
  $ x^2 + y^2 = z^2 $  // CORRECTO
  $ x**2 + y**2 = z**2 $  // INCORRECTO
  ```

### Tablas

**OBLIGATORIO:** Usa EXACTAMENTE este código para TODAS las tablas:

```typst
#figure(
  text(size: 10pt)[
  #table(
    columns: (2fr, 1fr, 1fr),  // Ajusta según necesidad
    table.header([*Columna 1*], [*Columna 2*], [*Columna 3*]),
    [Dato 1], [Dato 2], [Dato 3],
    [Dato 4], [Dato 5], [Dato 6],
  )],
  caption: [Descripción de la tabla sin incluir "Tabla" ni número.]
) <etiqueta-tabla>
```

**Reglas estrictas para tablas:**

- NO escribas "Tabla X:" en el caption
- SIEMPRE usa etiquetas descriptivas como `<resultados>`, `<comparacion>`
- Las columnas se definen con `(ancho1, ancho2, ancho3)` usando `fr` o medidas fijas
- Para referenciar: `Como muestra @resultados...`

### Figuras e imágenes

**IMPORTANTE:** El módulo web_resources YA incluye configuración automática de numeración de figuras.

Para imágenes web, usa el módulo web_resources (numeración automática incluida):

```typst
#import "../modules/web_resources.typ": web-image

#web-image(
  "https://ejemplo.com/imagen.png", 
  width: 300pt,
  fallback: false,
  caption: "Descripción de la imagen"
) <etiqueta-imagen>
```

**NOTA:** NO necesitas añadir `#show figure.where(kind: image): set figure(supplement: [Figura])` si usas web_resources.

Para formas geométricas simples (requiere configuración manual de figuras):

```typst
// Solo añadir si NO usas web_resources para imágenes
#show figure.where(kind: image): set figure(supplement: [Figura])

#figure(
  circle(radius: 1cm, fill: blue),
  caption: [Círculo de ejemplo.]
) <circulo>
```

### Listas

- **Viñetas:** Usa `- ítem` o `* ítem`
- **Numeradas:** Usa `+ ítem`
- **Términos:** Usa `/ término: definición`

```typst
- Primera viñeta
- Segunda viñeta

+ Primer elemento numerado
+ Segundo elemento numerado

/ Término: Definición del término
/ Otro término: Otra definición
```

## 3. Citas y bibliografía

### OBLIGATORIO: Archivo bibliografia.bib

**SIEMPRE** crea un archivo `bibliografia.bib` con claves descriptivas:

```bib
@article{clavearticle,
  title = {Título del artículo},
  author = {Apellido, Nombre},
  journal = {Revista},
  year = {2023},
  volume = {10},
  pages = {1-15}
}

@book{bookclave,
  title = {Título del libro},
  author = {Apellido, Nombre},
  publisher = {Editorial},
  year = {2022}
}

@misc{clavemisc,
  title = {Recurso web},
  author = {Autor},
  url = {https://ejemplo.com},
  year = {2024},
  note = {Accedido: 2024-01-01}
}
```

### Citas en el texto

**OBLIGATORIO:** Usa formato `@clavedescriptiva` SIEMPRE:

```typst
Los estudios recientes @bookclave confirman que @clavearticle, @clavemisc muestran resultados similares.
```

**PROHIBIDO:**

- NO uses superíndices: `^1`, `¹`, typst lo renderiza automáticamente como superíndice en formato IEEE
- NO uses paréntesis simples: `(1)`

### Bibliografía final (esto ya esta configurado en el CPP_Apellido_Estudiante.typ principal, por eso es importante generar el archivo `bibliografia.bib`)

```typst
// main CPP_Apellido_Estudiante.typ
= Bibliografía
#bibliography(
  "CPP3_Ruiz_Alva/bibliografia.bib",
  title: none, 
  full: false, // solo incluir las entradas citadas
  style: "ieee"
)
```

## 4. Tipografía y formato

### Formato básico de texto

- **Negrita:** `*texto*` (un asterisco, NO dos)
- **Cursiva:** `_texto_` (guiones bajos)
- **Código inline:** `` `código` ``

```typst
Este texto es *importante* y este es _enfatizado_.
El comando `#set` configura elementos.
```

### Colores y estilos especiales

```typst
#highlight[texto resaltado]
#highlight(fill: red)[texto resaltado en rojo]
#underline[texto subrayado]
```

## 5. Módulos especializados

### Búsqueda de módulos en Typst Universe

**OBLIGATORIO:** Cuando necesites funcionalidad específica, busca primero en https://typst.app/universe

**Criterios para seleccionar módulos:**

1. **Popularidad:** Módulos con más descargas y estrellas
2. **Mantenimiento:** Actualizaciones recientes (últimos 6 meses)
3. **Documentación:** Ejemplos claros y documentación completa
4. **Compatibilidad:** Compatible con la versión actual de Typst

**Proceso de evaluación:**

```typst
// 1. Importar y probar el módulo
#import "@preview/nombre-modulo:version"

// 2. Verificar funcionalidad básica con ejemplo mínimo
// 3. Adaptar a necesidades específicas del documento
```

**Módulos recomendados por categoría:**

**Matemáticas y ciencias:**

- `@preview/physica:0.9.5` - Notación física y matemática avanzada
- `@preview/cetz:0.3.4` - Gráficos y diagramas científicos

**Diagramas y visualizaciones:**

- `@preview/fletcher:0.5.8` - Diagramas de flujo (ya incluido)
- `@preview/pintorita:0.1.3` - Mapas mentales (ya incluido)
- `@preview/chronos:0.2.1` - Diagramas de secuencia (ya incluido)
- `@preview/cetz:0.3.4` - Diagramas técnicos avanzados

**Formato y layout:**

- `@preview/codly:1.3.0` - Bloques de código avanzados
- `@preview/showybox:2.0.4` - Cajas destacadas y alertas
- `@preview/tablex:0.0.9` - Tablas complejas

### Ejemplo de búsqueda e implementación

Cuando necesites una funcionalidad específica:

1. **Identifica la necesidad:**

   ```typst
   // Necesito: gráficos estadísticos para mostrar datos
   ```
2. **Busca en Typst Universe:**

   - Visita https://typst.app/universe
   - Busca términos relevantes
   - Evalúa opciones disponibles
   - Implementa el módulo seleccionado

### Diagramas Fletcher (diagramas de flujo)

```typst
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#diagram(
  node-stroke: 1pt,
  spacing: 15mm,
  
  node((0, 0), [Inicio], corner-radius: 3pt),
  edge((0, 0), (0, 1), "->"),
  node((0, 1), [Proceso], corner-radius: 3pt),
  edge((0, 1), (0, 2), "->"),
  node((0, 2), [Fin], corner-radius: 3pt),
)
```

### Pintorita (mapas mentales)

```typst
#import "@preview/pintorita:0.1.4"
#align(center)[
#show raw.where(lang: "pintora"): it => pintorita.render(it.text, style: "default", font: "Century Gothic")
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
  + Concepto Central
    ++ Rama 1
      +++ Sub-concepto A
      +++ Sub-concepto B
    ++ Rama 2
      +++ Sub-concepto C
```

]

```

### Chronos (diagramas de secuencia)

```typst
#import "@preview/chronos:0.2.1"

#chronos.diagram({
  import chronos: *
  _par("A", display-name: "Actor A")
  _par("B", display-name: "Actor B")
  
  _seq("A", "B", comment: "Mensaje")
  _seq("B", "A", comment: "Respuesta")
})
```

### Módulos adicionales útiles

#### CeTZ para diagramas técnicos

https://typst.app/universe/package/cetz

#### Showybox para cajas destacadas

```typst
#import "@preview/showybox:2.0.4": showybox

// First showybox
#showybox(
  frame: (
    border-color: red.darken(50%),
    title-color: red.lighten(60%),
    body-color: red.lighten(80%)
  ),
  title-style: (
    color: black,
    weight: "regular",
    align: center
  ),
  shadow: (
    offset: 3pt,
  ),
  title: "Red-ish showybox with separated sections!",
  lorem(20),
  lorem(12)
)

// Second showybox
#showybox(
  frame: (
    dash: "dashed",
    border-color: red.darken(40%)
  ),
  body-style: (
    align: center
  ),
  sep: (
    dash: "dashed"
  ),
  shadow: (
	  offset: (x: 2pt, y: 3pt),
    color: yellow.lighten(70%)
  ),
  [This is an important message!],
  [Be careful outside. There are dangerous bananas!]
)
```

#### Physica para notación científica

```typst
#import "@preview/physica:0.9.5": *

$ 
vec(F) = m vec(a) 
$

$ 
pdv(f, x, y) = pdv(, x, y) f 
$
```

**Instrucciones para la IA:**

1. **SIEMPRE** verifica la versión más reciente del módulo en Typst Universe
2. **EVALÚA** si el módulo es necesario antes de sugerirlo
3. **PROPORCIONA** ejemplos completos de implementación
4. **INVESTIGA ** enlaces a documentación cuando sea necesario
5. **CONSIDERA** alternativas nativas de Typst antes de módulos externos

## REGLAS CRÍTICAS PARA IA

1. **NUNCA** uses `**` para negrita en texto normal (solo `*`)
2. **NUNCA** uses `**` en ecuaciones para exponentes (usa `^`)
3. **SIEMPRE** usa `[@número]` para citas (nunca superíndices)
4. **SIEMPRE** crea archivo `bibliografia.bib` con claves numéricas
5. **SIEMPRE** usa etiquetas descriptivas en figuras, tablas y secciones
6. **NUNCA** incluyas "Tabla X:" o "Figura X:" en captions
7. **SIEMPRE** usa el código exacto proporcionado para tablas
8. **SIEMPRE** separa ecuaciones en bloque con líneas en blanco
9. **BUSCA** módulos apropiados en Typst Universe cuando la funcionalidad nativa sea insuficiente
10. **VERIFICA** compatibilidad y mantenimiento de módulos antes de recomendarlos
11. **PROPORCIONA** implementaciones completas con ejemplos funcionales
12. **EVALÚA** necesidad real antes de añadir dependencias externas
13. **EVITA** configuraciones duplicadas de numeración si los módulos ya las incluyen
14. **VERIFICA** qué configuraciones proporciona cada módulo antes de añadir configuraciones manuales

Estas reglas son obligatorias y no opcionales.
