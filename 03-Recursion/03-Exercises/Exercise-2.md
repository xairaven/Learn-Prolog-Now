Define a predicate greater_than/2 that takes two numerals in the notation
that we introduced in this lecture (i.e. 0, succ(0), succ(succ(0)) ...) as arguments
and decides whether the first one is greater than the second one. E.g: 

```
?- greater_than(succ(succ(succ(0))),succ(0)).
yes
?- greater_than(succ(succ(0)),succ(succ(succ(0)))).
no
```

Code:
```prolog
greater_than(succ(_), 0).

greater_than(succ(X), succ(Y)) :-
    greater_than(X, Y).
```

Results:
```
2 ?- greater_than(succ(succ(succ(0))),succ(0)).                                                        
true.

3 ?- greater_than(succ(succ(0)),succ(succ(succ(0)))).
false.
```