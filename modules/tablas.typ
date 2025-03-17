// modules\tablas.typ
#let crear-tabla(headers: (), rows: ()) = {
  table(
    columns: (2fr, 2fr),  // First column gets 1/4 of space, second gets 3/4
    inset: 8pt,
    stroke: 0.5pt,
    [*#headers.at(0)*], [*#headers.at(1)*],
    ..rows.flatten()
  )
}

#let INHERIT = "inherit"

#let crear-tabla-financiera(headers, rows, text-size: INHERIT) = {
  // Crear el bloque que contendrá la tabla con el texto configurado
  block[
    // Aplicar tamaño de texto directamente aquí
    #set text(size: if text-size != INHERIT and text-size != none { text-size } else { 12pt })
    
    // Función auxiliar para procesar cada celda
    #let process-cell(cell) = {
      if type(cell) == str {
        [#cell]
      } else {
        cell
      }
    }
    
    // Determinar el número de columnas basado en los encabezados
    #let num-columns = headers.len()
    
    // Crear tabla con distribución equitativa de columnas
    #let column-widths = range(0, num-columns).map(_ => 1fr)
    
    // Tabla con configuración ya aplicada
    #table(
      columns: column-widths,
      inset: 8pt,
      stroke: 0.5pt,
      align: center,
      ..headers.map(header => [*#header*]),
      ..rows.flatten().map(process-cell)
    )
  ]
}