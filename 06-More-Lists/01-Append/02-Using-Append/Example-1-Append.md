Queries:

```prolog
2 ?- append(X,Y,[a,b,c,d]). 
X = [],
Y = [a, b, c, d] ;
X = [a],
Y = [b, c, d] ;
X = [a, b],
Y = [c, d] ;
X = [a, b, c],
Y = [d] ;
X = [a, b, c, d],
Y = [] ;
false.
```