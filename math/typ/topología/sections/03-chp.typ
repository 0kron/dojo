#import "../../lib/templates.typ": *

= Tarea Examen 3

A lo largo de esta tarea, el símbolo $SS$ representará a la recta de Sorgenfrey, además serán necesarias las siguientes definiciones: 
#def(none)[
  Sean $X$ un espacio topológio y $"CL"(X)$ la familia de conjuntos cerrados en $X$. Decimos que un espacio es *semiestratificable* si, para cada $x in X$ se cumple que ${x}$ es cerrado en $X$ y existe una función $s: omega times tau_X --> "CL"(X)$ que cumple: 
  + Para cada $U in tau_x$ se cumple que $U = union_(n = 0)^infinity s(n, U)$. 
  + Dados $U, V in tau_X$ con $U subset.eq V$ y $n in omega$, se cumple qe $s(n, U) subset.eq s(n, V)$.
]

#def(none)[
  Sea $X$ un espacio topológico. Decimos que $X$ es *secuencialmente compacto* si para toda suceción $(x_n)$ es posble encontrar una subsucesión $(x_n_k)$ que converge en $X$.
]

#ex(none)[
  Sean $X$ un espacio semiestratificable y $A subset.eq X$ cerrado. Demuestre que el espacio $Y = X / A$ es semiestratificable. Recuerde que $Y$ es el espacio que se obtiene de considerar la siguiente relación de equivalencia: $x ~ y " si y solo si " x = y or x, y in A$ equipado con la topología cociente.
]
#proof[

  Suponemos que $X$ es un espacio semiestratificable, y con el objetivo de demostrar que $Y = X / A$ es semiestratificable, entonces tenemos dos cosas que demostrar: 
  + $forall y in Y$, se cumple que ${y}$ es cerrado en $Y$. 
  + $exists s_Y:omega in tau_Y --> "CL"(Y)$ tal que:
    + $forall U in tau_Y$ se cumple que $U = union_(n=0)^infinity s(n, U)$
    + $forall U, V in tau_Y$ con $U subset.eq V$ y $n in omega$ se cumple que $s(n, U) subset.eq s(n, V)$

  Así pues, sea $q:X--> Y = X/A$, recordemos que $tau_y = {U subset.eq Y | q^(-1)[U] in tau_X}$. Y sea $A subset.eq X$ un subconjunto cerrado, tenemos que $x ~ y$ si y solo si $x = y$ o $x, y in A$. 

  $ [x] = {y in X | x ~ y } $
  Aquí, si $x in.not A$ entonces $[x] = {y in X | y = x } = {x}$, y claramente $y in.not A$. Por otro lado si $x in A$, entonces $[x] = {y in X | y in A} = A$. Es decir $[x] = {x}$ y $[x] = A$, o $[x] = {x}$ y $[x] = p$, donde $p$ es el representante. Como en $[x] = {x}$ están todos los puntos que no están en $A$, podemos decir $[x] = (X without A) union {p}$. 
  $ [x] = cases(
  {x} " si " x in.not A, 
  p " si " x in A
  ) \ 
  q(x) = cases(
  x " si" x in.not A, 
  p " si " x in A
  )
  $
  Como $X$ es semiestratificable, existe $s_X : omega times tau_X --> "CL"(X)$ tal que $W = union_(n=0)^infinity s(n, W), forall W in tau_Y$ y si $W_1 subset.eq W_2$, entonces $s(n, W_1) subset.eq s(n, W_2) (W_1, W_2 in tau_X)$. 

  Entonces, sea $y in Y$, sabemos que $U subset.eq Y$ es abierto si y solo si $q^(-1)[U]$ es abierto en $X$, $tau_Y = {U subset.eq Y | q^(-1)[U] in tau_X}$. Es decir, ${y} subset.eq Y$ es cerrado si y solo si $Y without {y}$ es abierto si y solo si $q^(-1) [Y without {y}]$ es abierto en $X$, y esto pasa si y solo si $q^(-1)[Y] without q^(-1)[{y}]$ es abierto en $X$, si y solo si $q^(-1)[{y}]$ es cerrado en $X$. 

  - *Caso 1*: Suponemos $y = p$, como $p$ representa a todo $A$, entonces $q^(-1)[{y}] = q^(-1)[{p}] = A$, sabemos por hipótesis que $A$ es cerrado en $X$, así se cumple la cerradura.

  - *Caso 2*: Suponemos que $y != p$, luego $y in X without A$, entonces $q^(-1)[{y}] = {y} subset.eq X$, y como $X$ es semiestratificable, ${y}$ es cerrado en $X$, así $q^(-1)[{y}] in "CL" (X)$, por lo tanto ${y} in "CL" (Y)$. 

  Para demostrar el punto dos necesitamos pues proponer una función, $s_Y : omega times tau_Y --> "CL"(Y)$, la proponemos como $s_Y (n, U) := q[s_X (n, q^(-1)[U])]$. Sea $M = s_X (n, q^(-1)[U])$, como $X$ es semiestratificable, $M in "CL"(X)$. Tenemos que ver pues que $q[M] in "CL"(Y)$, esto es equivalente a $q^(-1)[q[M]] in "CL"(X)$. 

  - *Caso 1*: Suponemos que $M inter A = emptyset$, sea $y in M$, luego $y in.not A$, entonces $q(y) = y$, así $q(x) = q(y)$, si $x in A$ entonces $q(x) = p$ y por lo tanto $p = y$, lo que es contradictorio, entonces $x in.not A$, así $q(x) = x$, luego $x = y$, por tanto $x in q^(-1)[q[M]]$ si y solo si $x in M$, esto es $q^(-1)[q[M]] = M$, y como ya tenemos que $M in "CL"(X)$, entonces $q^(-1)[q[M]] in "CL"(X)$

  - *Caso 2*: Suponemos ahora $M inter A != emptyset$, sea $y in M inter A$, entonces $q(y) = p$, así $p in q[M]$, además para todo $x in A$ se tiene que $q(x) = p$, así $q(x) = p in q[M]$, esto es $q(x) in q[M]$, entonces se sigue que $A subset.eq q^(-1)[q[M]]$. 
  Sabemos que $M subset.eq q^(-1)[q[M]]$, luego $M union A subset.eq q^(-1)[q[M]]$. 
  Necesitamos pues la otra contención. Vamos a hacerlo por contrapuesta, supongamos $q^(-1)[q[M]] subset.eq.not M union A$, es decir $exists x in q^(-1)[q[M]]$ tal que $x in.not M union A$, como en particular $x in.not A$, entonces $q(x) = x$, pero como $x in q^(-1)[q[M]]$, entonces $exists y in M$ tal que $q(x) = q(y)$. 
    - Si $y in.not A$, entonces $q(y) = y$ y por lo anterior $x = y in M$, lo que es contradictorio.
    - Si $y in A$, entonces $q(y) = p$, luego $x = p$ lo que es contradictorio. 
  Entonces $x in.not q^(-1)[q[M]]$, por lo tanto $M union A = q^(-1)[q[M]]$, así $M$ es cerrado, $A$ es cerrado por hipótesis y por lo tanto $M union A$ es cerrado, es decir $s_Y$ está bien definita. 

  Ahora sea $U in tau_Y$. 

  #af([$union_(n=0)^infinity q[s_X (n, q^(-1)[U])] = q[union_(n=0)^infinity s_x(n, q^(-1)[U])]$])[
    - $subset.eq$: Sea $y in union_(n=0)^infinity q[s_X (n, q^(-1)[U])]$, luego $exists n in omega$ tal que $y in q[s_X (n, q^(-1)[U])]$, entonces $exists x in s_X (n, q^(-1)[U])$ tal que $q(x) = y$, además $s_X (n, q^(-1)[U]) subset.eq union_(n = 0)^infinity s_X (n, q^(-1)[U])$, luego $x in union_(n=0)^infinity s_X (n, q^(-1)[U])$, es decir $y in q[union_(n=0)^infinity s_X (n, q^(-1)[U])]$. 
    - $supset.eq$: Sea $y in q[union_(n=0)^infinity s_X (n, q^(-1)[U])]$, entonces $exists x in union_(n=0)^infinity s_X (n, q^(-1)[U])$ tal que $q(x) = y$, entonces $exists n in omega$ tal que $x in s_X (n, q^(-1)[U])$.
    $ q(x) in q[s_X (n, q^(-1)[U])] subset.eq union_(n=0)^infinity q[s_X (n, q^(-1)[U])] \ y in union_(n=0)^infinity q[s_X (n, q^(-1)[U])]$
    Es decir, $union_(n=0)^infinity q[s_X (n, q^(-1)[U])] = q[union_(n=0)^infinity s_x(n, q^(-1)[U])]$.
  ]
  #af([$q$ es suprayectiva])[
    Sea $y in Y$, luego $y in X / A$, así $y in.not A$ o $y = p$. Si $y in.not A$, entonces $x = y$ funciona, pues $q(x) = q(y) = y$, y si $y = p$, entonces cualquier $x in A$ funciona puesto que $q(x) = p$, así, $q$ es suprayectiva. 
  ]
  
  Con todo esto podemos afirmar 
  $ union_(n=0)^infinity s_Y (n, U) = union_(n = 0)^infinity q[s_X (n, q^(-1) [U])] = q[union_(n = 0)^infinity s_X (n, q^(-1)[U])] = q[q^(-1)[U]] = U $
  Es decir, $union_(n=0)^infinity s_Y (n, U) = U$.

  Y finalmente, sea $U, V in tau_Y$ tales que $U subset.eq V$, sea $n in omega$. $q^(-1)[U] subset.eq q^(-1)[V]$, claramente $q^(-1)[U], q^(-1)[V] in tau_X$, luego como $X$ es semiestratificable se cumple que $s_X (n, q^(-1)[U]) subset.eq s_x (n, q^(-1)[V])$, es decir $s_Y (n, U) subset.eq s_Y (n, V)$.
  $ therefore Y = X / A " es semiestratificable. " $
]

#pagebreak()
#ex(none)[
  Sea ${X_alpha | alpha in J}$ una familia de espacios topológicos y sea $X = Pi_(alpha in J) X_alpha$.
]
1. Tome $(x_n)_(n=1)^infinity subset X$ una sucesión en $X$, demuestre que $(x_n)_(n=1)^infinity$ converge a $x = (x_alpha) in X$ si y solo si, para todo $alpha in J$, la sucesión $(x_n(alpha))_(n=1)^infinity$ converge a $x_alpha$ en $X_alpha$. En palabras, una sucesión converge en el producto si y solo si converge entrada a entrada.
#proof[
  - $<--$: Supongamos que $forall alpha in J ((x_n (alpha))_(n=1)^infinity --> x(alpha))$. Sea $V in cal(V)(x) --> exists U in tau_X$ básico tal que $x in U subset.eq V$. Como tenemos el abierto básico, entonces $exists cal(F) subset.eq J$ finito tal que $U = inter_(i in cal(F)) pi^(-1)[U_i]$ con $U_i in tau_i, forall i in cal(F)$. 
  #af([$x(i) in U_i$])[
    $forall i in cal(F), exists N_i in NN (forall n >= N_i, x_n (i) in U_i)$, dado que $(x_n (i))_(n = 1)^infinity --> x(i)$. Sea $N:= max{N_i | i in cal(F) in NN$, entonces $forall n >= N, forall i in cal(F) (x_n (i) in U_i)$ y $forall alpha in J without cal(F)$, $x_n (alpha) in X_alpha$. Por lo tanto $x_n in inter_(i in cal(F)) pi^(-1) [U_i] = U subset.eq V$. Es decir: $ (x_n)_(n=1)^infinity --> x $

  - $-->$: Sean $alpha in J$ y $U_alpha in tau_alpha (x(alpha) in U_alpha) --> U := pi^(-1) [U_alpha]$ es un abierto básico de $X$. Así pues, $exists N in NN$ tal que $forall n >= N, x_n in U$, entonces $pi_alpha (x_n) in U_alpha$, por lo tanto: $ (x(alpha))_(n=1)^infinity --> x(alpha) $
  ]
]

2. Pruebe que el producto finito de espacios secuencialmente compactos es nuevamente un espacio secuencialmente compact.
#proof[
  Sean $X_1, dots, X_n$ espacios secuencialmente compactos y $X := Pi_(i=1)^N X_i$. Suponemos pues $J := {1, dots, N}$, Sea $(x_n)_(n=1)^infinity$ sucesión en $X$. Ahora hay que demostrar convergencia. 

  - *Base*: Si $N = 1$, $X = X_1$ y terminamos. 
  - *Hipótesis de inducción*: Suponemos que para $N, exists (x_n_k (1), dots, x_n_k (N))_(k=1)^infinity$ subsucesióñ convergente de $(x_n (1), dots, x_n (N))_(n = 1)^infinity subset.eq Pi_(i = 1)^N X_i$.
  - *Paso inductivo*: Dada una $(x_n (1), dots, x_n (N), x_n (N+1))_(n=1)^infinity$ en $Pi_(i=1)^(N+1) X_i$, así pues, existe $(x_n_k (1), dots, x_n_k (N))_(k=1)^infinity --> (x (1), dots, x (N))$ en $Pi_(i=1)^N X_i$, por la hipótesis de inducción. De la misma manera $(x_n_k (N+1))_(k=1)^infinity$ en $X_(N+1)$ tiene una subsucesión convergente $(x_n_k_l )_(l=1)^infinity --> (x(N+1)) in X_(N+1)$, así pues nos tomamos esta última en todo, y como $x_n_k$ converge toda subsucesión converge a lo mismo, es decir $ (x_n_k_l (1), dots, x_n_k_l (N+1))_(l=1)^infinity --> (x(1), dots, x(N+1)) $ 
]

3. Extienda el resultado del inciso anterior para un producto numerable.
#proof[
  Supongamos $J = NN$, sean $X_1, X_2, dots$ espacios secuencialmente compactos. Y sea $(x_n)_(n=1)^infinity$ en $Pi_(i in NN) X_i$. Por el inciso anterior tenemos que existe una subsucesión de $(x_n)$ tal que es sucesión convergente, digamos $(x_n_k)_(k=1)^infinity$. Es decir, $forall N+1 in NN, exists (x_n_N_l)_(l=1)^infinity$ subsucesión tal que converge en $Pi_(i =1)^(N+1) X_i$. Aquí por el primer inciso tenemos que cada entrada por separado converge, mientras que las primeras $N+1$ entradas también convergen en el producto. 

  Con esto, definamos $y_n = x_n_N, forall N in NN$, vamos a afirmar que $(y_n (i))_(n=1)^infinity$ converge $forall i in NN$. Sea $i in NN$, observamos que $y_i (i), y_(i+1) (i), dots = x_n_i (i), x_n_(i+1), dots = x_k_l (i), x_(k_(l +1)) (i), dots$ para enteros $k_l, k_(l+1), dots$. Además como $(x_n_(N+1) )_(n=1)^infinity$ es subsucesión de $(x_n_N)_(n=1)^infinity$ por su construcción. Si $x_N_(N+1) = x_k_s$ y $x_N_N = x_k_l$ entonces $k_s >= k_l$, y tenemos pues $x_(N+1)_(N+1) = x_k_t$ con $k_l > k_t$ pues esta última es una subsucesión de $(x_n)_(n=1)^infinity$. Por lo tanto, $(x_n_n)_(n=1)^infinity$ es subsucesión de $(x_n)_(n=1)^infinity$.

  Regresando la construcción de todas estas subsucesiones, entonces tenemos que $(x_n_i (i))_(n=1)^infinity$ converge. Por lo tanto $(x_i_i (i))_(n=1)^infinity$ converge, finalmente $(y_n (i))_(n=1)^infinity$ converge. Y como esto se cumple para toda $i in NN$, entonces en efecto $(y_n)_(n=1)^infinity$ converge.
]

#ex(none)[
  Sea ${X_alpha | alpha in J}$ una familia de espacios topológicos separables. Demuestre lo siguiente: 
]
1. $X = plus.o_(a in J) X_alpha$ es separable si y solo si, para cada $alpha in J$, $X_alpha$ es separable y $J$ numerable. _Sugerencia: Pruebe que un espacio con una cantidad no numerable de abirtos ajenos no puede ser separable_.
#proof[
  - $-->$: Sea ${X_alpha | alpha in J}$ una familia de espacios topológicos, supongamos que $X = plus.o_(alpha in J) X_alpha$ es separable, debemos pues demostrar dos cosas:
    1. $forall alpha in J$, $X_alpha$ es separable.
    2. $J$ es numerable. 
  Primero, sea $alpha in J$. Como $X = plus.o_(alpha in J)$ es separable, entonces $exists D subset.eq X$ denso numerable. Podemos tomarnos con ese denso numerable a $D_alpha = D inter X_alpha$. Donde claramente $D inter X_alpha subset.eq X_alpha$ es numerable. Y sea $U subset.eq X_alpha$ un conjunto abierto, como $X$ es suma topológica, se cumple que $X_alpha$ es abierto en $X$, luego $U$ también es abierto en $X$ y como $D$ es denso entonces $U inter D != emptyset$. Más aún, $U inter D = (U inter X_alpha) inter D = U inter (X_alpha inter D) = U inter D_alpha != emptyset$, así, $"cl"_X_alpha (D_alpha) = X_alpha$, esto implic ala densidad de $D_alpha$ en $X_alpha$, es decir $X_alpha$ es separable. 

  Y para el segundo punto, dado que estamos bajo la hipótesis de que $X = plus.o_(alpha in J) X_alpha$ es separable, entonces $exists D subset.eq X$ un conjunto denso numerable. Sabemos que $forall alpha in J$, $X_alpha in tau_X$ y que $X_alpha inter X_beta = emptyset$ si $alpha != beta, (alpha, beta in J)$. Como $D$ es denso en $X$, $forall alpha in J, X_alpha inter D != emptyset$, entonces $forall alpha in J$, podemos tomar $p_alpha in X_alpha inter D$ y por la observación de $X_alpha, X_beta$, entonces el conjunto de las $p_alpha$ será distinto dos a dos.

  Definimos entonces la función $m : J --> D$ tal que $alpha mapsto p_alpha$, $m$ es inyectiva por la observación pasada, con esto pues, tenemos que $J$ es numerable.

  - $<--$: Suponemos que $forall alpha in J$, $X_alpha$ es separable y $J$ numerable. Entonces $forall alpha in J, exists D_alpha$ denso numerable tal que $D_alpha subset.eq X_alpha$. Vamos a ver que $D:= union(alpha in J) D_alpha$ funciona. 

  Como $J$ es numerable y cada $D_alpha$ es denso numerable, entonces $D$ es union numerable de numerables, es decir es numerable. Por otro lado, como $forall alpha in J$, se cumple que $D_alpha subset.eq X_alpha subset.eq X$, entonces $U_(alpha in J) D_alpha subset.eq X$, es decir, $D subset.eq X$. 

  Falta demostrar que $D$ es denso en $X$. Sea $U subset.eq X$ abierto no vacío, y tomemos un $x in U$, como $X = plus.o_(alpha in J) X_alpha$, entonces $exists alpha in J$ tal que $x in X_alpha$, luego $x in U inter X_alpha$, entonces $U inter X_alpha != emptyset$. Como tenemos apertura de $U$ en $X$, entonces $U inter X_alpha$ es abierto en $X_alpha$. Sabemos de antemano que $D_alpha$ es denso en $X_alpha$, luego $(U inter X_alpha) inter D_alpha != emptyset$. Luego por como definimos a $D$, entonces $(U inter X_alpha) inter D_alpha subset.eq U inter D != emptyset$, es decir, $D subset.eq X$ es denso numerable, y por lo tanto $X = plus.o_(alpha in J) X_alpha$ es separable.
]
#pagebreak()
2. Muestre que $ SS tilde(=) plus.o.big_(n in NN) [0, 1)_SS $ donde $[0, 1)_SS$ es el intervalo considerado como subespadio de $SS$.
#proof[

  Necesitamos encontrar una función continua, biyectiva y con inversa continua entre $SS$ y $plus.o_(n in NN) [0, 1)_SS$. Entonces, como conjunto para todo $x in RR = SS$, $exists k in ZZ (k <= x < k + 1, x in [k, k+1))$. Por lo visto en el primer parcial, tenemos que una base de $SS$ está dada por ${(a, b) | a, b in RR, a<b}$. Si tenemos $k != m$, entonces $[k, k+1) inter [m, m+1) = emptyset$, y por como está definida la base, $[k, k+1) in tau_SS$. 
  #af([$[0, 1)_SS tilde.equiv [k, k+1)_SS$])[
    $g(x) := x + k$ funciona, y se cumple claramente biyectividad, donde también es claro que $g^(-1) (y) = y - k$. Lo que quedaría ser ver la continuidad, es decir, $forall U in tau_([k, k+1)_SS)$ se cumple que $g^(-1)[U] in tau_([0, 1)_SS)$. Entonces tomemos $U in tau_([k, k+1)_SS)$, entonces existe $[a, b)$ de la base de $SS$ tal que $U = [a, b) inter [k, k+1)$, 
    $ g^(-1) [U] = g^(-1)[[a, b) inter [k, k+1)] = g^(-1)[[a, b)] inter g^(-1)[[k, k+1)] = [a - k, b-k) inter [0, 1) $
    Donde este último es abierto de $[0, 1)_SS$ porque es un báßico de $SS$ intersectado con $[0, 1)$. $ therefore g " es continua." $
    Y de manera análoga $g^(-1)$ es continua, con lo que tenemos pues $ [k, k+1)_SS tilde.equiv [0, 1)_SS $
  ]
  Retomando, tenemos que $SS = union_(k in ZZ) [k, k+1)$ y como todos los intervalos de la unión son abiertos y ajenos, entonces $SS = union_(k in ZZ) [k, k+1) tilde.equiv plus.o_(k in ZZ) [k, k+1)_SS$.

  Tenemos de la afirmación que $forall k in ZZ, [k, k+1)_SS tilde.equiv [0, 1)_SS$, luego $plus.o_(k in ZZ) [0, 1)_SS tilde.equiv plus.o_(k in NN)[0, 1)_SS$, es decir $SS tilde.equiv plus.o_(k in NN)[0, 1)_SS$.
]

3. ¿Será cierto lo siguiente? $ SS tilde(=) plus.o.big_(x in RR) [0, 1)_SS $
#proof[

  En el primer inciso probamos que $X = plus.o_(x in J) X_alpha$ es separable si y solo si $forall alpha in J$, $X_alpha$ es separable y $J$ es numerable. En este caso $[0, 1)_SS$ es separable porque $QQ inter [0, 1)$ es denso numerable que se queda contenido en $[0, 1)_SS$, por otro lado $RR$ no es numerable, y eso implica que $plus.o_(x in RR)[0, 1)_SS$ no es separable. Pero $SS$ si es separable, luego no pueden ser homeomorfos porque la separabilidad es una propiedad topológica. 
]

