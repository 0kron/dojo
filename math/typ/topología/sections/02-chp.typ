#import "../../lib/templates.typ": *

= Tarea Examen 2

#ex(none)[
  Sea $X$ un spacio topológico. Considere las siguientes tres propiedades topológicas: 
  + $X$ tiene la propiedad $P_1$ si para cada $A subset.eq X$ y cualquier $x in "cl"_X (A)$ existe $(x_n) subset.eq A$ tal que $x_n --> x$.
  + $X$ tiene la propiedad $P_2$ si para cualquier $A subset.eq X$ se cumple que $ "cl"_X (A) = {p in X | exists (x_n) subset.eq A " tal que " (x_n --> p)} $
  + $X$ tiene la propiedad $P_3$ si para todo $A subset.eq X$, siempre que $C$ es un subconjunto numerable de $X$ se cumple que $A inter C$ es cerrado en $C$, entonces $A$ es cerrado en $X$.
   
  Demuestre cada uno de los siguientes incisos: 
  + Si $X$ es primero numerable entonces $X$ tiene $P_1$.
]

#proof[

  Tomamos pues que $X$ es primero numerable, es decir, $forall x in X$, $exists cal(B)(x)$ una base local numerable en $x$, luego $ cal(B)(x)= {U_n in tau_X | n in NN } $ 
  Como es base local cumple dos cosas: 
  + $forall U_n in cal(B)(x), x in U_n$. 
  + $forall V in tau_X$, si $x in V$, entonces existe $n in NN$ tal que $U_n subset.eq V$.

  #af([$x$ tiene una Base Local Anidada])[
    Como tenemos por hipótesis que $X$ es primero numerable, nos podemos tomar $cal(B)(x)$ una base local numerable para $x$, y ahora tomémonos un nuevo conjunto: 
    $ { U_n = inter_(i=1)^n B_i | n in NN } subset.eq cal(V)(x) $
    Observamos además que con $V in cal(V)(x)$, $exists B_n in cal(B)(x)$ tal que $U_n subset.eq B_n subset.eq V$, por lo tanto ${U_n | n in NN}$ es base local numerable que cumple: $U_(n+1) subset.eq U_n, forall n in NN$. *Terminamos la afirmación.*
  ]

  Ahora, tomemos $A subset.eq X$ y tomemos $x in "cl"_X(A)$ cualquiera. Por hipótesis, existe una base local numerable para $x$ y por la afirmación, podemos generar una base local anidada para $x$, denominémosla como ${U_n | n in NN}$. 

  Por equivalencia de la cerradura, sabemos que para todos los puntos $p in "cl"_X(A)$ se cumplen que $forall U in tau_X (x in U)$ entonces $U inter A != emptyset$, en particular pues, $forall n in NN, U_n inter A != emptyset$. Tommos pues $x_n in U_n inter A$, esto evidencia que $(x_n) subset.eq A$. 

  Por último, sea $U in tau_X$ tal que $x in U$, por propiedad 2 de las bases locales, entonces $exists N in NN (U_N subset.eq U)$, y como generamos la base local anidada (decreciente), entonces podemos afirmar que $forall n >= N (U_n subset.eq U_N subset.eq U)$, o lo que es lo mismo por la construcción de la sucesión, $forall n >= N (x_n in U)$. Esto último es equivalente a que $x_n --> x$.

  $ therefore X " tiene " P_1 $
]

2. Si $X$ tiene $P_1$ entonces $X$ tiene $P_2$. 
#proof[

  Supongamos que $X$ tiene $P_1$, y sea $A subset.eq X$. Llamemos $B := {x in X | exists (x_n) subset.eq A (x_n --> p)}$. Como $X$ tiene $P_1$ es claro que $"cl"_X(A) subset.eq B$, dado que $forall x in "cl"_X(A), exists (x_n) subset.eq A (x_n --> x)$ Queda demostrar pues $B subset.eq "cl"_X(A)$. 
  Sea $x in B, U in tau_X(x in U)$. Como $x in B$, $exists (x_n) subset.eq A (x_n --> x)$, es decir, $exists N in NN (forall n >= N (x_n in U))$, por lo tanto, $x_N in A and x_N in U$, es decir, $A inter U != emptyset$. $ therefore x in "cl"_X(A) $ 
  
  Es decir, $B = "cl"_X(A)$, o lo que es lo mismo $X$ tiene $P_2$.
]

3. Si $X$ tiene $P_2$ entonces $X$ tiene $P_3$. 
#proof[

  Suponemos que $X$ tiene $P_2$, así, sea $A subset.eq X$ tal que cualquier $C subset.eq X$ numerable, tiene que $A inter C$ es cerrado en $C$.

  Ya sabemos que $A subset.eq "cl"_X(A)$, así queda pues queda demostrar una sola contención para la igualdad.

  Sea $x in "cl"(A)$, entonces, por $P_2$, $exists (x_n) subset.eq A$ tal que $x_n --> x$. Consideremos pues al conjunto numerable $C := {x_n | n in NN} union {x}$, claramente se cumple que es numerable, y $A inter C$ es cerrado en $C$, entonces $"cl"_C(A inter C) = A inter C$. 

  Ahora, como $x_n --> x$, y $(x_n) subset.eq A inter C$, entonces por propiedad de la cerradura tenemos que $x in "cl"_C (A inter C) = A inter C$, es decir, $x in A$, terminando: $ "cl"(A) subset.eq A, therefore A = "cl"(A)$
  Es decir, $A$ es cerrado en $X$. 
]

4. Si $X$ es no numerable, caracterice las sucesiones convergentes en $X$ cuando es equipado con la topología co-numerable.
#proof[

  Sea $X$ no numerable con $tau_"CON"$. 
  #rmk[ 
    En la topología conumerable se cumple que $tau_"CON" = { A subset.eq X | X without A " es numerable " } union emptyset$. 
  ] 
  #af([$x_n --> x <==> exists N in NN (forall n >= N (x_n = x))$])[
    - $<==$: Suponemos $exists N (forall n >= N (x_n = x))$, así para todo $V in cal(V)(x)$, se cumple que $forall n >= N (x_n in V)$, es decir, la sucesión $x_n --> x$. 
    - $==>$: Suponemos que $(x_n) subset.eq X$ tal que $x_n --> x$, y podemos definir pues $A := {x_n | n in NN and x_n != x}$, donde claramente $A$ es numerable, y $x in.not A$, luego $X without A$ es abierto en la topología conumerable, y por convergencia de la sucesión: 
    $ exists N in NN (forall n >= N, x_n in X without A ), therefore x_n = x $
    De ahí que $(x_n)$ sea semiconstante. 
  ]
]
#pagebreak()
5. Exhiba un ejemplo de un espacio que tenga la propiedad $P_1$ pero no sea primero numerable. 

#proof[

  Vamos a ver que el espacio $(RR, tau_"COF")$ funciona.
    Tenemos dos cosas que demostrar: 
    + $forall A subset.eq RR and forall x in "cl"_RR (A), exists (x_n) subset.eq A (x_n --> x)$.
    + $(RR, tau_"COF")$ no es primero numerable.
    #rmk[
      Recordemos que $tau_"COF" = {A subset.eq RR | RR without A " es finito"} union {emptyset}$. 
    ]
    #af([$(RR, tau_"COF")$ no es primero numerable])[
      Suponemos que $(RR, tau_"COF")$ es primero numerable, y sea $x in X$, así existe $cal(B)(x)$ base local numerable. 

      Que recordemos, como es base local cumple dos cosas: 
      + $forall U_n in cal(B)(x), x in U_n$. 
      + $forall V in tau_X$, si $x in V$, entonces existe $n in NN$ tal que $U_n subset.eq V$.

      Así, sea $U_n in tau_"COF"$, así, existe $A_n subset.eq RR$ finito tal que $U_n = RR without A_n$, y nos tomamos la unión numerable de numerables $A = union_(n in NN) A_n$. Como sabemos que $RR$ no es numerable, entonces $exists y in RR without A$ tal que $y != x$, con esto, podemos tomar $x in RR without {y} in tau_"COF"$, y por la segunda proiedad de las bases numerables, entonces $exists m in NN (U_m subset.eq U)$, así con $A_m = RR without U_m$: 
      $ RR without A_m subset.eq RR without {y} ==> {y} subset.eq A_m ==> y in A $
      Lo cual es una contradiccion, con lo que *$(RR, tau_"COF")$ no es primero numerable*.
    ]
    #af([$forall A subset.eq RR and forall x in "cl"_RR (A), exists (x_n) subset.eq A (x_n --> x)$])[

      - *Caso 1* Suponemos que $A$ es finito:
         Entonces $A$ es cerrado, es decir $"cl"_RR (A) = A$, entonces, con tomarnos cualquier $x in A$ podemos definir $x_n = x, forall n in NN$. 

      - *Caso 2* Suponemos que $A$ es infinito:
        Notemos ahora que necesitamos un punto en $"cl"_RR (A)$, pero dado que necesitamos un conjunto cerrado que cumpla $A subset.eq "cl"_RR (A)$, entonces tenemos que $"cl"_RR (A) = RR$, entonces tenemos primero el caso trivial en que $x in "cl"_RR (A)$ cumpla que $x in A$. 
        
        Entonces podemos tomar la sucesión constante $x$ y terminamos, el caso interesante es el opuesto, cuando $x in.not A$. Nos tomamos pues $(x_n) subset A$ tales que todos los elementos de la sucesión sean distintos dos a dos. Ahora, sea $U in tau_"COF" (x in U)$, entonces $exists F$ finito tal que $x in U = RR without F$. Como $F$ es finito, contiene a una cantidad finita de valores de la sucesión $(x_n)$, y tomemos $N in NN (x_N in.not F)$ al índice más pequeño que no está en $F$, entonces $forall n >= N (x_n in.not F)$, o lo que es lo mismo $ forall n>= N (x_n in U) $

        Es decir, $x_n --> x$, dado que nos agarramos un $U$ cualquiera.
        
      Con esto terminamos el contra ejemplo, tenemos un espacio que no es primero numerable por la primera afirmación, y que a la vez cumple la propiedad $P_1$ por la segunda afirmación.
    ]
]
#pagebreak()
#ex(none)[
  Sea $beta_omega = {cal(U) subset.eq PP(omega) | cal(U) " es ultrafiltro " }$. Dado $A subset.eq omega$, definimos: $ cal(S)(A) = {cal(U) in beta_omega | A in cal(U)} $
  y además
  $ cal(B) = {cal(S)(A) | A subset.eq omega } $
  Sean $A, B subset.eq omega$, demuestre lo siguiente: 
]
1. $cal(S)(emptyset) = emptyset and cal(S)(omega) = beta_omega$.
#proof[
  + $S(emptyset)$ por definición es $S(emptyset) = {cal(U) in beta_omega | emptyset in cal(U)}$, como se cumple que toda $cal(U)$ es ultrafiltro, entonces $exists.not cal(U)$ tal que $emptyset in cal(U)$. Es decir, $S(emptyset) = emptyset$. 

  + Para demostrar $cal(S)(omega) = beta_omega$ haremos doble contención:
    + $subset.eq$: Claramente por definición $cal(S)(omega) subset.eq beta_omega$. 
    + $supset.eq$: Sea $cal(U) in beta_omega$, es decir $cal(U)$ es ultrafiltro, entonces $cal(U) != emptyset$, entonces podemos tomar $W in cal(U) subset.eq PP(omega)$, es decir, $W in PP(omega)$. De manera simultánea, como $W subset.eq omega$, entonces $omega in cal(U)$ por definición de filtro. Por lo tanto, $beta_omega subset.eq cal(S)(omega)$. 

  $ therefore cal(S)(omega) = beta_omega $
]

2. $cal(S)(A inter B) = cal(S)(A) inter cal(S)(B)$.
#proof[
  + $subset.eq$: Sea $cal(U) in cal(S)(A inter B)$, luego, $A inter B in cal(U)$, dado que es un ultrafiltro, tenemos que como $A inter B subset.eq A$, entonces $A in cal(U)$, es decir $cal(U) in cal(S)(A)$, análogamente, $cal(U) in cal(S)(B)$. Así $cal(U) in cal(S) inter cal(S)(B)$. 

  + $supset.eq$: Sea $cal(U) in cal(S)(A) inter cal(S)(B)$, entonces $A, B in cal(U)$, por sel filtro entonces $A inter B in cal(U)$, por lo tanto $cal(U) in cal(S)(A inter B)$. Es decir, $cal(S)(A) inter cal(S)(B) subset.eq cal(S)(A inter B)$. 

  $ therefore cal(S)(A inter B) = cal(S)(A) inter cal(S)(B) $
]

3. $cal(S)(A union B) = cal(S)(A) union cal(S)(B)$.
#proof[
  + $subset.eq$: Sea $cal(U) in cal(S)(A union B)$, luego $cal(U) in beta_omega and A union B in cal(U)$. Sabemos que $cal(U)$ es ultrafiltro si y solo si $cal(U)$ es familia centrada (con la PIF) y $forall A subset.eq X (A in cal(U) xor X without A in cal(U))$. Supongamos pues que $A union B in.not cal(U)$, es decir $omega without A in cal(U) and omega without B in cal(U)$, entonces como es filtro $(omega without A) inter (omega without B) = omega without (A union B) in cal(U)$, lo que es una contradicción dado que $A union B in cal(U)$. Entonces $A, B in cal(U)$, equivalentemente $cal(S)(A union B) subset.eq cal(S)(A) union cal(S)(B)$. 

  + $supset.eq$: Sea $cal(U) in cal(S)(A) union cal(S)(B)$, sin perder generalidad $cal(U) in cal(S)(A)$, entonces como $A subset.eq A union B$, $A union B in cal(U)$, entonces $cal(U) in cal(S)(A union B)$. Análogamente el caso de $cal(U) in cal(S)(B)$. 

  $ therefore cal(S)(A union B) = cal(S)(A) union cal(S)(B) $
]
#pagebreak()
4. $cal(S)(A) subset.eq beta_omega without cal(S)(B) " si y sólo si " A subset.eq omega without B$.
#proof[
  + $-->$: Por contrapuesta, suponemos que $x in A inter B$, y tomemos el conjunto $M = PP(omega) without {emptyset}$, sabemos que es un filtro, pero si tomamos $cal(F)$ un filtro, entonces $cal(F) subset.eq PP(omega) without {emptyset}$, así $M$ es ultrafiltro. Además $A inter B in M$, es decir $M in cal(S)(A inter B) = cal(S) inter cal(B)$ por el segundo inciso. Para terminar, se cumple que $cal(S) subset.eq.not beta_omega without cal(S)(B)$. 

  + $<--$: Suponemos que $A subset.eq omega without B$, tenemos que $cal(S)(A) subset.eq beta_omega$. $cal(S)(A) inter cal(S)(B) = cal(S)(A inter B) = cal(S)(emptyset) = emptyset$ por los incisos 1 y 3. Así $cal(S)(A) subset.eq beta_omega without cal(S)(B)$.
]

5. Demuestre que $cal(B)$ es base para alguna topología en $beta_omega$ en la que además cada elemento es abierto y cerrado. 
#proof[

  $cal(B) = {cal(S)(A) | A subset.eq omega}$, necesitamos así: 
  
  + $union cal(B) = beta_omega$
  + $forall B_1, B_2 in cal(B)$ y cualquier $cal(U) in B_1 inter B_2$, exista $B_3 in cal(B) (cal(U) in B_3 subset.eq B_1 inter B_2$. 

  #af([$union cal(B) = beta_omega$])[
    $beta_omega = cal(S)(omega) in cal(B)$, y a la vez, $cal(B) subset.eq PP(beta_omega)$ entonces $union B = beta_omega$.
  ]
  #af([$forall B_1, B_2 in cal(B)$ y cualquier $cal(U) in B_1 inter B_2$, exista $B_3 in cal(B) (cal(U) in B_3 subset.eq B_1 inter B_2$])[
    Sea $cal(S)(A), cal(S)(B) in cal(B)$, tal que $cal(U) in cal(S)(A) inter cal(S)(B) = cal(S)(A inter B)$, entonces notamos que $cal(U) in cal(S)(A inter B) in cal(B)$. Y de manera simultánea por la igualdad, $cal(S)(A inter B) subset.eq cal(S)(A) inter cal(S)(B)$. 
  ]

  Con estas dos afirmaciones, entonces se cumple que *$cal(B)$ es base*. Entonces esta genera la topología $tau_beta_omega = { A subset.eq beta_omega | exists cal(W) subset.eq cal(B) (A = union cal(W))}$. O equivalentemente $ tau_beta_omega = { A subset.eq beta_omega | forall cal(U) in A, exists M in cal(B) (cal(S)(M) subset.eq A)} $ 

  Ahora necesitamos demostrar que todos los elementos de la base son abiertos y cerrados. 
  
  Rápidamente notamos que $forall cal(S)(B) in cal(B) ( union {cal(S)(B) = cal(S)(B) in tau_beta )$, es decir, $cal(B) subset.eq tau_beta$, todos los elementos de $cal(B)$ son abiertos. 

  Ahora, debemos de demostrar que $beta_omega without cal(S)(B) in tau_beta$, para cualquier $cal(S)(B)$. Sea $cal(U) in beta_omega without cal(S)(B)$, esto es si y solo si $cal(U) in.not cal(S)(B) <--> B in.not cal(U)$, que claramente es si y solo si $omega without B in cal(U)$, con esto,  necesitaremos brevemente una afirmación. 

  #af([$cal(S)(omega without B) = beta_omega without cal(S)(B)$])[
    Si $B = omega$, entonces $cal(S)(omega without B) = cal(S)(emptyset) = emptyset = beta_omega without beta_omega = beta_omega without cal(S)(B)$. Así, nos podemos fijar ahora en el caso donde $B != omega$. Por el inciso anterior tenemos que $cal(S)(omega without B) subset.eq beta_omega without cal(S)(B)$., faltaría la otra contención. 

    Sea $cal(U) in beta_omega without cal(S)(B)$, entonces $cal(U)$ es ultrafiltro y $B in.not cal(U)$. Volvemos a usar el argumento de que se es ultrafiltro si y solo si tiene la PIF y $forall D subset.eq omega (D in cal(U) or omega without D in cal(U))$, por lo tanto $omega without B in cal(U)$, por lo tanto $cal(U) in cal(S)(omega)$. Es decir, se cumple la igualdad de la afirmación por doble contención.
  ]
  
  Para terminar entones, teníamos que $omega without B in cal(U)$, y $beta_omega without cal(S)(B) = cal(S)(omega without B)$, y por la apertura de los elementos de la base, entonces se cumple que $cal(S)(omega without A)$ es abierto. Así, $cal(S)(B)$ es cerrado. 

  $ therefore forall W in cal(B), W " es abierto y cerrado." $
]
#pagebreak()
6. Sea $cal(U)_n = {A subset.eq omega | n in A}$. Demuestre que $cal(U)_n in beta_omega$ y que $cal(U)_n --> n$. Más aún, si $cal(U) in beta_omega$ cumple que $cal(U) --> n$, entonces $cal(U) = cal(U)_n$, como corrección además tenemos que $omega$ tiene $tau_"disc"$, la topología discreta.
#proof[

  Primero debemos demostrar que $cal(U)_n$ es ultrafiltro. Entonces, primero, tenemos que ${n} in cal(U)_n != emptyset$ y si $A in cal(U)_n --> n in A != emptyset$, es decir $emptyset in.not cal(U)_n$. Además, sean $A, B in cal(U)_n --> n in A and n in B --> n in A inter B subset.eq omega --> A inter B in cal(U)$. Y finalmente sean $A in cal(U)_n and B subset.eq omega (A subset.eq B)$, como $n in A, n in B --> B in cal(U)_n$. Con esto, vemos que *$cal(U)_n$ es un filtro*.

  Además, sea $cal(F)$ un filtro tal que $cal(U)_n subset.eq cal(F)$, si $exists V in cal(F) without cal(U)_n --> n in.not V$. Pero ${n} in cal(U)_n subset.eq cal(F) --> {n} inter V = emptyset in cal(F)$, lo que es una contradicción dado que $cal(F)$ es un filtro, entonces $cal(U)_n = cal(F)$. Es decir, $cal(U)_n$ es un ultrafiltro ($cal(U)_n in beta_omega$). 

  Debemos de demostrar ahora $cal(U)_n --> n$. Sea $V in cal(V)(n) --> exists W in tau_omega (x in W subset.eq V)$, es decir $x in V$, por lo tanto $V in cal(U)_n$.

  Finalmente, si $cal(U) in beta_omega$ cumple que $cal(U) --> n$, entonces $cal(V)(n) subset.eq cal(U)$. Por hipótesis, como $omega$ tiene $tau_"disc"$, entonces ${n} in cal(V)(n)$, es decir ${n} in cal(U)$, y suponemos que $exists D subset.eq cal(U) without cal(U)_n$, entonces $n in.not D$. Así, como ${n}, D in cal(U)$, entonces ${n} inter D = emptyset in cal(U)$, lo que es una contradicción por ser filtro. Finalmente $cal(U) subset.eq cal(U)_n$, donde $cal(U)$ es un filtro y $cal(U)_n$ también sabemos que es ultrafiltro, por lo tanto $cal(U) = cal(U)_n$.
]

7. Demuestre que $e:omega --> beta_omega$ dada por $e(n) = cal(U)_n$ es un encaje cuya imagen es densa en $beta_omega$. 
#proof[

  Para demostrar que es un encaje necesitamos dos cosas: 
  + $e:omega --> e[omega]$ es un homeomorfismo.
  + $"cl"_beta_omega (e[omega]) = beta_omega$.
  #af([$e:omega --> e[omega]$ es un homeomorfismo])[
    Sabemos que una función es homeomorfismo, si y solo si es continua, biyectiva y abierta. Tenemos que claramente $e$ es suprayectiva, asi que solo necesitamos inyectividad.

    Sean $m, n in omega$ tales que $e(m) = e(n)$, entonces $cal(U)_m = cal(U)_n$, pero además ${m} in cal(U)_m = cal(U)_n$, con lo que $n in {m}$, es decir $n = m$. Así pues, tenemos que $e$ es biyectiva. Ahora, para pa continuidad y apertura. 

    $e$ es continua si y solo si, $forall U subset.eq e[omega]$ abierto, $e^(-1) [U]$ es abierto en $omega$. Y es abierta si y solo si $forall A in omega$ abierto, $e[A]$ es abierto en $e[omega]$. Y además sabemos que $omega$ es discreto, es decir todos los subconjuntos de $omega$ son abiertos, de esta manera $A subset.eq omega$. Sabemos de antemano que $e[A]$ es abierto en $e[omega]$ si y solo si $exists V$ abierto en $beta_omega$ tal que $e[A] = V inter e[omega]$, podemos pues tomarnos $V := cal(S)(A)$. 
    
    - $subset.eq$: Sea $A subset.eq omega$, si $x in e[A]$, entonces existe $n in A$ tal que $x = e(n)$, como $n in A$, entonces $A in cal(U)_n$, es decir $cal(U)_n in cal(S)(A)$, entonces $x in cal(S)(A)$, finalmente, $x in e[omega] inter cal(S)(A)$.

    - $supset.eq$: Sea $x in e[omega] inter cal(S)(A)$, entonces $exists n in omega (x = e(n))$, lo que entonces da $cal(U)_n = e(n) = x in cal(S)(A)$, es decir $cal(U)_n in cal(S)(A)$, entonces $A in cal(U)_n --> n in A$, finalmente $x = e(n) in e[A]$, entonces se cumple la contención de regreso.

    $ therefore e:omega --> e[omega] " es homeomorfismo." $
  ]
  Y para la segunda equivalencia, tomemos $A subset.eq omega$ tal que $A != emptyset$ y sea $n in A$, entonces $A in cal(U)_n in cal(S)(A)$, además $cal(U)_n = e(n)$, entonces $cal(U)_n in e[omega] inter S(A)$, esta es equivalente a las siguientes, $forall B in cal(B) without {emptyset}$ se cumple que $e[omega] inter B != emptyset$, equivalente a $forall U in tau_beta_omega without {emptyset}$ se cumple que $e[omega] inter U != emptyset$, y esto es equivalente a $"cl"_beta_omega (e[omega]) = beta_omega$. Así, $e$ es encaje. 

  #af([$e[omega]$ es denso en $beta_omega$])[
    Sea $cal(S)(A) subset.eq cal(B) without {emptyset}$, tenemos que demostrar que $cal(S)(A) inter {cal(U)_n | n in omega} != emptyset$. Como $cal(S)(A) != emptyset, exists n in A$.

    - *Caso 1*: Si $A = {n}$, entonces podemos ver que $cal(U)_m in cal(S)({n})$, dado que $cal(U)_n in beta_omega$ y más aún $cal(V)(n) subset.eq cal(U)_n$, además porque estamos en una topología discreta, entonces ${n} in cal(V)(n)$, entonces ${n} in cal(U)_n$, así $cal(U)_n in cal(S)(A) inter {cal(U)_m | m in omega}$. 

    - *Caso 2*: $|A| >= 2$, y sea $n in A, --> | A without {n} | > 0$, por el inciso _c_ de este ejercicio, entonces $cal(S)(A) = cal(S)({n}) union cal(S)(A without {n})$. Entonces $cal(U)_n in cal(S)({n}) inter {cal(U)_m | m in omega} subset.eq (cal(S)({n}) union cal(S)(A without {n})) inter {cal(U)_m | m in omega} = cal(S)(A) inter {cal(U)_m | m in omega}$. 
  ]
  $ therefore e[omega] " es denso en " beta_omega $
]

#ex(none)[
  Considere los espacios $X = [0, 1]$ equipado con la topología euclidiana y $Y = [0, 1] times {0, 1}$ equipado con la topología inducida por el orden lexicográfico. ¿$X$ es homeomorfo a $Y$? Demuestre su respuesta.
]
#proof[

  Sabemos que si el hecho de que propiedad $p$ sea topológica, significa que si tenemos que $X$ tiene a $p$, y $X tilde.equiv Y$, entonces $Y$ tiene la propiedad $p$. 

  Así pues, vamos a probar por contradicción que $X$ no es homeomorfo a $Y$, y utilizarmos la desconexidad. 

  Entonces primero debemos demostrar que la disconexidad es una propiedad topolóica. Sea $f:A --> B$ un homeomorfismo, y suponemos que $A$ es disconexo. Como $A$ es disconexo, entonces $exists U, V in tau_A$ tales que $U != emptyset != V$, $V union U = X$ y $U inter V = emptyset$, así, tomemos a $U_0 = f[U], V_0 = f[V]$ subconjuntos de $B$.

  Como $f$ es homeomorfismo $U_0 != emptyset != V_0$, claramente por suprayectividad $B = U_0 union V_0$, y como $U inter V = emptyset --> U_0 inter V_0 = emptyset$. Es decir, $B$ es disconexo.

  Con el ejercicio 21 de la tarea correspondiente, vimos que si $X$ es conexto, entonces los únicos aberrados son $emptyset$ y $X$, así por contrapuesta, si $exists A != emptyset$, tal que $A subset X$ aberrado, entonces $X$ es disconexo. 

  Notemos que $X = [0, 1]$ es conexo cuando lo consideramos con la topología euclidiana. Basta con afirmar pues que $Y = [0, 1] times {0, 1}$ es disconexo. Para lo que nos tomamos $(0, 0) in Y$ y vamos a ver que este es aberrado.

  Observemos que ${(a, b) in Y | (a, b) < (0, 1)} = {(0, 0)}$, por el orden lexicográfico, y por lo tanto $(<--, (0, 1)) = {(0, 0)}$, es decir ${(0, 0)}$ es abierto. 

  Para la cerradura $Y without {(0, 0)} = {(a, b) in Y | (0, 0) < (a, b)}$ y esto significa que todos los puntos $(a, b)$ cumplen que $a>0 or (x = 0, b > 0)$, así $Y without {(0, 0)} = ((0, 0), -->)$, es decir, $Y without {(0, 0)}$ es abierto, entonces ${(0, 0)}$ es un subconjunto claramente estricto de $Y$ que es aberrado, y por lo tanto $Y$ es disconexo. 

  Finalmente, por la equivalencia del principio: $ X tilde.equiv.not Y $

]
