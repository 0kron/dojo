#let conf(
  title: [],
  subtitle: [],
  authors: (), 
  abstract: [],
  doc,
) = {
  // Set rules -----------------------
  set page(
    paper: "a4",
    header: align(
      right,
      title
    ),
    // margin: (x:1.8cm, y: 1.5cm),
    numbering: "1",
  )
  set heading(
    numbering: (..numbers) => {
      let level = numbers.pos().len()
      if (level == 1) {
        return none
      } else {
        return numbering("a.", numbers.pos().at(level -1))
      }
    }
  )
  set text(
    font: "New Computer Modern",
    size: 9.5pt,
  )
  set par(justify: true)
  // ---------------------------------
  place(
    center+horizon,
    float: false,
    //scope: "parent",
    {
      align(horizon+center)[
        #text(size: 30pt)[*#title*] \ 
        #text(size: 20pt)[*#subtitle*] \
      ]

      let count = authors.len()
      let ncols = calc.min(count, 3)
      grid(
        columns: (1fr,) * ncols,
        row-gutter: 24pt,
        ..authors.map(author => [
          #author.name \
          #author.affiliation \
          #link("mailto:" + author.email)
        ]),
      )
    }
  )
  pagebreak()
  outline(depth: 2, title: [Contenido])
  pagebreak()

  doc
}
