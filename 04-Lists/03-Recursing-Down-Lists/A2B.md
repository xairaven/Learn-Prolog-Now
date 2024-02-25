Code:

```prolog
a2b([], []).
a2b([a | TailA], [b | TailB]) :- a2b(TailA, TailB).
```

Results:

```prolog
2 ?- a2b([a,a,a],[b,b,b]).
true.

3 ?- a2b([a,a,a,a],[b,b,b]). 
false.

4 ?- a2b([a,c,a,a],[b,b,5,4]).
false.

5 ?- a2b(X,[b,b,b,b]). 
X = [a, a, a, a].

[trace] 6 ?- a2b(X,[b,b,b,b]). 
   Call: (10) a2b(_20952, [b, b, b, b]) ? creep
   Call: (11) a2b(_22304, [b, b, b]) ? creep
   Call: (12) a2b(_23120, [b, b]) ? creep
   Call: (13) a2b(_23936, [b]) ? creep
   Call: (14) a2b(_24752, []) ? creep
   Exit: (14) a2b([], []) ? creep
   Exit: (13) a2b([a], [b]) ? creep
   Exit: (12) a2b([a, a], [b, b]) ? creep
   Exit: (11) a2b([a, a, a], [b, b, b]) ? creep
   Exit: (10) a2b([a, a, a, a], [b, b, b, b]) ? creep
X = [a, a, a, a].
```