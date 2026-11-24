#import "../lib/conf.typ": conf
#import "../lib/templates.typ": *

// Initial Config
#let sname = "Tarea Examen 2"
#let name = "Estadística No Paramétrica"
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

#include "./sections/01-chp.typ"

