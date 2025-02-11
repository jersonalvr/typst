// referencias.typ
#let references = (
  hershey2023: (
    type: "article",
    title: "The Hershey Company: A Century of Chocolate Innovation",
    author: "Business History Review",
    year: "2023",
    journal: "Harvard Business Review"
  ),
  
  osterwalder2010: (
    type: "book",
    title: "Business Model Generation",
    author: "Osterwalder, Alexander and Pigneur, Yves",
    year: "2010",
    publisher: "John Wiley & Sons"
  ),
  
  ai2024: (
    type: "article",
    title: "The State of AI in Healthcare",
    author: "HealthTech Magazine",
    year: "2024",
    journal: "Digital Health Quarterly"
  )
)

#let print-references() = {
  [= Referencias]
  
  for ref in references.values() {
    let authors = ref.author
    let entry = if ref.type == "article" {
      [#authors (#ref.year). #ref.title. #emph(ref.journal)]
    } else if ref.type == "book" {
      [#authors (#ref.year). #emph(ref.title). #ref.publisher]
    }
    
    [#entry]
    linebreak()
  }
}

#let cite(key) = {
  let ref = references.at(key)
  [#ref.author, #ref.year]
}