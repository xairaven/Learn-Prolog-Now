Queries:

```prolog
2 ?- prefix([a,b,c,d], L).  
L = [a, b, c, d|_].

3 ?- prefix(P, [a,b,c,d]). 
P = [] ;
P = [a] ;
P = [a, b] ;
P = [a, b, c] ;
P = [a, b, c, d] ;
false.
```