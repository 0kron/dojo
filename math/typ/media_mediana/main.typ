#import "../lib/conf.typ": conf
#import "../lib/templates.typ": *

// Initial Config
#let sname = "Estadística Descriptiva"
#let name = "Media y Mediana"
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
#pagebreak()
#include "./sections/02-chp.typ"
#pagebreak()

= Bibliografía
#linebreak()
- Walpole, R. E., Myers, R. H., Myers, S. L., & Ye, K. (2012). Probabilidad y estadística para ingeniería y ciencias (9.ª ed.). Pearson.

- Vázquez Alamilla, J., Naranjo Albarrán, L., Fuentes García, R., & Chávez Cano, M. (2019). Inferencia estadística para estudiantes de ciencias (1.ª ed.). Universidad Nacional Autónoma de México, Facultad de Ciencias.
