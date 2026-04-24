= Teoría de Grupos

#defn(
  name: "Grupo",
  label: <def-grupo>,
  [
    Un *grupo* es un par ordenado $(G, *)$ donde $G$ es un conjunto...
  ]
)

#thm(
  name: "Unicidad del Neutro",
  label: <thm-neutro-unico>,
  [
    Sea $(G, *)$ un grupo. El elemento neutro $e in G$ es único.
  ]
)

#proof[
  Supongamos que $e$ y $e'$ son dos neutros...
  Por @def-grupo, sabemos que $e * e' = e' * e = e = e'$.
]

#cor(
  label: <cor-inverso-unico>,
  [
    Para cada $a in G$, su inverso $a^(-1)$ es único.
  ]
)
