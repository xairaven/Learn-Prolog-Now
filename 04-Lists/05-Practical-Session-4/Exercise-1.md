1. Write a predicate `mysubset/2` that takes two lists (of constants) as arguments and
checks, whether the first list is a subset of the second.

Code:

```prolog
member(X, [X | _]).
member(X, [_ | T]) :- member(X, T).

mysubset([], _).
mysubset([Head1 | Tail1], List2) :- 
    member(Head1, List2),
    mysubset(Tail1, List2).
```

Results:

```prolog
2 ?- mysubset([a, b, c, d], [q, w, a, e, r, b, t, c, y, d]).
true ;
false.

3 ?- mysubset([a, b,       m,       c, d], [q, w, a, e, r, b, t, c, y, d]). 
false.
```