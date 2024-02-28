Code:

```prolog
rev(L, R) :- accRev(L, [], R).

accRev([H|T], A, R) :- accRev(T, [H|A], R).
accRev([], A, A).
```

Queries:

```prolog
2 ?- rev([a, b, c, d], List) 
.
List = [d, c, b, a].

3 ?- rev([a, b, c, d], List).
List = [d, c, b, a].

3 ?- trace.
true.

[trace] 3 ?- rev([a, b, c, d], List).
   Call: (10) rev([a, b, c, d], _17674) ? creep
   Call: (11) accRev([a, b, c, d], [], _17674) ? creep
   Call: (12) accRev([b, c, d], [a], _17674) ? creep
   Call: (13) accRev([c, d], [b, a], _17674) ? creep
   Call: (14) accRev([d], [c, b, a], _17674) ? creep
   Call: (15) accRev([], [d, c, b, a], _17674) ? creep
   Exit: (15) accRev([], [d, c, b, a], [d, c, b, a]) ? creep
   Exit: (14) accRev([d], [c, b, a], [d, c, b, a]) ? creep
   Exit: (13) accRev([c, d], [b, a], [d, c, b, a]) ? creep
   Exit: (12) accRev([b, c, d], [a], [d, c, b, a]) ? creep
   Exit: (11) accRev([a, b, c, d], [], [d, c, b, a]) ? creep
   Exit: (10) rev([a, b, c, d], [d, c, b, a]) ? creep
List = [d, c, b, a].
```