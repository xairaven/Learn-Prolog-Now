```prolog
?- add(succ(succ(succ(0))), succ(succ(0)), R).
R = succ(succ(succ(succ(succ(0))))).

?- trace.
true.

[trace]  ?- add(succ(succ(succ(0))), succ(succ(0)), R).
   Call: (10) add(succ(succ(succ(0))), succ(succ(0)), _18932) ? creep
   Call: (11) add(succ(succ(0)), succ(succ(0)), _20292) ? creep
   Call: (12) add(succ(0), succ(succ(0)), _21110) ? creep
   Call: (13) add(0, succ(succ(0)), _21928) ? creep
   Exit: (13) add(0, succ(succ(0)), succ(succ(0))) ? creep
   Exit: (12) add(succ(0), succ(succ(0)), succ(succ(succ(0)))) ? creep
   Exit: (11) add(succ(succ(0)), succ(succ(0)), succ(succ(succ(succ(0))))) ? creep
   Exit: (10) add(succ(succ(succ(0))), succ(succ(0)), succ(succ(succ(succ(succ(0)))))) ? creep
R = succ(succ(succ(succ(succ(0))))).
```

Trace by hand:
```prolog
add(0, Y, Y).
add(succ(X), Y, succ(Z)) :-
    add(X, Y, Z).

?- add(succ(succ(succ(0))), succ(succ(0)), R).

add(succ(succ(succ(0))), succ(succ(0)), R).
2 -> add(succ(succ(0)), succ(succ(0)), Z1).
    * Z1 = succ(Z2), X = succ(succ(0))
2 -> add(succ(0), succ(succ(0)), Z2).
    * Z2 = succ(Z3), X = succ(0)
2 -> add(0, succ(succ(0)), Z3).
    * X = 0, going to execute recursion base
1 -> add(0, succ(succ(0)), succ(succ(0))).
    * Z3 = succ(succ(0))
    * Going up through recursion tree!
1 -> add(succ(0), succ(succ(0)), succ(succ(succ(0))))
    * Z2 = succ(Z3) = succ(succ(succ(0))), X = succ(0)
1 -> add(succ(succ(0)), succ(succ(0)), succ(succ(succ(succ(0)))))
    * Z1 = succ(Z2) = succ(succ(succ(succ(0)))), X = succ(succ(0))
1 -> add(succ(succ(succ(0))), succ(succ(0)), succ(succ(succ(succ(succ(0))))))
    * R = succ(Z1) = succ(succ(succ(succ(succ(0))))), X = succ(succ(succ(0)))

R = succ(succ(succ(succ(succ(0)))))
```