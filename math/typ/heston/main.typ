#import "../lib/conf.typ": conf
#import "../lib/templates.typ": *

// Initial Config
#let name = "Valuación de opciones bajo Heston"
#let sname = "Con instrumentación de la FFT"
#let authors = (
    (
      name: "Ain Bolaños Cortés",
      affiliation: "Universidad Panamericana", 
      email: "ain.bc@proton.me",
    ),
)
#let abstract = []

// Set functions
#set document(
  date: auto,
  title: [#name],
)

#show: conf.with(
  title: [#name],
  subtitle: [#sname],
  authors: authors,
  abstract: abstract,
)
#show: counter_conf

#include "./sections/01-chp.typ"
#pagebreak()
#include "./sections/02-chp.typ"
#pagebreak()
#include "./sections/03-chp.typ"
#pagebreak()
#include "./sections/04-chp.typ"
#pagebreak()

