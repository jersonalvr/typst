#let reference-types = (
  article: (
    required: ("author", "title", "journal", "year"),
    format: (ref) => {
      let volume = if "volume" in ref { [, vol. #ref.volume] } else { [] }
      let number = if "number" in ref { [(#ref.number)] } else { [] }
      let pages = if "pages" in ref { [, pp. #ref.pages] } else { [] }
      let journal_info = if "journal" in ref { [#emph(ref.journal)] } else { [] }
      return [#ref.author (#ref.year). #ref.title. #journal_info#volume#number#pages]
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
      let institution_field = if "institution" in ref { [#ref.institution] } else { [] }
      return [#ref.author (#ref.year). #ref.title. #institution_field#number]
    }
  ),
  
  chapter: (
    required: ("author", "title", "book-title", "editor", "publisher", "year", "pages"),
    format: (ref) => {
      return [#ref.author (#ref.year). #ref.title. En: #ref.editor (Ed.), #emph(ref.book-title) (pp. #ref.pages). #ref.publisher]
    }
  ),
  
  "news article": (
    required: ("author", "title", "source", "year", "url"),
    format: (ref) => {
      let accessed = if "accessed" in ref { [ [Consultado: #ref.accessed]] } else { [] }
      let source = if "source" in ref { [#emph(ref.source). ] } else { [] }
      return [#ref.author (#ref.year). #ref.title. #source URL: #ref.url#accessed]
    }
  ),
  
  "blog post": (
    required: ("author", "title", "year", "url"),
    format: (ref) => {
      let accessed = if "accessed" in ref { [ [Consultado: #ref.accessed]] } else { [] }
      let blog = if "blog" in ref { [#emph(ref.blog). ] } else { [] }
      return [#ref.author (#ref.year). #ref.title. #blog URL: #ref.url#accessed]
    }
  ),
  
  standard: (
    required: ("author", "title", "number", "year"),
    format: (ref) => {
      let publisher = if "publisher" in ref { [. #ref.publisher] } else { [] }
      let url = if "url" in ref { [URL: #ref.url] } else { [] }
      let number_field = if "number" in ref { [(#ref.number)] } else { [] }
      return [#ref.author (#ref.year). #emph(ref.title) #number_field#publisher. #url]
    }
  ),

  initiative: (
    required: ("author", "title", "institution", "year"),
    format: (ref) => {
      let institution_field = if "institution" in ref { [#ref.institution] } else { [] }
      let url = if "url" in ref { [. URL: #ref.url] } else { [] }
      return [#ref.author (#ref.year). #emph(ref.title). #institution_field#url]
    }
  )
)

// Función para validar referencias
// #let validate-reference(ref) = {
//   if not "type" in ref {
//     panic("La referencia debe tener un tipo")
//   }
  
//   if ref.type not in reference-types {
//     panic("Tipo de referencia no soportado: " + ref.type)
//   }
  
//   let required = reference-types.at(ref.type).required
//   for field in required {
//     if not field in ref {
//       panic("Campo requerido faltante: " + field + " en referencia de tipo: " + ref.type)
//     }
//   }
// }

// Diccionario de referencias
#let references = state("references", (:))

// Función para agregar una referencia
#let add-reference(key, ref) = {
  //validate-reference(ref)
  references.update(refs => {
    refs.insert(key, ref)
    refs
  })
}

// Función para citar múltiples referencias
#let cite(..keys) = {
  context {
    let refs = references.get()
    
    // Verificar que cada clave exista
    for key in keys.pos() {
      if key not in refs {
        panic("Referencia no encontrada: " + key)
      }
    }
    
    // Si solo hay una referencia, mostrarla normalmente
    if keys.pos().len() == 1 {
      let key = keys.pos().first()
      let ref = refs.at(key)
      [#ref.author, #ref.year]
    } else {
      // Para múltiples referencias, mostrarlas separadas por punto y coma
      [(] + keys.pos().map(key => {
        let ref = refs.at(key)
        [#ref.author, #ref.year]
      }).join([; ]) + [)]
    }
  }
}

// Función para imprimir referencias con formato APA
#let print-references() = {
  context {
    let refs = references.get()
    [= Referencias]
    
    // Configurar el bloque de referencias con el formato APA
    block(
      spacing: 1.5em, // Espacio entre referencias (APA requiere doble espacio)
      {
        for (key, ref) in refs {
          // Crear un párrafo con sangría francesa (hanging indent) para cada referencia
          par(
            hanging-indent: 1em,
            first-line-indent: 0em,
            justify: true,
            {
              (reference-types.at(ref.type).format)(ref)
            }
          )
        }
      }
    )
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