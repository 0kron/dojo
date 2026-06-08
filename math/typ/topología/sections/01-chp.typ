#import "../../lib/templates.typ": *

= Tarea Examen 1
#thm(none)[
  Sea $A subset.eq RR$ cerrado y denso en sí mismo. Entonces $A$ no es numerable.
]<thm1>
#ex(none)[
  Sea $X$ un espacio topológico tal que $forall x in X$ se cumple que ${x}$ es cerrado en $X$. Definimos $ cal(F)\( X \) = { F subset.eq X | F " es finito y no vacío" } $
  Además, dados $F in cal(F)\(X\)$ y $U in tau_X$ tales que $F subset.eq U$ definimos $ [F, U] = {B in cal(F)\(X\) | F subset.eq B subset.eq U} $
]
  Demuestre que:
  + La colección $cal(B) = {[F, U] | F in cal(F)\(X\), U in tau_X and F subset.eq U}$ es base para alguna topología en $cal(F)\(X\)$. Denotaremos esa topología con $tau_cal(F)$.

  #proof[

    Necesitamos demostrar las siguientes propiedades para afirmar que $cal(B)$ es base: 
    + $union cal(B) = cal(F)\(X\)$
    + $forall B_1, B_2 in cal(B)$ y cualquier $C in B_1 inter B_2, exists B_3 in cal(B)(C in B_3 subset.eq B_1 inter B_2)$

    #af([$union cal(B) = cal(F)(X)$])[
    $subset.eq$: 

    Trivialmente, podemos ver que si $x in B in cal(B)$, entonces $x in union cal(B)$ y a la vez, como $x in [F, U]$ para algunas $F, U$, entonces $x in cal(F)(X)$. $therefore union cal(B) subset.eq cal(F)(X)$.

    $supset.eq$: 
        
    Sea $B in cal(F)(X)$, entonces $U$ es finito y no vacío. Y tomemos pues $F = B, U = X$, notemos que $F$ sí es cerrado, y a su vez que $X$ es abierto y claramente $F subset.eq X$; finalmente $B in [F, U] in cal(B)$, por lo tanto, $B in [F, U] subset.eq union cal(B)$. $therefore cal(F) subset.eq union cal(B)$.
    ]
    
    #af([$forall B_1, B_2 in cal(B)$ y cualquier $C in B_1 inter B_2, exists B_3 in cal(B)$])[
      Sean $B_1, B_2 in cal(B)$ y $C in B_1 inter B_2$, así se cumple simultáneamente que $C in [F_1, U_1], [F_2, U_2]$, es decir, simultáneamente $F_1 subset.eq C subset.eq U_1, F_2 subset.eq C subset.eq U_2$. Ahora, entonces fijémonos en que pasa con los siguientes dos conjuntos: 

      - $F_3 = F_1 union F_2$, como es union finita de conjuntos finitos no vacíos, entonces también es finito y no vacío y por lo tanto $F_3 in cal(F)(X)$. Además $F_3 subset.eq C$.
      - $U_3 = U_1 inter U_2$, como es intersección finita de abiertos es abierto en $X$, y además cumple que, dado que $C$ es subconjunto de $U_1, U_2$, entonces $C subset.eq U_3$.

      Finalmente, podemos ver que $F_3 subset.eq C subset.eq U_3 ==> C in [F_3, U_3] in cal(B)$, con claro está $B_3 subset.eq B_1 inter B_2$. Dado que $forall F in B_3 ( F_1, F_2 subset.eq F_3 subset.eq F subset.eq U_3 subset.eq U_1, U_2)$, es decir, $F in [F_1, U_1], [F_2, U_2]$.
    ]

    Usando ambas afirmaciones pues, tenemos que $cal(B)$ es base para $tau_cal(F)$.
  ]

#pagebreak()
  2. $[F, U]$ es un conjunto abierto y cerrado en $tau_cal(F)$.
  #proof[

    Por definición de las bases, tenemos pues que, con $cal(B)$ nuestra base, entonces nuestra topología se verá cómo: 
    $ tau_cal(F) = {W subset.eq cal(F)(X) : W = union_(i in I) [F_i, U_i]} $
    O bien, podemos verlo como: $ tau_cal(F) = {W subset.eq cal(F)(X) : forall x in W, exists F in cal(F)(X), U in tau_X " tal que " F subset.eq x subset.eq U " y " [F, U] subset.eq W} $
    #af([$[F, U] in tau_cal(F)$])[
      Podemos notar fácilmente que $[F, U] = union {[F, U]}$, lo que implica que $[F, U] in tau_cal(F)$.
    ]
    #af([$cal(F)(X) without [F, U] in tau_cal(F)$ es decir $[F, U]$ es cerrado.])[
      Sea $W in cal(F)(X) without [F, U]$. Tenemos entonces dos opciones, $F subset.eq.not W or W subset.eq.not U$.
      
      - $F subset.eq.not W$: Así, $exists x in F$ tal que $x in.not W$. Con esto, vemos que ${x} in cal(F)(X)$ es cerrado, y entonces $X without {x}$ es abierto, con lo que podemos tomarnos pues $[W, X without {x}]$, y claramente $W in [W, X without {x}]$. Esto a su vez, que cualquier conjunto $A in [W, X without {x}]$ cumple que $x in.not A$, con esto, $A in.not [F, U]$, es decir, $[F, U] inter [W, X without {x}] = emptyset$, finalmente: $ [W, X without {x}] subset.eq cal(F)(X) without [F, U] $
      - $W subset.eq.not U$: Así, $exists w in W$ tal que $w in.not U$. Tomemos, $[W, X]$. Si se da que $exists A in [W, X] inter [F, U]$, entonces $A subset.eq U and A subset.eq W$, es decir $w in A and w in U$, lo cual es una contradicción. Es decir: $ [W, X] subset.eq cal(F)(X) without [F, U] $
    ]
    Con la primera afirmación encontramos que $[F, U]$ es abierto, mientras que con la segunda, pudimos construir un abierto que se queda contenido en su complemento, con lo que entonces $[F, U]$ es cerrado. Finalmente, se cumple lo que buscábamos, es cerrado y abierto de manera simultánea.
  ]
  3. ${F}$ es abierto en $tau_cal(F)$ si y solo si $F$ es abierto en $tau_X$.
  #proof[
    - $==>$: Suponemos ${F}$ abierto en $tau_cal(F)$
    Así, existe una $B in cal(B)$ tal que $F in B subset.eq {F}$, entonces $B = {F}$, así ${F} = B = [A, U]$ con $A in cal(F)(X) and U in tau_X$ que a la vez cumple $A subset.eq F subset.eq U$. Nos podemos preguntar ahora cual es la relación entre $F$ y $U$. 
    Digamos que $F != U$, entonces $exists f in U without F$ (recordemos que $F subset.eq U$), entonces, como $F in cal(F)(X)$ entonces $F union {f} in cal(F)(X)$ y a su vez $F union {f} subset.eq U$, con lo que $A subset.eq F union {f} subset.eq U$, lo que a su vez indica que $F union {x} = F$ lo que es una contradicción, por lo tanto: $ U subset.eq F ==> U = F ==> F in tau_X $

    - $<==$: Suponemos $F in tau_X$. 
    Como también $F in cal(F)(X)$, entonces podemos tomar $[F, F]$, esto cumple claramente que $F in [F, F]$, con lo que podemos además añadir que ${F} = [F, F] in cal(B)$, cumple que también ${[F, F]}$ es una familia en $cal(B)$ cuya unión cumple ${F} = union {[F, F]} in tau_cal(F)$, con lo que terminamos.${F}$ es abierto en $tau_cal(F)$.

  ]


#pagebreak()
#ex(none)[
  Demuestre que $RR$ no se puede ver como la unión numerable de intervalos cerrados y acotados ajenos dos a dos.
]

#proof[

  Si $RR = U_(n=1)^infinity [a_n, b_n]$, podemos fijarnos en las fronteras de los intervalos, y ver como se comporta esta covertura al rededor de ellos. Entonces, tomemos $I = {a_n : n in NN} union {b_n: n in NN}$, observemos también que no hay elementos que sean inicio y final de cualesquiera dos invervalos de manera simultánea a no ser claro, que tengamos un invervalo puntual. Además, como $I$ es unión finita de numerables, es numerable. 
a
  #af([Cerradura de $I$])[ 
    Sea $x in RR without I$, entonces, para algún $m in NN$, se tiene que $x in (a_m, b_m)$, dado que los intervalos cubren. Entonces, por apertura de los intervalos en $RR$ con la topología inducida por la métrica, entonces, $exists epsilon > 0 ((x - epsilon, x+epsilon) subset.eq (a_m, b_m))$, y como los intervalos son ajenos dos a dos, la bola de $x$ no le pega a ningún otro intervalo, es decir, $(x- epsilon, x + epsilon) inter I = emptyset$. 

    Con lo que $RR without I$ es abierto y por lo tanto $I$ es *cerrado*.
  ]
  #af([Densidad de $I$])[
    Sea $x in I$, sin perder generalidad, digamos que $x = a_m$ para alguna $m$, y supondremos, para demostrar por contradicción, que $exists epsilon ((x - epsilon, x + epsilon) inter I = {x})$. 

    Tomemos ahora un abierto aún más pequeño, $(x - epsilon, x) subset (x - epsilon, x + epsilon)$, donde claramente no vive $x$, y por lo tanto $(x - epsilon, x) inter I = emptyset$. 

    Como los intervalos cubren, entonces, $forall y in (x - epsilon, x), exists k in NN$ tal que $y in [a_k, b_k]$, y a la vez, $y < x$, lo que implica pues que $a_k <= y <= b_k < x$, es decir $b_k in (x - epsilon, x + epsilon) without {x}$, o lo que es lo mismo:
    $ ((x - epsilon, x + epsilon) without {x}) inter I != emptyset$ lo que es una contradicción, y por lo tanto, $I$ es *denso*.
  ]
  Con ambas afirmaciones se cumplen entonces las hipótesis del @thm1, y por lo tanto, $I$ no es numerable, entonces, *$RR$ no se puede ver como la unión numerable de intervalos cerrados y acotados ajenos dos a dos*.
]
#pagebreak()
#ex(none)[
  Sean $\(X, tau\)$ un espacio topológico y $cal(B)_0$ una base para $tau$ de tamaño mínimo y finita, es decir, si $cal(B)$ es base para $tau$, entonces $|cal(B_0)| <= |cal(B)|$. Demuestre que $cal(B)_0$ es minimal respecto a la contención, es decir, si $cal(B)$ es base, entonces $cal(B)_0 subset.eq cal(B)$.
]

#proof[

  Sea $B$ base, tal que existe una $U in B_0$ tal que $U in.not B$.

  Ahora, como $U in B_0 subset.eq tau$ y por hipótesis, $B$ es base, entonces existe una colección finita de $V_i in B$ tal que $U = union V_i$.

  Y por como pedimos a $U$ entonces ninguna $V_i = U$, lo que implica a su vez que $forall i (V_i subset.neq U)$. A su vez, como todos los elementos de cualquier base son abiertos, entonces $V_i in tau$, lo que implica que podemos constuir una familia de $W_(i, j) in B_0$ para todo $j$ tales que $V_i = union_(j) W_(i, j)$. 

  Con esto, nos tomamos la familia ${W_(i, j), forall j, i} subset.eq B_0$ y que a su vez, cumple que $union_i union_j W_(i, j) = U in B_0$, entonces, $B_0 without U$ sigue siendo base, y lamentablemente $| B_o without U | < |B_0|$, con lo que por lo tanto: $ B_0 "no era minimal" $

  Lo que es una contradicción y finalmente $B_0 subset.eq B$ para toda $B$ base.
]
