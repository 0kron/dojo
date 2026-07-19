#import "../../lib/templates.typ": *

= Tarea Examen 4

#def("Espacio semiestratificable")[
  Sean $X$ un espacio topológico y $"CL"(X)$ la familia de conjuntos cerrados de $X$. Decimos que un espacio es semiestratificable si $X$ es $T_1$ y existe una funcion $s : omega times tau_X --> "CL"(X)$ que cumple:
  + Para cada $U in tau_X$ se cumple que $U = union_(n in omega) s(n, U)$. 
  + Dados $U, V in tau_X$ con $U subset.eq U$ y $n in omega$, se cumple que $s(n, U) subset.eq s(n, V)$. 
]<def-4-1>

#def("Espacio estratificable")[
  Decimos que un espacio $X$ es estratificable si es $T_1$ y existe una función $S : omega times tau_X --> tau_X$ tal que cumple:
  + Para todo $U in tau_X, union_(n in omega) S(n, U) = U = union_(n in omega) "cl"_X (S(n, U))$.
  + Para todos $U, V in tau_X$ tales que $U subset.eq V$ se tiene $S (n, U) subset.eq S(n, V)$ para toda $n in omega$.
]<def-4-2>

#def("Espacio monónotamente normal")[
  Decimos que $X$ es un espacio topológico monónotamente normal si existe una función
  $ N : {(H, K) | H, K " son cerrados ajenos" } --> tau_X $
  Que cumple: 
  + $H subset.eq N(H, K) subset.eq "cl"_X(N(H, K)) subset.eq X without K$.
  + Si $(H, K), (A, B)$ son parejas de cerrados ajenos tales que $H subset.eq A and B subset.eq K$, entonces $N(H, K) subset.eq N(A, B)$. 

  A la función $N$ le diremos el operador de normalidad monótona.
]<def-4-3>

#def("Espacio completamente Husdorff")[
  Decimos que $X$ es completamente Hausdorff si para cualesquiera $x, y in X$ con $x != y$ existe $f: X --> [0. 1]$ continua tal que $f(x) = 0$ y $f(y) = 1$. 
]<def-4-4>


#ex(none)[
  Sea $X$ un espaco $T_1$. Demuestre que $X$ es normal si y solo si satisface las siguientes condiciones: 
  + Cualquier cerrado $G_delta$ en $X$ es un nulo de $X$.
  + Para cualquier cerrado $F subset.eq X$ y cualquier abierto $G subset.eq X$ con $F subset.eq G$ existe $M$ un cerrado $G_delta$ de $X$ tal que $F subset.eq M subset.eq G$.
]
#proof[
  Suponemos que $X$ es $T_1$. 
  - $-->$: Supongamos que $X$ es normal, entonces debos de cumplir dos cosas: 
    1. Cualquier cerrado $G_delta$ en $X$ es nulo de $X$. 
    2. Para cualquier cerrado $F subset.eq X$ y cualquier abierto $G subset.eq X$ con $F subset.eq G$ existe $M$ un cerrado $G_delta$ de $X$ tal que $F subset.eq M subset.eq G$

  Entonces, sea $M$ un cerrado $G_delta$ en $X$, entonces $exists (U_n) subset.eq tau_X$ tal que $M = inter_(n in omega) U_n$ se sigue que $M subset.eq U_n$, además $X without U_n$ es cerrado para cada $n in omega$, con lo que generamos dos cerrados ajenos. Como $X$ es normal, por lema de Urysohn podemos asegurar la existencia de $f_n : X --> [0, 1]$ una función continua para cada $n in omega$ tal que $f_n [M] subset.eq {0}$ y $f_n [X without U_n] subset.eq {1}$. 

  Tomemos pues $f(x) := sum_(n=1)^infinity 1/2^n f_n (x)$, donde claro está que $f_n in [0, 1]$ así como que por convergencia de la serie $0 <= sum_(n=1)^infinity 1/2^n f_n(x) <= 1$, luego $f$ converge uniformemente en $X$ y así $f$ es continua. Ahora necesitamos la doble contención. Tenemos pues que por como construímos $f$ y por como se comporta $f_n$ que claramente $M subset.eq f^(-1)[{0}]$.

  Sea $x in f^(-1)[{0}]$, entonces $f(x) = 0$, digamos que $x in.not M$ como tenemos que $M = inter_(n in omega) U_n$ entonces $exists N in omega (x in.not U_N)$, por Urysohn tenemos que $f_n[X without U_n] subset.eq {1}$ es decir $f_N (x) = 1$, luego $f(x) = sum_(n=1)^infinity 1/2^n f_n (x) >= 1/2^N f_N (x) = 1/2^N > 0$ lo que es contradictorio pues teníamos que $f(x) = 0$, entonces $x in M$ y por lo tanto $f^(-1)[{0}] subset.eq M$, finalmente $ M = f^(-1)[{0}]$. 

  Ahora, veamos la segunda condición. Sea $F subset.eq X$ un cerrado y $G subset.eq X$ un abierto tal que $F subset.eq G$, como $G$ es abierto, entonces $X without G$ es cerrado y entonces $F inter (X without G) = emptyset$. Por lema de Urysohn, existe una función continua $f:X --> [0, 1]$ tal que $f[F] subset.eq {0} and f[X without G] subset.eq {1}$. Entonces debemos de encontrar un $M$ cerrado $G_delta$ de $X$ tal que $F subset.eq M subset.eq G$. 

  Tomemos $M:=f^(-1) [[0, 1/2]]$, donde por continuidad de $f$ y cerradura de $[0, 1/2]$, tenemos la cerradura de $M$, entonces, probamos fácilmente que $F subset.eq M subset.eq G$, tomemos un $x in F$, entonces $0 = f(x) in [0, 1/2]$, así $x in f^(-1) [[0, 1/2]]$, así $F subset.eq M$. Ahora, sea $x in M$, entonces $x in f^(-1) [[0, 1/2]]$, si $x in.not G$, entonces $x in X without G$, es decir $f(x) = 1$, lo cual es una contradicción, entonces $x in G$, y finalmente $F subset.eq M subset.eq G$. 
  
  Para demostrar ahora que $M$ es $G_delta$, teneos que dar una familia de abiertos, por ejemplo, notemos que $[0, 1/2] = inter_(n=1)^infinity [0, 1/2 + 1/n)$, esto genera pues: 
  $ f^(-1)[[0, 1/2]] = f^(-1) [ inter_(n=1)^infinity [0, 1/2 + 1/n)] = inter_(n=1)^infinity f^(-1) [[0, 1/2 + 1/n ) ] $
  Y por continuidad de $f$, todas estas preimágenes son abiertos en $X$ dado que $(-1, 1/2 + 1/n) inter [0, 1] = [0, 1/2 + 1/n)$, para cualquier $n$ que nos tomemos, lo que implica que los intervalos que reciben las preimágenes son abiertos en $X$, entonces $M$ es $G_delta$. 

  - $<--$: Supongamos que cualquier cerrado $G_delta$ es nulo de $X$ y que para cualquier cerrado $F subset.eq X$ y cualquier abierto $G subset.eq X$ con $F subset.eq G$ existe $M$ un cerrado $G_delta$ de $X$ tal que $F subset.eq M subset.eq G$. 

  Debemos pues demostrar que $X$ es normal, es decir que $X$ es $T_1$ y que para cualesquiera $F, G subset.eq X$ cerrados ajenos existen $U, V in tau_X$ ajenos tales que $F subset.eq U and G subset.eq V$. Afortunadamente la hipótesis general nos garantiza lo primero. Pero demos $F, G$ cerrados ajenos, de esta manera $X without G$ es abierto y por la segunda suposición existe $M$ un cerrado $G_delta$ de $X$ tal que $F subset.eq M subset.eq X without G$, entonces $F subset.eq f^(-1) [{0}]$ y $f^(-1) [{0}] inter G = emptyset$. Sea $x in G$ entonces por la definición de $f$ se tiene que $f(x) > 0$, y esto es para cualquier elemento de $G$. 

  Así pues $M subset.eq X without G$ por lo que $G subset.eq X without M$, esto nos generó el segundo abierto que necesitábamos. Es decir $G subset.eq X without M$. Ahora, tomemos por la segunda suposición $N$ un cerrado $G_delta$ tal que $G subset.eq N subset.eq X without M$, por la primera hipótesis, tenemos que $N$ es nulo, con lo que existe una $g$ función que lo separa contra $G$. Y que como $N subset.eq X without M$ entonces $g^(-1) [{0}] inter M = emptyset$, más aún, tenemos que $F subset.eq M$, entonces $g^(-1) [{0}] inter F = emptyset$, y a la vez tenemos que $F subset.eq X without N$, es decir, generamos el segundo abierto que nos pedía la normalidad. 
]

#ex(none)[
  Sea $X$ un espacio semiestratificable. Demueste que $X$ es estratificable si y solo si es monótonamente normal. 

  _Sugerencia:_ Para la implicacion de vuelta defina $N$ el operador de normalidad monótona como: 
  $ N(H, K) = union.big_(n in omega) (S(n, X without K) without "cl"_X (S(n , X without X))) $

]
#proof[
  - $<--$: Supongamos que $X$ es semiestratificable y monótonamente normal. Como $X$ es semiestratificable existe $s: omega times tau_X --> "CL" (X)$ que cumple que $forall U in tau_X$ se cumple que $U = union_(n in omega) s(n, U)$, y dados $U, V in tau_X$ con $U subset.eq V$, y $n in omega$, se cumple que $s(n, U) subset.eq s(n, V)$. 

  Como $X$ es monótonamente normal, existe un operador $N(H, K) --> tau_X$ para cerrados ajenos que cumple

  1. $H subset.eq N(H, K) subset.eq "cl"_X (N(H, K)) subset.eq X without K$
  2. si $(H, K), (A, B)$ parejas ajenas de cerrados tales que $H subset.eq A and B subset.eq K$, entonces $N(H, K) subset.eq N(A, B)$.

  $X$ ya es $T_1$ porque $X$ es semiestratificable. $S(n, U) := N(s(n, U), X without U)$ Notemos que $s(n, U) subset.eq union_(n in omega) s(n, U) = U$. De esta manera $s(n, U)$ y $X without U$ son ajenos, por otro lado por la definicion de $s$ se cumple que $s(n, U) in "CL" (X)$ y como $U in tau_X$ entonces $X without U$ es cerrado, se les puede aplicar $N$ entonces $N(s(n, U), X without U) = S(n, U) in tau_X$. 

  Ahora, sea $U in tau_X$, por hipótesis tenemos que $s(n, U) subset.eq S(n, U) subset.eq "cl"_X (N(s(n, U), X without U)) subset.eq U$, así: $ union_(n in omega) s(n, u) subset.eq union_(n in omega) S(n, U) subset.eq union_(n in omega) "cl"_X (N(s(n, U), X without U)) subset.eq U $
  Y también sabemos $union_(n in omega) s(n, U) = U$, entonces todas las de arriba se quedan en igualdad. 

  Sean $U, V in tau_X$ tal que $U subset.eq V$ y sea $n in omega$. Por hipótesis, tenemos que $s(n, U) subset.eq s(n, V)$. Con esto, podemos notar que las parejas ${s(n, U), X without U}, {s(n, V), X without V}$ son parejas de cerrados ajenos, entonces podemos usar la monótona normalidad para decir que $N(s(n, U), X without U) subset.eq N(s(n, V), X without V)$ finalmente $ S(n, U) subset.eq S(n, V) $


  - $-->$: Supongamos que $X$ es estatificable con función $S$. Para cada par de cerrados ajenos $H, K$ definimos: $ N(H, K) = union_(n in omega) (S(n, X without K) without "cl"_X (S(n, X without H)) $

  #af[$N(H, K)$ es abierto][
    Cada conjunto $S(n, X without K)$ es abierto y le restamos un cerrado, obteniendo punes un abierto, y la unión de abiertos es abierta, así que se cumple la apertura de $N(H, K)$. 
  ]
  #af[$H subset.eq N(H, K)$][
    Sea $x in H$. Así $x in H subset.eq X without K$. Po la propiedad de estratificación, $X without K = union_n S(n, X without K)$, así existe $n$ tal que $x in S(n, X without K)$. Además $x in.not "cl"_X (S(n, X without H))$ porque $S(n, X without H) subset.eq X without H$, lo que implica que $x$ no pertenece a la clausura de un conjunto contenido en el complemento de $H$. Por tanto $x in N(H, K)$. 
  ]
  #af[$"cl"_X (N(H, K)) subset.eq X without K$][
    Sea $y in "cl"_X (N(H, K))$. Para cada $n$, el conjunto $S(n, X without K) without "cl"_X (S(n, X without H))$ está contenido en $S(n, X without K)$, luego $N(H, K) subset.eq union_n S(n, X without K) = X without K$. Si $y$ pertenece a la clausura de $N(H, K)$, entonces existe una red $(y_alpha)$ en $N(H, K)$ con $y_alpha -> y$. Cada $y_alpha$ pertenece a algún $S(n_alpha, X without K)$. Podemos elegir un $n$ fijo suficientemente grande tal que todos los $y_alpha$ estén en $S(n, X without K)$ (por la monotonía de $S$ en $n$). Entonces $y in "cl"_X (S(n, X without K)) subset.eq X without K$ (por la propiedad de estratificación). Por tanto $y in X without K$.
  ]
  
  #af[$N(H, K) subset.eq N(H', K')$ si $H subset.eq H'$ y $K' subset.eq K$][
    Supongamos $H subset.eq H'$ y $K' subset.eq K$. Entonces $X without K subset.eq X without K'$ y $X without H' subset.eq X without H$. Por la monotonía de $S$ tenemos $S(n, X without K) subset.eq S(n, X without K')$ y $S(n, X without H') subset.eq S(n, X without H)$. Luego $"cl"_X (S(n, X without H')) subset.eq "cl"_X (S(n, X without H))$. En consecuencia,
    $S(n, X without K) without "cl"_X (S(n, X without H)) subset.eq S(n, X without K') without "cl"_X (S(n, X without H'))$.
    Tomando unión sobre $n in omega$ obtenemos $N(H, K) subset.eq N(H', K')$.
  ]

  Al tomar la unión sobre $n$ obtenemos que $N(H, K) subset.eq N(H', K')$, y finalmente $X$ es monótonamente normal. 
]

#pagebreak()
#ex(none)[
   Sea $X$ un espacio topológico. Demuestre que $C(X)$ es denso en $RR^X$ si y solo si $X$ es completamente Hausforff. Recuerde que $C(X) = {f: X --> R | f " es continua"}$ y tiene la topología heredada como subespacio de $RR^X$.
]
#proof[
  
  - $-->$

  Supongamos que $C(X)$ es denso en $RR^X$. Y sean $x, y in X$ con $x != y$, así tomemos $U = pi_X^(-1) [ (-1/3, 1/3) ] inter pi^(-1) [(2/3, 4/3)]$ abierto en $RR^X$, además de que es distinto del vacío pues contiene a la característica. Como $C(X)$ es denso y $U$ es un abierto no vacío, $U inter C(X) != emptyset$.

  $ therefore exists f in C(X) inter U $
  
  Como $f in U$, entonces $|f(x)| < 1/3$ y $|f(y) - 1| < 1/3$, entonces $f(x) in (-1/3, 1/3) and f(y) in (2/3, 4/3)$. Así, sea $g_1 (z) = f(z) - f(x)$, entonces $g_1 (x) = 0$, y por otro lado $g_2 (z) = ( f(z) - f(x) )/(f(y) - f(x) )$, donde claramente $g_2 (x) = 0 and g_2 (y) = 1$. Falta ver que se quda contenido en el intervalo cerrado, entonces nos tomamos $h_1 = max{g_2 (z), 0}$ esta sigue manteniendo la continuidad y $h_1 (x) = 0 and h_1 (y) = 1$. Y finalmente trunquemos por arriba con $h (z) = min{h_1(z), 1}$ la cual también es continua y cumple con las condiciones de $x$ y $y$. 
  $ therefore exists h : X --> [0, 1] " continua con " h(x) = 0 and h(y) = 1 $
  Es decir, $X$ es completamente Hausdoff.

  - $<--$

  Suponemos que $X$ es completamente Hausdorff, falta pues demostrar la densidad de $C(X)$ en $RR^X$. Así, sea $U subset.eq RR^X$ tal que $U = inter_(i =1)^n pi_(x_i)^(-1) [U_i]$ para algunas $x_i in X and U_i in tau_(RR^X) without {0}$, así supongamos que $x_i != x_j$ si $i != j$. Y elegimos $y_i in U_i$ para toda $i$. Entonces para cada $i, j in {1, dots, n}$ con $i != j$, como $X$ es completamente Hausdorff existe $f_(i, j) : X --> RR$ continua con $f_(i, j) (x_i) = 0, f_(i, j) (x_j) = 1$. Y digamos $f_(j, i) = 1 - f_(i, j)$.

  Tomemos pues $ f = y_1 dot f_(2, 1) dot f_(3, 1) dot dots dot f_(n, 1) \
   + y_2 dot f_(1, 2) dot f_(3, 2) dot dots dot f_(n, 2) \
   + y_n dot f_(1, n) dot f_(2, n) dot dots dot f_(n-1, n) $ 

  Así, pues $ f(x_i) = y_i in U_i --> pi_(x_i) (f) in U_i <==> f in pi_(x_i)^(-1) [U_i]$ para toda $i <= n$. Es decir, $f in U and f in C(X)$, es decir la intersección es no vacía, y finalmente: $ C(X) " es denso en " RR^X $

]
