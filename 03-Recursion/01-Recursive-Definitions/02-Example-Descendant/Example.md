```prolog
?- descend(martha, rose).
true.

?- trace.
true.

[trace]  ?- descend(martha, rose).
   Call: (10) descend(martha, rose) ? creep
   Call: (11) child(martha, rose) ? creep
   Fail: (11) child(martha, rose) ? creep
   Redo: (10) descend(martha, rose) ? creep
   Call: (11) child(martha, _25452) ? creep
   Exit: (11) child(martha, charlotte) ? creep
   Call: (11) descend(charlotte, rose) ? creep
   Call: (12) child(charlotte, rose) ? creep
   Fail: (12) child(charlotte, rose) ? creep
   Redo: (11) descend(charlotte, rose) ? creep
   Call: (12) child(charlotte, _30314) ? creep
   Exit: (12) child(charlotte, caroline) ? creep
   Call: (12) descend(caroline, rose) ? creep
   Call: (13) child(caroline, rose) ? creep
   Fail: (13) child(caroline, rose) ? creep
   Redo: (12) descend(caroline, rose) ? creep
   Call: (13) child(caroline, _35176) ? creep
   Exit: (13) child(caroline, laura) ? creep
   Call: (13) descend(laura, rose) ? creep
   Call: (14) child(laura, rose) ? creep
   Exit: (14) child(laura, rose) ? creep
   Exit: (13) descend(laura, rose) ? creep
   Exit: (12) descend(caroline, rose) ? creep
   Exit: (11) descend(charlotte, rose) ? creep
   Exit: (10) descend(martha, rose) ? creep
true .
```