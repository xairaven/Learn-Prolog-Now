Do you know these wooden Russian dolls, where smaller ones are contained in
bigger ones?
First, write a knowledge base using the predicate directlyIn/2 which encodes
which doll is directly contained in which other doll. Then, define a (recursive)
predicate in/2, that tells us which doll is (directly or indirectly) contained in
which other doll. E.g. the query in(katarina,natasha) should evaluate to
true, while in(olga, katarina) should fail.

```prolog
directlyIn(katarina, olga).
directlyIn(olga, natasha).
directlyIn(natasha, irina).

in(X, Y) :- directlyIn(X, Y).

in(X, Y) :- 
    directlyIn(X, Z),
    in(Z, Y).
```

Results:
```
2 ?- in(katarina, natasha).                                                                            
true ;
false.

3 ?- in(natasha, olga).     
false.
```