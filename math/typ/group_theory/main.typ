// ---- Template imports ----
#import "../src/templates.typ": *
#import "../src/macros.typ": *
#import "../src/notation.typ": *

// ---- Document settings ----
#set document(title: "Apuntes X", author: "Ain Bolaños")
#set page(paper: "a4", columns: 1, numbering: "1")
#set text(size: 11pt, font: "New Computer Modern")
#set par(justify: true, first-line-indent: 1.5em, spacing: 1em)
#set heading(numbering: "1.")

#show math.equation: set text(font: "New Computer Modern Math")

// ---- Section counter reset ----
#show heading.where(level: 1): it => {
  // Reset counters (you'll need to expose these from templates.typ)
  counter("thm").update(0)
  counter("def").update(0)
  counter("prop").update(0)
  counter("cor").update(0)
  counter("lemma").update(0)
  counter("afirm").update(0)
  counter("nota").update(0)
  counter("prob").update(0)
  counter("ejem").update(0)
  counter("graph").update(0)
  counter("code").update(0)
  
  v(0.8em, weak: true)
  it
  v(0.3em, weak: true)
}

#show title: set text(size: 18pt)
#show title: set align(center)
#show title: set block(below: 1.2em)

// ---- Title and outline ----
#title[Álgebra Moderna I]
#outline(depth: 2)

// ---- Content inclusion ----
// Sections can use tmpl.thm(...), tmpl.defn(...), etc.
// #include "sections/01-chp.typ"
= Teoría de Grupos

#func(
  name: "Grupo",
  label: <def-grupo>,
  [
    Un *grupo* es un par ordenado $(G, *)$ donde $G$ es un conjunto...
  ]
)
