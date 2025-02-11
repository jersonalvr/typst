#import "@preview/tablex:0.0.5": tablex, rowspanx, colspanx, hlinex, cellx

#let canvas(
  title:[],
  business:[],
  problems:[],
  activities:[],
  metrics:[],
  proposition:[],
  unfair:[],
  channels:[],
  clients:[],
  costs:[] ,
  revenues:[],
  ) = {
    set page(
        "a4",
        flipped: true,
        fill: rgb("ffffff"),
        margin: (1em)
    )
    set text(font: "Arial")
    
    // Define color palette
    let colors = (
      problems: rgb("#FFE5E5"),    // Light red
      activities: rgb("#E5FFE5"),   // Light green
      metrics: rgb("#E5FFFF"),      // Light cyan
      proposition: rgb("#FFE5FF"),  // Light magenta
      unfair: rgb("#FFFFE5"),      // Light yellow
      channels: rgb("#E5E5FF"),     // Light blue
      clients: rgb("#FFE5CC"),      // Light orange
      costs: rgb("#E5FFE5"),        // Light green
      revenues: rgb("#E5FFE5")      // Light green
    )
    
    pad(x:4em, top:6em, bottom: 4em)[
      #place(dy:-5em, title)
      #place(left, dy:-6em, dx: 15.5cm, box(
        fill: rgb("#F8F9FA"),
        radius: 1em,
        width: 10.2cm,
        height: 2cm,
        inset: 1em,
        stroke: 0.5pt,
        business))
      #tablex(
        columns: (2fr, 2fr, 1fr, 1fr, 2fr, 2fr),
        rows: (1fr, 1fr, 1fr),
        inset: 1em,
        // Add borders and rounded corners
        stroke: 0.5pt,
        radius: 4pt,
        rowspanx(2, fill: colors.problems)[
          #problems
        ],
        cellx(fill: colors.activities)[
          #activities
        ],
        cellx(colspan: 2, rowspan:2, fill: colors.proposition)[
          #proposition
        ],
        cellx(fill: colors.unfair)[
          #unfair
        ],
        rowspanx(2, fill: colors.clients)[
          #clients
        ],
        (),
        cellx(fill: colors.metrics)[
          #metrics
        ],
        (),
        cellx(fill: colors.channels)[
          #channels
        ],
        (),
        cellx(colspan:3, fill: colors.costs)[
          #costs
        ],
        cellx(colspan:3, fill: colors.revenues)[
          #revenues
        ]
      )
    ]
}