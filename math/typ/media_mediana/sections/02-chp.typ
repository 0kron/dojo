#import "../../lib/templates.typ": *

= Mediana
#linebreak()
== Definición
#def("Mediana")[
  Dado un conjunto de $n$ observaciones $x_1, x_2, dots, x_n$, la *mediana* es el valor $m_c$ definido en los siguientes dos casos:
  + Con *$n$ impar*, entonces $m_c$ es el valor que ocupa la posición $(n+1)/2$ una vez que los datos han sido ordenados, es decir, $ m_c = x_(((n+1)/2)) $
  + Si *$n$ es par*, definimos a la mediana como la media aritmética de los dos valores centrales, en las posiciones $n/2$ y $n/2 + 1$ de los valores ordenados, es decir, $ m_c = (x_((n/2)) + x_((n/2 + 1))) / 2 $
]

== Propiedades Matemáticas
#linebreak()
La mediana en terminos prácticos divide tu muestra de acuerdo a su aparición exáctamente a la mitad, es decir, es la frontera entre el 50% superior y el 50% inferior de los datos. 

- *Robusta:* Y se dice que es *robusta* debido a que no se ve afectada por valores atípicos. Siguiente el ejemplo pasado con ${4, 5, 6, 7, 100}$, la mediana será $6$, que representa mucho mejor a la muestra que el pasado $24.4$. En distribuciones asimétricas o con outliers se tiende a tomar la mediana como el "valor típico".
#linebreak()

== Implementación
=== Ejemplo a Mano
Utilizando los mismos 9 datos de las alturas de la generación $delta$ hacemos lo siguiente sobre los datos ordenados: $ {1.50, 1.60, 1.63, 1.63, 1.67, 1.67, 1.70, 1.70, 1.74 } $
+ Notamos que $n=9$ es impar, entonces, nos podemos tomar el valor en la posición central: $ (9 + 1) / 2 = 5 ==> m_c = 1.67 $
+ Digamos que al conjunto le agregamos el dato de Valeria, con altura de $1.78$, entonces, tendríamos un nuevo $n = 10$. Con lo que el conjunto queda de la siguiente manera: $ {1.50, 1.60, 1.63, 1.63, 1.67, 1.67, 1.70, 1.70, 1.74, 1.78 } $ Con lo que entonces, existen dos valores medios $10 / 2 = 5, " y " 10 / 2 + 1 = 6$ con lo que $ m_c = (1.67 + 1.67) / 2 = 1.67 $
#pagebreak()

=== Mediana en Python
Así como existe `mean` en `numpy` se puede usar `median()` sobre un arreglo.

#code(none)[
```python
import numpy as np

alturas_par = np.array([1.50, 1.60, 1.63, 1.63, 1.67, 1.67, 1.70, 1.70, 1.74, 1.78])
mediana = np.median(alturas_par)
print(f"Mediana calculada con Python: {mediana:.4f} m")
```

- *Output:*
```shell-unix-generic
$ python3 main.py
> "Media calculada con Python: 1.6700 m"
```
]

#linebreak()
=== Mediana en R
En *R* podemos usar la función `median` así como en Python.
#code(none)[
```R
alturas_par <- c(1.50, 1.60, 1.63, 1.63, 1.67, 1.67, 1.70, 1.70, 1.74, 1.78)
mediana <- median(alturas_par)
cat("Mediana calculada con R:", round(mediana, 4), "m\n")
```

- *Output:*
```shell-unix-generic
$ python3 main.py
> "Media calculada con R: 1.6700 m"
```
]
#pagebreak()

= Asímetría
#linebreak()
También conocida como *Skewness*, es la relación entre la media y la mediana, y nos indica como se distribuyen los datos. 

+ Si $overline(x) approx m_c$, entonces la distribución es *simétrica*.
+ Si $overline(x) > m_c$, entonces la distribución tiene un *sesgo positivo*, es decir tiene una _cola derecha_.
+ Si $overline(x) < m_c$, entonces la distribución tiene un *sesgo negativo*, es decir tiene una _cola izquierda_.

En los ejemplo final con las alturas de $delta$ y Valeria, teníamos los siguientes datos: $ overline(x) = 1.6489, " y " m_c = 1.67 $ Con lo que podemos pues ver que existe un muy ligero _sesgo negativo_.

El uso de la asimetría y el entendimiento de los sesgos existentes resulta fundamental para decidir que medida de tendencia central se utilizará en el análisis de los datos.
