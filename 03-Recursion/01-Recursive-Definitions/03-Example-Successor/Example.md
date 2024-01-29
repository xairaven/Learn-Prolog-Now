```prolog
?- numeral(succ(succ(succ(0)))).
true.

?- trace.
true.

[trace]  ?- numeral(succ(succ(succ(0)))).
   Call: (10) numeral(succ(succ(succ(0)))) ? creep
   Call: (11) numeral(succ(succ(0))) ? creep
   Call: (12) numeral(succ(0)) ? creep
   Call: (13) numeral(0) ? creep
   Exit: (13) numeral(0) ? creep
   Exit: (12) numeral(succ(0)) ? creep
   Exit: (11) numeral(succ(succ(0))) ? creep
   Exit: (10) numeral(succ(succ(succ(0)))) ? creep
true.
```