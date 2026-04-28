#import "../../lib/templates.typ": *

= Grupos y subgrupos

¿Listos para adentrarse en el mundo de la teoría de grupos? Pues que pena, porque es lo que toca el día de hoy. La pregunta generadora
más típica que se hace es: 

_¿Cómo se comportan las simetrías?_ 

Tenemos por ejemplo el caso del cuadrado, dado que nombramos todas sus esquinas, del $1$ al $4$, entonces como podemos ver sus rotaciones y reflexiones tales que no se modifica al cuadrado (sin importar sus esquinas nombradas). Entonces, analizando, se encuentra que podemos componer las transformaciones una tras otra y se generarán los mismos resultados que ya habíamos encontrado desde el primer análisis. Bueno, esto significa que tenemos una noción de cerradura, la cual genera a una distribución _preestablecida_ de los estados del sistema. 

#def("Grupo")[
  Un grupo es un conjunto $G != emptyset$ junto con una función $*: G times G --> G$ que satisface las siguientes propiedades:
  
  + $*$ es *asociativa*: $ forall x, y, z in G, x * \( y * z \) = \( x * y \) * z $
  + Existe un *neutro* en $G$: $ exists e in G : forall x in G, x * e = e = e * x $
  + Todo elemento de $G$ es invertible bajo $*$: $ forall x in G, exists hat(x) in G : x * tilde(x) = e = tilde(x) * x $

  Además, si es _conmutativa_, le llamaremos grupo *abeliano*, los grupos pues se denotan con $\( G, *, e \)$.
]<def-grupo>

Generalmente se pueden expresar a los miembos del grupo en una matriz, la cual después servirá como forma de analizar el operador bajo el grupo, esto quiere decir pues, que _todo grupo abeliano será simétrico respecto a su diagonal principal_.

#rmk()[
  Otro factor a considerar siempre es la necesidad de poner al neutro por la izquierda y por la derecha, así como a los inversos, eso no es omitible dado que no se nos garantiza conmutatividad.
]

== Primeros ejemplos de grupos

+ *Las simetrías de un polígono de $n$ lados*
  - Este es un grupo comunmente denominado en la literatura como $D_n$, y es grupo claro que para todo $n in NN$. Mientras que su operación es $compose$ la composición entre simetrías. El caso que se describió al inicio de este capítulo es entonces el caso específico de $D_4$. 
+ Con $X != emptyset$ y $G = { f: X --> X, "con " f "biyectiva"}$
  - Es grupo con $\( G, compose , I_X \)$. 
  - Además podemos decir que es abeliano dado que $|X| < 3$. _En caso contrario no podríamos afirmarlo_.
+ *Matrices*
  + $M_(2 times 2) \( RR \) $ 
    - Dadas dos matrices: En caso de no ser invertibles no se cumpliría la propiedad de inverso, @def-grupo. 
    - Una vez lo delimitados a todas las matrices invertibles, entonces nos fijamos en el $0_n$, afortunadamente esta no es invertible, pero observemos también que no tiene inverso. 
  + $\( M_(2 times 2) \( RR \), dot, 0_n \)$, sí es grupo y es abeliano.
+ En la esfera unitaria: $\( S^1, dot , 1 \)$. 
  - Es grupo y es unitario, y da la perspectiva para generar otros muy cercanos. 
+ Las raíces $n$-ésimas
  - Tomando $n in NN$ tal que $n >= 1$ y $ Gamma_n = { z in CC : z^n = 1 }$, como recordaremos de nuestros cursos de análisis complejo, estas raíces formarán un polígono regular de $n$ lados sobre $S^1$ con una vértice situado en el $1$. Veremos después que esta figura es homeomorfa a $ZZ_n$. 

#def(none)[
  Sea $G != emptyset$. 
  + Una *operación binaria* en $G$ es una función $ *: G times G --> G \ {a, b} mapsto *\(a, b\) = a * b $
  + Supongamos que $*$ es una operacion binaria en $G$. 
    + $\( G, * \)$ se llama *semigrupo* si $*$ es acosiactiva. 
    + $\( G, * \)$ se llama *monoide* si es semigrupo y $e in G$ es neutro para $*$.
    + $\( G, * \)$ se llama *grupo* si es un monoide donde todo elemento en $G$ tiene un inverso bajo $*$.
    + $\( G, * \)$ se llama *grupo abeliano* si es un grupo y $*$ es conmutativa.
]

Un caso donde una operación no es binaria, puede ser la suma en $NN$, dado que no se cumple la cerradura. 


