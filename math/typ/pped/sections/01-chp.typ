#import "../../lib/templates.typ": *

= Medidas de tendencia central 
#linebreak()

Parimos de una muestra aleatoria $underline(X) = {X_1, X_2, dots, X_n}$, buscaremos estadísticas que nos desvelen *información objetiva* sobre la naturaleza de nuestra muestra.

Con todo lo anterior, en la estadística descriptiva, las dos medidas de tendencia central más utilizadas son claramente la *media* y la *mediana*.

#pagebreak()

= Media
#linebreak()
#def("Media")[
  Dado un conjunto de $n$ observaciones, $x_1, x_2, dots, x_n$, la *media* es la suma de estas observaciones dividida entre $n$, y se denota como $overline(x)$. Es decir: 
  $ overline(x) = ( sum_(i = 1)^n x_i ) / n $
]

#pagebreak()

== Propiedades Matemáticas
#linebreak()

- *Estimador de la Esperanza:*
Podemos intuitivamente entender el caso en que $n -> infinity$, bajo ciertas condiciones de representatividad, se tiene $ overline(x) -> E[X_i] $ 
Para cualquier $X_i$ en la muestra, esto deriva de _la ley de los grandes números_.

#pagebreak()

- *Suma de desviaciones nula:*
La suma de las desviaciones de cada observación respecto de la media es cero:
$ sum_(i=1)^n (x_i - overline(x)) = 0 $
#proof()[
  $ sum_(i = 1)^n (x_i - overline(x)) = sum_(i = 1)^n x_i - n overline(x) = n overline(x) - n overline(x) = 0 $
]
#pagebreak()

- *Sensibilidad a valores atípicos (outliers):*
La media es extremadamente sensible a valores extremos. 
#linebreak()
#linebreak()
#linebreak()
#linebreak()

#ej(none)[
  Por ejemplo, en el conjunto de datos ${4, 5, 6, 7, 100}$, la media es $24.4$, mientras que la mayoría de los datos están alrededor de $5$ o $6$.
]


#pagebreak()

== Implementación
=== Ejemplo a Mano

Consideremos las alturas (en metros) de la generación $delta$:

- Mariana = 1.50 
- Mateo = 1.60
- Viken = 1.67
- Ain = 1.67
- Alen = 1.74
- Rodrigo = 1.70
- Leyre = 1.63
- Natalia = 1.63
- Diego = 1.70

*Suma total:* $1.50+1.60+1.67+1.67+1.74+1.70+1.63+1.63+1.70 = 14.84$

*Media:* $overline(x) = 14.84 / 9 approx 1.6489$ metros.

#pagebreak()

=== Media en Python

#linebreak()
Puedes usar `numpy` para calcular la media sobre un arreglo (`np.array`):

#code(none)[
```python
import numpy as np

# Datos de alturas
alturas = np.array([1.50, 1.60, 1.67, 1.67, 1.74, 1.70, 1.63, 1.63, 1.70])
media = np.mean(alturas)
print(f"Media calculada con Python: {media:.4f} m")
```

- *Output:*
```shell-unix-generic
$ python3 main.py
> "Media calculada con Python: 1.6489 m"
```

]

#pagebreak()

=== Media en R
#linebreak()
En *R* se puede usar `mean` sobre el vector de un DataFrame:

#code(none)[
```R
# Datos de alturas
alturas <- c(1.50, 1.60, 1.67, 1.67, 1.74, 1.70, 1.63, 1.63, 1.70)
media <- mean(alturas)
cat("Media calculada con R:", round(media, 4), "m\n")
```
- *Output:*
```shell-unix-generic
> "Media calculada con R: 1.6489 m"
```
]
