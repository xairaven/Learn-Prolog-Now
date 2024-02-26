Queries:

```prolog
[trace] 3 ?- append([a, b, c], [1, 2, 3], X).  
   Call: (10) append([a, b, c], [1, 2, 3], _260) ? creep
   Call: (11) append([b, c], [1, 2, 3], _1660) ? creep
   Call: (12) append([c], [1, 2, 3], _2480) ? creep
   Call: (13) append([], [1, 2, 3], _3300) ? creep
   Exit: (13) append([], [1, 2, 3], [1, 2, 3]) ? creep
   Exit: (12) append([c], [1, 2, 3], [c, 1, 2, 3]) ? creep
   Exit: (11) append([b, c], [1, 2, 3], [b, c, 1, 2, 3]) ? creep
   Exit: (10) append([a, b, c], [1, 2, 3], [a, b, c, 1, 2, 3]) ? creep
X = [a, b, c, 1, 2, 3].
```