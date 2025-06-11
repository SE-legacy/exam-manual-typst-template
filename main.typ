#import "conf.typ": details, generateAll
#import "@preview/oxifmt:1.0.0": strfmt
#set page(numbering: "1")
#set heading(numbering: "1.1")
#generateAll()

#let i = 1

#{
  let numbering = ""
  if details.sections.numbering {
    if details.sections.prefix.len() > 0 {
      numbering += details.sections.prefix + " "
    }
    numbering += "1.1. "
  }
  for section in details.sections.sections {
    heading(section, numbering: numbering)
    include strfmt("sections/{:02}.typ", i)
    pagebreak(weak: true)
    i += 1
  }
}
