#let make_toc = () => {
  show outline.entry: it => {
    it
  }
  outline(title: [СОДЕРЖАНИЕ])
  pagebreak()
}

#let generate_title() = {
  let details = toml("details.toml")
  set align(center)
  v(1.5cm)
  text(weight: "bold", upper(details.subject) + "\n")
  [*#details.term семестр*]
  par(details.description)
  v(1.5cm)
  set align(left)
  for author in details.authors {
    text(author + "\n")
  }
  v(1fr)
  set align(center)
  text("г. Саратов" + " " + str(datetime.today().year()))
  pagebreak()
}

#let generateAll = () => {
  generate_title()
  make_toc()
}
