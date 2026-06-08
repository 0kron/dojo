#import "../../lib/templates.typ": *

= Medidas de tendencia central 
#linebreak()

También conocidas como medidas muestrales de tendencia central, debido a que parten de una muestra aleatoria $underline(X) = {X_1, X_2, dots, X_n}$, son estadísticas que buscan analizar de forma colectiva los datos obtenidos. Esto es, más allá de la representación visual, estas estadísticas son valores objetivos sobre la naturaleza de la distribución de nuestra muestra.

Con todo lo anterior, en la estadística descriptiva, las dos medidas de tendencia central más utilizadas son claramente la *media* y la *mediana*, y resultan protagónicas para un primer estudio de las muestras aleatorias.

#linebreak()

= Media
#linebreak()
== Definición 

#def("Media")[
  Dado un conjunto de $n$ observaciones, $x_1, x_2, dots, x_n$, la *media* es la suma de estas observaciones dividida entre $n$, y se denota como $overline(x)$. Es decir: 
  $ overline(x) = ( sum_(i = 1)^n x_i ) / n $
]

Podemos ver la media como el punto de concentración de los datos, o el "centro de masa" de los mismos. Por ejemplo, la altura promedio en metros de la generación $delta$ (nosotros).
#linebreak()
#linebreak()

== Propiedades Matemáticas
#linebreak()
Podemos intuitivamente entender el caso en que $n -> infinity$, bajo ciertas condiciones de representatividad, se tiene que $overline(x) -> E[X_i]$ para cualquier $i$ en la muestra, esto deriva de _la ley de los grandes números_. Esto significa que la media muestral es un estimador consistente de la esperanza poblacional.

- *Suma de desviaciones nula:*
La suma de las desviaciones de cada observación respecto de la media es cero:
$ sum_(i=1)^n (x_i - overline(x)) = 0 $
#proof()[
  $ sum_(i = 1)^n (x_i - overline(x)) = sum_(i = 1)^n x_i - n overline(x) = n overline(x) - n overline(x) = 0 $
]

#linebreak()
- *Sensibilidad a valores atípicos (outliers):*
La media es extremadamente sensible a valores extremos. Por ejemplo, en el conjunto de datos ${4, 5, 6, 7, 100}$, la media es $24.4$, mientras que la mayoría de los datos están alrededor de $5$ o $6$. _Un solo valor atípico puede distorsionar por completo la media_.

== Implementación
=== Ejemplo a Mano
#linebreak()
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

#linebreak()
=== Media en Python
#linebreak()
Puedes usar `numpy` para calcular la media sobre un arreglo (`np.array`). Replicando el ejemplo a mano:

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

=== Media en R
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
