#let teal       = rgb("#2D4F53")   // Theorem
#let sage       = rgb("#5B8234")   // Definition  
#let slate      = rgb("#5B7A96")   // Proposition
#let lavender   = rgb("#8B6B96")   // Corollary
#let amber      = rgb("#D09B2C")   // Lemma
#let rust       = rgb("#E69875")   // Affirmation
#let moss       = rgb("#7C8B80")   // Note & Remark
#let navy       = rgb("#3B4B58")   // Problem & Example
#let burgundy   = rgb("#9B6B6B")   // Exercise
#let charcoal   = rgb("#2C3E50")   // Figure
#let graphite   = rgb("#4A5568")   // Code

// Counters
#let thm-c  = counter("thm")
#let def-c  = counter("def")
#let prop-c = counter("prop")
#let cor-c  = counter("cor")
#let obs-c  = counter("obs")
#let lem-c  = counter("lem")
#let af-c   = counter("af")
#let note-c = counter("note")
#let proof-c = counter("proof")
#let ej-c   = counter("ej") // ejemplo
#let ex-c   = counter("ex") // ejercicio
#let fig-c  = counter("fig")
#let code-c = counter("code")

#let counter_conf(doc) = {
  show heading.where(level: 1): it => {
    thm-c.step(level: 1)
    def-c.step(level: 1)
    prop-c.step(level: 1)
    cor-c.step(level: 1)
    obs-c.step(level: 1)
    lem-c.step(level: 1)
    af-c.step(level: 1)
    note-c.step(level: 1)
    proof-c.step(level: 1)
    ej-c.step(level: 1)
    ex-c.step(level: 1)
    fig-c.step(level: 1)
    code-c.step(level: 1)

    v(0.8em, weak: true)
    it
    v(0.3em, weak: true)
  }
  doc
}

#show: counter_conf

// Basic abstractions
#let spref(
  color: black,
) = {
  text(color, box[$integral.square$])
}

#let print-num-box(
  counter, 
  prefix, 
  color,
  name: none,
) = {
  counter.step(level: 2)
  [
    *#spref(color: color) #prefix
    #context counter.display()*
    #if name != none { [_\(#name\)_] }
  ]
}

#let def(name, label: none, body) = {
  figure(
    supplement: "Def.",
    numbering: "1.1",
  )[
    #set align(left)
    #box(inset: (top: 0.6em, bottom: 0.4em), width: 100%)[
      #print-num-box(def-c, "Def.", sage, name: name) \
      #body
    ]
  ]
}

#let thm(name, body) = {
  figure(
    supplement: "Theorem.",
    numbering: "1.1",
  )[
    #set align(left)
    #box(inset: (top: 0.6em, bottom: 0.4em), width: 100%)[
      #print-num-box(thm-c, "Teorema.", teal, name: name) \
      #body
    ]
  ]
}

#let prop(name, body) = {
  figure(
    supplement: "Prop.",
    numbering: "1.1",
  )[
    #set align(left)
    #box(inset: (top: 0.6em, bottom: 0.4em), width: 100%)[
      #print-num-box(prop-c, "Prop.", slate, name: name) \
      #body
    ]
  ]
}

#let af(name, body) = {
  figure(
    supplement: "Aff.",
    numbering: "1.1",
  )[
    #set align(left)
    #box(inset: (top: 0.6em, bottom: 0.4em), width: 100%)[
      #print-num-box(af-c, "Aff.", rust, name: name) \
      #body
    ]
  ]
}

#let cor(name, body) = {
  figure(
    supplement: "Corollary.",
    numbering: "1.1",
  )[
    #set align(left)
    #box(inset: (top: 0.6em, bottom: 0.4em), width: 100%)[
      #print-num-box(cor-c, "Corollary.", amber, name: name) \
      #body
    ]
  ]
}

#let obs(name, body) = {
  figure(
    supplement: "Obs.",
    numbering: "1.1",
  )[
    #set align(left)
    #box(inset: (top: 0.6em, bottom: 0.4em), width: 100%)[
      #print-num-box(obs-c, "Obs.", lavender, name: name) \
      #body
    ]
  ]
}

#let note(body) = {
  figure(
    supplement: "Note",
    numbering: "1.1",
  )[
    #set align(left)
    #rect(stroke: moss, width: 100%, inset: (left: 1em, right: 1em))[
      #box(inset: (top: 0.6em, bottom: 0.6em), width: 100%)[
        #print-num-box(note-c, "Note.", moss) \
        #body
      ]
    ]
  ]
}

#let proof(body) = {
  figure(
    supplement: "Proof",
    numbering: "1.1",
  )[
    #set align(left)
    #rect(stroke: graphite, width: 100%, inset: (left: 1em, right: 1em))[
      #box(inset: (top: 0.6em, bottom: 0.6em), width: 100%)[
        #print-num-box(proof-c, [_Prueba._], graphite) \
        #body
        #align(right, $square.filled$)
      ]
    ]
  ]
}

#let lem(name, body) = {
  figure(
    supplement: "Lemma.",
    numbering: "1.1",
  )[
    #set align(left)
    #box(inset: (top: 0.6em, bottom: 0.4em), width: 100%)[
      #print-num-box(lem-c, "Lema.", lavender, name: name) \
      #body
    ]
  ]
}

#let ex(name, body) = {
  figure(
    supplement: "Ejercicio.",
    numbering: "1.1",
  )[
    #set align(left)
    #box(inset: (top: 0.6em, bottom: 0.4em), width: 100%)[
      #print-num-box(ex-c, "Ejercicio.", burgundy, name: name) \
      #body
    ]
  ]
}

#let ej(name, body) = {
  figure(
    supplement: "Example.",
    numbering: "1.1",
  )[
    #set align(left)
    #rect(stroke: navy, width: 100%, inset: (left: 1em, right: 1em))[
      #box(inset: (top: 0.6em, bottom: 0.6em), width: 100%)[
        #print-num-box(ej-c, "Example.", navy, name: name) \
        #body
      ]
    ]
  ]
}

#let rmk(body) = {
  figure(
    supplement: "Remark",
    numbering: "1.1",
  )[
    #set align(left)
    #rect(stroke: moss, width: 100%, inset: (left: 1em, right: 1em))[
      #box(inset: (top: 0.6em, bottom: 0.6em), width: 100%)[
        #print-num-box(note-c, "Remark.", moss) \
        #body
      ]
    ]
  ]
}

#let graf(img-src, caption: none, width: 100%) = {
  figure(
    image(img-src, width: width),
    caption: caption,
    supplement: "Figure",
    numbering: "1.1",
  )
}

#let code(name, lang: "python", output: none, body) = {
  figure(
    supplement: "Code",
    numbering: "1.1",
  )[
    #set align(left)
    #box(inset: (top: 0.6em, bottom: 0.4em))[
      #print-num-box(code-c, "Code.", charcoal, name: name) \
      #block(
        if output != none {
          raw(body, lang: lang, block: true)
          v(0.2em)
          text(weight: "bold")[→ `stdout:`]
          raw(output, lang: lang, block: true)
        } else {
          raw(body, lang: lang, block: true)
        }
      )
    ]
  ]
}
