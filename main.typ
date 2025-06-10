#import "conf.typ": details, generateAll
#import "@preview/oxifmt:1.0.0": strfmt
#set page(numbering: "1")
#set heading(numbering: "1.1")
#generateAll()

#let i = 1
#for section in details.sections.sections {
  let numbering = ""
  if details.sections.numbering {
    if details.sections.prefix.len() > 0 {
      numbering += details.sections.prefix + " "
    }
    numbering += str(i) + ". "
  }
  heading(section, numbering: numbering)
  include strfmt("sections/{:02}.typ", i)
  i += 1
}

= Раздел 1 (если есть)
#include "questions/question1.typ"
#pagebreak()
