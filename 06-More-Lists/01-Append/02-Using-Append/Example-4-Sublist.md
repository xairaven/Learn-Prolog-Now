Queries:

```prolog
2 ?- sublist(List, [a, b, c, d]).
List = [] ;
List = [a] ;
List = [a, b] ;
List = [a, b, c] ;
List = [a, b, c, d] ;
List = [] ;
List = [b] ;
List = [b, c] ;
List = [b, c, d] ;
List = [] ;
List = [c] ;
List = [c, d] ;
List = [] ;
List = [d] ;
List = [] ;
false.
```