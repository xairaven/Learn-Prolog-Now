Code:

```prolog
naiverev([], []).
naiverev([H|T], R) :- naiverev(T, RevT), append(RevT, [H], R).
```

Queries:

```prolog
2 ?- naiverev([a,b,c,d], L).
L = [d, c, b, a].

3 ?- trace.
true.

[trace] 3 ?- naiverev([a,b,c,d], L).
   Call: (10) naiverev([a, b, c, d], _16932) ? creep
   Call: (11) naiverev([b, c, d], _18278) ? creep
   Call: (12) naiverev([c, d], _19090) ? creep
   Call: (13) naiverev([d], _19902) ? creep
   Call: (14) naiverev([], _20714) ? creep
   Exit: (14) naiverev([], []) ? creep
   Call: (14) lists:append([], [d], _19902) ? creep
   Exit: (14) lists:append([], [d], [d]) ? creep
   Exit: (13) naiverev([d], [d]) ? creep
   Call: (13) lists:append([d], [c], _19090) ? creep
   Exit: (13) lists:append([d], [c], [d, c]) ? creep
   Exit: (12) naiverev([c, d], [d, c]) ? creep
   Call: (12) lists:append([d, c], [b], _18278) ? creep
   Exit: (12) lists:append([d, c], [b], [d, c, b]) ? creep
   Exit: (11) naiverev([b, c, d], [d, c, b]) ? creep
   Call: (11) lists:append([d, c, b], [a], _16932) ? creep
   Exit: (11) lists:append([d, c, b], [a], [d, c, b, a]) ? creep
   Exit: (10) naiverev([a, b, c, d], [d, c, b, a]) ? creep
L = [d, c, b, a].
```