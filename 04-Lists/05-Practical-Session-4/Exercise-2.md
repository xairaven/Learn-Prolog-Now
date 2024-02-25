2. Write a predicate `mysuperset/2` that takes two lists as arguments and checks, whether
the first list is a superset of the second.

Code:

```prolog
member(X, [X | _]).
member(X, [_ | T]) :- member(X, T).

mysuperset(_, []).
mysuperset(List1, [Head2 | Tail2]) :- 
    member(Head2, List1),
    mysuperset(List1, Tail2).
```

Results:

```prolog
2 ?- mysuperset([q, w, a, e, r, b, t, c, y, d], [a, b, c, d]).
true ;
false.

3 ?- mysuperset([q, w, a, e, r, b, t, c, y, d], [a, b, c, d, m]). 
false.
```