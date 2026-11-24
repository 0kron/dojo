#import "../../lib/templates.typ": *

= Problema 4

La barrera de sangre del cerebro es una capa única de protección de las células
que bloquean componentes dañinos como virus, bacterias y otras toxinas de entrar
al cerebro. Sin embargo, también bloquea fármacos terapéuticos útiles. Esto ha
sido una frustación para muchos investigaciones en los tratamientos de desorden
neurológico como depresión, insomnia, Alzheimer y otros. Se seleccionan ciertos
métodos que rompen parcialmente la barrera y se muestran a continuación los
resultados:

#align(center)[
    #table(
      stroke: none,
      columns: 5,
      [*Nivel de mejoría*], [*Cafeína*], [*Hierro*], [*Célula inmune*], [*Otro*],
      [Alta], [50], [55], [50], [25],
      [Leve], [120], [75], [100], [65],
      [Nula], [80], [70], [150], [60],
    )
]

Usaremos $alpha = 0.05$. ¿Existe asociación entre el nivel de mejoría y los 
métodos que rompen parcialmente la barrera de sangre del cerebro?


== Prueba de Hipótesis
Dado que nuestros datos constan de cuatro categorías exhaustivas y excluyentes,
usaramos la tabla de contingencia. Lo que nos dá la siguiente prueba de
hipótesis: 
$
gamma = H_0 : exists.not "una asociación entre los métodos y las mejorías " \
" vs " \
H_1:  exists  "una relación entre los métodos y las mejorías"
$

== Estadística de prueba
Ahora, para llevar a cabo esta prueba, debemos hacer un preproceso a los datos
que nos dieron, sacando los totales marginales, la suma total, y después las
probabilidades de eventos conjuntos. 

Entonces, tenemos las familias: 
$ 
A = (A_1, dots, A_2) &arrow.l "Método empleado" \
B = (B_1, dots, B_2) &arrow.l "Nivel de mejoría" 
$

#align(center)[
    #table(
      stroke: none,
      columns: 6,
      [*Nivel de mejoría*], [Cafeína], [Hierro], [Célula inmune], [Otro], [*Total*],
      [Alta], [50], [55], [50], [25], [*180*],
      [Leve], [120], [75], [100], [65], [*360*],
      [Nula], [80], [70], [150], [60], [*360*],
      [*Total*], [*250*], [*200*], [*300*], [*150*], [*900*]
    )
]

=== Tabla Esperados
Y calculamos la frecuencia esprada con: 
$
e_(i j) = (x_(i T) x_(T j))/ x_(T T)
$

Con lo que obtenemos la siguiente tabla: 
#align(center)[
    #table(
      stroke: none,
      columns: 5,
      [*Nivel de mejoría*], [Cafeína], [Hierro], [Célula inmune], [Otro],
      [Alta], [50], [40], [60], [30],
      [Leve], [100], [80], [120], [60],
      [Nula], [100], [80], [120], [60],
    )
]

#pagebreak()

=== Estadística de prueba
$
T = sum_(i = 1) sum_(j= 1) (O_(i j) - E_(i j))^2 / E_(i j)
$
Y bajo $H_0$, $T tilde chi^2_6$, y calculamos entonces $T$.

$
T =  & ((50 - 50)^2)/50
       + ((55 - 40)^2)/40
       + ((50 - 60)^2)/60
       + ((25 - 30)^2)/30 \
       & + ((120 - 100)^2)/100
       + ((75 - 80)^2)/80
       + ((100 - 120)^2)/120
       + ((65 - 60)^2)/60 \
       & + ((80 - 100)^2)/100
       + ((70 - 80)^2)/80
       + ((150 - 120)^2)/120
       + ((60 - 60)^2)/60
$

Obtenemos pues: 
#align(center)[
  #rect[
    $
    T approx 28.9375
    $
  ]
]

Tomamos pues $alpha = 0.05$, lo que implica entonces que tenemos el área crítica
de: 
$
chi^2 _(0.95, 6) = 12.592 < T therefore "Rechazamos " H_0
$

_La tabla que se utilizó es está en la siguiente liga: #link("https://www.chisquaretable.net/")[Chi Square Table]_

== P-value
Utilizando la misma tabla del punto pasado, podemos acotar el p-value por $0.001$, 
dado que la región crítica ($<= 22.458$) es menor a nuestra $T$. Y como $0.001 < 0.05$
entonces: 
$
p < 0.005 therefore "Rechazamos " H_0
$

Más aún en Python podemos obtener el p-value con mayor exactitud: 
$
p = 6.25163 times 10^(-5)
$

Mismo que claramente cumple el análisis previo.

== Interpretación

Tenemos suficiente información para afirmar que el método usado para romper de
de manera parcial la barrera de sangre del cerebo *no es independiente* del 
nivel de mejoría. Esto significa que existen distintas distribuciones de mejoría
para los distintos métodos utilizados. 

Con $alpha = 0.05$, la conclusión es que no todos los métodos producen los
mismos resultados. Que es lo que afirmaba entonces la hipótesis $H_1$: 
$
H_1:  exists  "una relación entre los métodos y las mejorías"
$

#pagebreak()

= Código
== Python
#linebreak()
#raw(read("../src/tabla_contingencia.py"), block: true, lang: "python")

== Output
```text
Tabla de datos marginales:
[50, 55, 50, 25, 180]
[120, 75, 100, 65, 360]
[80, 70, 150, 60, 360]
[250, 200, 300, 150, 900]

Tabla de Esperados:
[50.0, 40.0, 60.0, 30.0]
[100.0, 80.0, 120.0, 60.0]
[100.0, 80.0, 120.0, 60.0]

Estadística T: 28.9375

------ PRUEBA DE HIPÓTESIS ------
Estadístico T        = 28.9375
Grados de libertad   = 6
Valor crítico        = 12.5916
p-value              = 6.25163e-05

Como T = 28.9375 > 12.5916, RECHAZAMOS H0
```

