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

== Categorías previas a los grupos
#def(none)[
  Sea $G != emptyset$. 
  + Una *operación binaria* en $G$ es una función $ *: G times G --> G \ {a, b} mapsto *\(a, b\) = a * b $
  + Supongamos que $*$ es una operacion binaria en $G$. 
    + $\( G, * \)$ se llama *semigrupo* si $*$ es asociativa. 
    + $\( G, * \)$ se llama *monoide* si es semigrupo y $e in G$ es neutro para $*$.
    + $\( G, * \)$ se llama *grupo* si es un monoide donde todo elemento en $G$ tiene un inverso bajo $*$.
    + $\( G, * \)$ se llama *grupo abeliano* si es un grupo y $*$ es conmutativa.
]

#ej("Contra ejemplos")[
  - Un caso donde una operación *no es binaria*, puede ser la resta en $NN$, dado que no se cumple la cerradura. 
  - *No es semigrupo*, $\(NN, \^\)$, dado que no se cumple la asociatividad.
  - *No es monoide*, $\(NN \\ {0}, +)$, cumple asociatividad la operación binaria pero no tiene neutro.
  - *No es grupo*, $\(NN, dot, 1)$, cumple asociatividad, neutro pero no tiene inversos.
]

Podemos notar también que los grupos pueden ser finitos como el caso de los ya descritos $D_n$ o por el contrario pueden ser infinitos como el caso de $\(ZZ, +, 0)$, entonces, se pueden explorar las categorías de semigrupos basándonos también en este hecho, mismo que se hará más adelante.

#lem(none)[
  + Si $\( G, *\)$ es semigrupo, $e, tilde(e) in G$, donde $e$ es neutro izquierdo y $tilde(e)$ es neutro derecho, entonces $e = tilde(e)$. 
  + Si $\( G, *, e\)$ es monoide, entonces $e in G$ es único.
  + Si $\( G, *, e\)$ es monoide y $a, tilde(a), a' in G$ donde $tilde(a)$ es inverso derecho de $a$ y $a'$ es inverso izquierdo de $a$ entonces $tilde(a) = a'$.
  + Si $\( G, *, e\)$ es monoide y $a in G$ tiene inverso, entonces su inverso es único.
]

#obs(none)[
  Sea $\(G, *, e\)$ un semigrupo.
  + Si hay más de un neutro izquierdo o más de un neutro derecho, entonces no hay neutro.
  + Si $a in G$ tiene más de un inverso izquierdo o más de un inverso derecho, entonces $a$ no tiene inverso.
  + En un grupo el neutro es úico y los inversos también.
  Si $a in G$, su único inverso en $G$ se denota por $a^(-1)$.
]

Desde ya hace tiempo hemos visto el término _campo_ cuando hablamos en matemáticas, sea en álgebra lineal para referirnos al conjunto del cual tomamos valores para nuestros vectores, o sease en análisis para poder hablar de los primero conjuntos de interés. Ahora, por fin vamos a contextualizar eso en la teoría de grupos. 

#def("Campos")[
  Un campo es la quinteada de un conjunto con dos operaciones cerradas con sus respectivos neutros e inversos. Generalmente decimos que un campo induce dos grupos, uno *aditivo* y uno *multiplicativo*.
]

Con esto, el primer campo que llega a la mente es el de toda la vida, el gran, único e inigualable $RR$, en conjunto con la suma y la multiplicación de toda la vida.

Además, como lo dijimos en el punto pasado, para tener un grupo con matrices, debemos forzar a que estas sean invertibles, y claramente no se cumplirá la conmutatividad (_no abelianos_) cuando no se toman en cuenta casos triviales simétricos. Entonces, ahora sí, presentando a los *Grupos generales lineales de orden $n$*:

$ G L_n\(RR\) := { A in M_(n times n) \(RR\): det(A) != 0} \ \(G L_n \(RR\), dot, I_n\), " es grupo" $

#prop(none)[
  Sea $\(G, *, e\)$ un grupo y sean $a, b, c in G$, entonces:
  + $a * b = e$ sii $b = a^(-1)$.
  + *Leyes de cancelación*:
    + $a * b = a * c$, entonces $b = c$
    + $b * a = c * a$, entonces $b = c$
  + $\(a * b\)^(-1) = b^(-1) * a^(-1)$.
]

== Condiciones suficientes de grupos

#prop(none)[
  Sea $\(G, *\)$ un semigrupo, si $e in G$ es tal que:
  + $forall a in G$, $e * a = a$, es decir $e$ es neutro izquierdo.
  + $forall a in G, exists b in G$ tal que $b * a = e$, es decir $b$ es inverso izquierdo.
  Entonces $\(G, *, e\)$ es grupo.
]

Entonces, solo debemos de pedirle a un semigrupo que existan los mínimos de neutro e inverso para generar el resto y tener un grupo. 

#cor(none)[
  Sea $\(G, *\)$ un semigrupo finito donde valen las leyes de la cancelación, entonces $G$ es un grupo.
]


