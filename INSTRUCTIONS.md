# Guía para Redacción Académica con Typst

## Instrucciones Generales

Tu tarea es ayudarme a redactar contenido académico utilizando Typst, sigue estas pautas al trabajar con mis documentos:

## Secciones jerarquizadas

* Crea capítulos y secciones usando `=` (nivel 1) y `==` (nivel 2), etc. Por ejemplo:

  ```typst
  #set heading(numbering: "1.", supplement: [Capítulo])  // Enumera “Capítulo 1. …”
  = Introducción <intro>
  == Antecedentes <ante>
  ```

  Aquí, `Capítulo` es un texto previo a cada número de nivel 1, y las etiquetas `<intro>` y `<ante>` sirven para referencias cruzadas. Luego puedes referirte con `@intro` o `@ante` en el texto (Typst convertirá a “Sección 1.1” por ejemplo).
* Para referenciar encabezados, añade `#ref` o simplemente usa `@etiqueta` en el texto. Por ejemplo:

  ```typst
  Como se explica en @intro, …
  ```

## Contenido científico

* **Ecuaciones:** Usa `$ ... $` para ecuaciones en línea y equítalinear ecuaciones en bloque con un espacio en blanco antes y después del delimitador, por ejemplo:

  ```typst
  La fórmula de Pitágoras es $a^2 + b^2 = c^2$.  

  ## Ejemplo de ecuación en bloque
  $ E = mc^2 $ <eq1>
  ```

  Activa la numeración de ecuaciones con algo como `#set math.equation(numbering: "(1)", supplement: [Ec.])`. Por ejemplo:

  ```typst
  #set math.equation(numbering: "(1)", supplement: [Ec.])
  $ E = mc^2 $ <ener>
  En la @ener, mostramos la famosa ecuación de Einstein.
  ```

  Aquí `@ener` producirá “Ec. (1)”.

* **Tablas:** Crea tablas con `#table(...)`. Define columnas, filas y encabezados. Por ejemplo:

  ```typst
  #show figure.where(kind: table): set figure(supplement: [Tabla])

  #figure(
    text(size: 9pt)[
      #table(
        columns: (2fr, 1fr, 1fr),
        table.header([*Nombre*], [*Edad*], [*Puntaje*]),
        [Alice], [23], [87],
        [Bob], [19], [92],
      )
    ],
    caption: [Datos de ejemplo de estudiantes.]
  ) <tbl>
  ```

  Aquí la tabla queda dentro de `#figure` para añadirle una leyenda, y la referenciamos con `@tbl`.
  
  ```typst
  Como se muestra en @tbl ...,
  ```
* **Diagramas:** Puedes dibujar figuras simples con funciones de visualización integradas, como `#circle()`, `#rectangle()`, `#polygon(...)`, `#line()`, etc. Por ejemplo:

  ```typst
  #figure(
    #circle(radius: 1cm, fill: lightblue),
    caption: [Diagrama sencillo de un círculo.]
  )
  ```

  O combinar múltiples formas:

  ```typst
  #figure(
    #polygon(
      fill: green,
      (0pt, 0pt), (2cm, 0pt), (1cm, 1.5cm)
    ),
    caption: [Triángulo verde con vértices dados.]
  )
  ```
* **Listas:** Para listas de viñetas, usa `- ítem` o `* ítem`; para listas numeradas automáticamente usa `+ ítem` o números (`1. ítem`). y una barra diagonal (/) seguida del término y dos puntos para listas de términos. https://typst.app/docs/reference/model/terms/ Ejemplo:

  ```typst
  - Punto uno
  - Punto dos
  + Elemento A
  + Elemento B
  ```

## 4. Citas y bibliografía

* Genera bibliografia.bib e importa el archivo BibTeX:

  ```typst
  #bibliography("bibliografia.bib", style: "ieee")
  ```
* Cita en el texto con `@clave` (clave del artículo en el .bib). Por ejemplo:

  ```typst
  Estudios recientes [@Autor2023] demuestran que...
  ```

  Alternativamente, `#cite(<Autor2023>)` produce una cita similar. El bloque de bibliografía se generará al final con solo las referencias usadas.

* Asegúrate de colocar `#bibliography(...)` en la sección final del documento

  ```typst
  #bibliography(
  ("ref.bib"),
  title: "Bibliografía",
  full: false,                // solo incluir las entradas citadas
  style: "ieee"
  )
  ```

## Tipografía y estilos

El formato básico del texto en Typst se realiza mediante marcado simple: los asteriscos (*) para texto en negrita y los guiones bajos (_) para texto en cursiva. Es importante notar que la sintaxis Markdown ** para negrita debe convertirse a * en Typst, excepto cuando aparece en ecuaciones, donde ** indica una potencia y debe transformarse a ^. Los párrafos se separan mediante líneas en blanco.

* **Color de texto:** Cambia el color de la fuente con `fill` en `text`, o usando funciones de color. Por ejemplo:

  ```typst
  #set text(fill: rgb(0, 0, 0))  // texto negro
  Este texto será negro.
  ```
* **Énfasis:** Usa `_palabra_` para cursiva y `*palabra*` para negrita en sintaxis Typst. Por ejemplo:

  ```typst
  Este es un texto _importante_ y este otro es **destacado**.
  ```
* **Subrayado y resaltado:** Puedes subrayar con `#underline[texto]` y resaltar con `#highlight[texto]`. Ejemplo:

  ```typst
  Este es un #highlight[texto resaltado] en amarillo.
  ```

  También puedes cambiar el color de resaltado: `#highlight(fill: red)[texto]`.
* **Listas especiales:** Crea listas de términos y definiciones con formato de “término: definición”. Ejemplo:

  ```typst
  ángulo: Medida de inclinación.
  radio: Distancia desde el centro.
  ```
* **Notas al pie:** Añade notas al pie con `#footnote[...]`. Ejemplo:

  ```typst
  Texto con nota al pie #footnote[Explicación adicional] al final.
  ```

  Esto inserta un número superíndice y coloca el texto en la nota inferior.
* **Justificación y espaciado:** Justifica párrafos con:

  ```typst
  #set par(justify: true)
  ```

  Ajusta el espaciado entre párrafos, sangrías y demás con reglas de estilo adicionales según necesites.
* **Reglas y estructuras globales:** Usa `#set heading(numbering: ...)`, `#set list(marker: [...])`, etc., para cambiar numeración o estilo predeterminado. Ejemplo:

  ```typst
  #set heading(numbering: "I.")
  #set list(marker: [--])
  ```

  Esto numeraría capítulos con romanos y usaría guiones largos para viñetas.

## Extras y personalización

* **Código fuente / pseudocódigo:** Inserta bloques de código usando triple backticks con opción de lenguaje para sintaxis:

  ````typst
  ```python
  def cuadrado(x):
      return x*x
  ````

  ```
  Para texto en línea con estilo de código, usa un solo backtick o `#raw`. Además, puedes aplicar estilos a bloques de código con reglas `#show raw.where(block: true): ...`.
  ```
* **Personalización de estilo:** Aplica `#set` y `#show` para definir estilos globales o específicos. Ejemplo:

  ```typst
  #set page(fill: rgb(0.95,0.95,0.95))  // color de fondo de página
  #show heading[level:1]: set text(weight: 700)  // títulos nivel 1 en negrita
  ```

## Módulo de Recursos Web

Para incluir imágenes y recursos basados en web utiliza mi módulo personalizado:

```typst
#import "../modules/web_resources.typ": web-image

#web-image("https://ejemplo.com/imagen.png", width: 300pt, caption: "Pie de imagen")
```

Para referenciar una imagen

```typst
#import "../modules/web_resources.typ": web-image

@glacial Ilustración de un glacial:

#web-image("https://ejemplo.com/glacial.png", width: 300pt, caption: "Ilustración de un glacial") <glacial>
```

En el texto, @glacial se sustituirá por “Figura 1” (o el número correspondiente). Así logramos título, figura y referencia cruzada.

## Módulo de Diagramas Fletcher

Para diagramas de flujo y gráficos de procesos:

```typst
#import "@preview/fletcher:0.5.6" as fletcher: diagram, node, edge
#import fletcher.shapes: diamond

// Creando tipos de nodos
#let nodo-rect(pos, contenido) = {
  node(pos, contenido, corner-radius: 3pt, width: auto, height: auto, inset: 5pt)
}

#let nodo-diamond(pos, contenido) = {
  node(pos, contenido, shape: diamond, width: auto, height: auto, inset: 6pt)
}

// Creando el diagrama
#diagram(
  node-stroke: 0.8pt,
  spacing: 12mm,
  
  nodo-rect((0, 0), [Inicio]),
  edge((0, 0), (0, 1), "->"),
  // Nodos y aristas adicionales
)
```

## Módulo Pintorita para Mapas Mentales

Para crear mapas mentales y diagramas conceptuales:

```typst
#import "@preview/pintorita:0.1.3"
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
  + Concepto Principal
    ++ Rama 1
      +++ Sub-rama 1
      +++ Sub-rama 2
    ++ Rama 2
      +++ Sub-rama 3
```

## Módulo Chronos para Diagramas de Secuencia

Para crear diagramas de secuencia que muestren flujos de procesos:

```typst
#import "@preview/chronos:0.2.1"

#chronos.diagram({
  import chronos: *
  _par("A", display-name: "Participante A")
  _par("B", display-name: "Participante B")
  
  _seq("A", "B", comment: "Mensaje", enable-dst: true)
  // Elementos de secuencia adicionales
})
```

Utiliza mas módulos en https://typst.app/universe según sea necesario

no text within stars
Hint: using multiple consecutive stars (e.g. **) has no additional effect in typst