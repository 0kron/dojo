#import "../lib/conf.typ": conf
#import "../lib/templates.typ": *

// Initial Config
#let name = "Title"
#let sname = "Subtitle"
#let authors = (
    (
      name: "Name",
      affiliation: "University", 
      email: "proton@proton.me",
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
= Intro
// Start by trying thm([name])[body]
