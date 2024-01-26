```prolog
?- trace.
true.

[trace]  ?- k(X).
   Call: (10) k(_17348) ? creep
   Call: (11) f(_17348) ? creep
   Exit: (11) f(a) ? creep
   Call: (11) g(a) ? creep
   Exit: (11) g(a) ? creep
   Call: (11) h(a) ? creep
   Fail: (11) h(a) ? creep
   Redo: (11) f(_17348) ? creep
   Exit: (11) f(b) ? creep
   Call: (11) g(b) ? creep
   Exit: (11) g(b) ? creep
   Call: (11) h(b) ? creep
   Exit: (11) h(b) ? creep
   Exit: (10) k(b) ? creep
X = b.

[trace]  ?- notrace.
true.
```