// modules\references.typ
#let reference-types = (
  article: (
    required: ("author", "title", "journal", "year"),
    format: (ref) => {
      let volume = if "volume" in ref { [, vol. #ref.volume] } else { [] }
      let number = if "number" in ref { [(#ref.number)] } else { [] }
      let pages = if "pages" in ref { [, pp. #ref.pages] } else { [] }
      return [#ref.author (#ref.year). #ref.title. #emph(ref.journal)#volume#number#pages]
    }
  ),
  
  book: (
    required: ("author", "title", "publisher", "year"),
    format: (ref) => {
      let edition = if "edition" in ref { [, #ref.edition ed.] } else { [] }
      let isbn = if "isbn" in ref { [. ISBN: #ref.isbn] } else { [] }
      return [#ref.author (#ref.year). #emph(ref.title)#edition. #ref.publisher#isbn]
    }
  ),
  
  conference: (
    required: ("author", "title", "conference", "year"),
    format: (ref) => {
      let location = if "location" in ref { [, #ref.location] } else { [] }
      let pages = if "pages" in ref { [, pp. #ref.pages] } else { [] }
      return [#ref.author (#ref.year). #ref.title. En: #emph(ref.conference)#location#pages]
    }
  ),
  
  website: (
    required: ("author", "title", "url", "year"),
    format: (ref) => {
      let accessed = if "accessed" in ref { [ [Consultado: #ref.accessed]] } else { [] }
      return [#ref.author (#ref.year). #ref.title. URL: #ref.url#accessed]
    }
  ),
  
  thesis: (
    required: ("author", "title", "university", "year", "type"),
    format: (ref) => {
      return [#ref.author (#ref.year). #emph(ref.title). #ref.type, #ref.university]
    }
  ),
  
  report: (
    required: ("author", "title", "institution", "year"),
    format: (ref) => {
      let number = if "number" in ref { [. Report No. #ref.number] } else { [] }
      return [#ref.author (#ref.year). #ref.title. #ref.institution#number]
    }
  ),
  
  chapter: (
    required: ("author", "title", "book-title", "editor", "publisher", "year", "pages"),
    format: (ref) => {
      return [#ref.author (#ref.year). #ref.title. En: #ref.editor (Ed.), #emph(ref.book-title) (pp. #ref.pages). #ref.publisher]
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