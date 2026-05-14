#import "../lib/conf.typ": conf
#import "../lib/templates.typ": counter_conf

// Initial Config
#let name = "Introducción a la Topología"
#let sname = "Topología I"
#let authors = (
    (
      name: "Ain Bolaños Cortés",
      affiliation: "Universidad Panamericana", 
      email: "0267980@up.edu.mx",
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

// Main document
#include "./sections/01-chp.typ"

#pagebreak()
#include "./sections/02-chp.typ"


