// Definición de tipos de referencias
#let reference-types = (
  article: (
    required: ("author", "title", "journal", "year"),
    format: (ref) => {
      return [#ref.author (#ref.year). #ref.title. #emph(ref.journal)]
    }
  ),
  book: (
    required: ("author", "title", "publisher", "year"),
    format: (ref) => {
      return [#ref.author (#ref.year). #emph(ref.title). #ref.publisher]
    }
  ),
  conference: (
    required: ("author", "title", "conference", "year"),
    format: (ref) => {
      return [#ref.author (#ref.year). #ref.title. En: #emph(ref.conference)]
    }
  ),
  website: (
    required: ("author", "title", "url", "year"),
    format: (ref) => {
      return [#ref.author (#ref.year). #ref.title. URL: #ref.url]
    }
  )
)

// Función para validar referencias
#let validate-reference(ref) = {
  if not "type" in ref {
    panic("La referencia debe tener un tipo")
  }
  
  let required = reference-types.at(ref.type).required
  for field in required {
    if not field in ref {
      panic("Campo requerido faltante: " + field)
    }
  }
}

// Diccionario de referencias
#let references = state("references", (:))

// Función para agregar una referencia
#let add-reference(key, ref) = {
  validate-reference(ref)
  references.update(refs => {
    refs.insert(key, ref)
    refs
  })
}

// Función para citar
#let cite(key) = {
  context {
    let refs = references.get()
    if key not in refs {
      panic("Referencia no encontrada: " + key)
    }
    let ref = refs.at(key)
    [#ref.author, #ref.year]
  }
}

// Función para imprimir referencias
#let print-references() = {
  context {
    let refs = references.get()
    [= Referencias]
    
    for (key, ref) in refs {
      (reference-types.at(ref.type).format)(ref)
      linebreak()
    }
  }
}

// Exportar las funciones públicas
#let references-module = (
  add-reference: add-reference,
  cite: cite,
  print-references: print-references
)

// Exportar el módulo
#references-module