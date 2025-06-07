#let block_base = (name, breakline, content) => {
	[*#name*.]
	if breakline {
		par(content)
	} else {
		h(5pt)
		content
	}
}
#let block_proofable = (name, breakline, wording, proof) => {
	block_base(name, breakline, {
		wording
		if proof != [] {
			par[*Доказательство*:]
			par(proof)
			set align(right)
			$square.filled$
			set align(left)
		}
	})
}

#let theorem = (name: "Теорема", breakline: false, wording, proof)        => block_proofable(name, breakline, wording, proof)
#let definition = (name: "Определение", breakline: false, content)        => block_base(name, breakline, content)
#let consequence = (name: "Следствие", breakline: false, wording, proof)  => block_proofable(name, breakline, wording, proof)
#let property = (name: "Свойство", breakline: false, wording, proof)      => block_proofable(name, breakline, wording, proof)
#let lets = box(" ", stroke: (
	top: 0.5pt, left: none, right: 0.5pt, bottom: 0.5pt
), width: 4pt, height: auto, fill: none, inset: 2pt, baseline: 15%)

// Функция для нумерования формул #eq($y = x$, id: <eq:eq1>)
#let equ(eq, id: none) = {
  let body = if type(id) == none {eq} else if type(id) == label [#eq #id] else [#eq <#id>]
  let numbering = if type(id) != none { "(1)" } else { none }
  set math.equation(numbering: numbering, supplement: [])
  body
}
