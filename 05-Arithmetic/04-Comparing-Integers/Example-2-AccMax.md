Queries:

```prolog
[trace] 3 ?- accMax([1,0,5,4], 0, Max).
   Call: (10) accMax([1, 0, 5, 4], 0, _16240) ? creep
   Call: (11) 1>0 ? creep
   Exit: (11) 1>0 ? creep
   Call: (11) accMax([0, 5, 4], 1, _16240) ? creep
   Call: (12) 0>1 ? creep
   Fail: (12) 0>1 ? creep
   Redo: (11) accMax([0, 5, 4], 1, _16240) ? creep
   Call: (12) 0=<1 ? creep
   Exit: (12) 0=<1 ? creep
   Call: (12) accMax([5, 4], 1, _16240) ? creep
   Call: (13) 5>1 ? creep
   Exit: (13) 5>1 ? creep
   Call: (13) accMax([4], 5, _16240) ? creep
   Call: (14) 4>5 ? creep
   Fail: (14) 4>5 ? creep
   Redo: (13) accMax([4], 5, _16240) ? creep
   Call: (14) 4=<5 ? creep
   Exit: (14) 4=<5 ? creep
   Call: (14) accMax([], 5, _16240) ? creep
   Exit: (14) accMax([], 5, 5) ? creep
   Exit: (13) accMax([4], 5, 5) ? creep
   Exit: (12) accMax([5, 4], 1, 5) ? creep
   Exit: (11) accMax([0, 5, 4], 1, 5) ? creep
   Exit: (10) accMax([1, 0, 5, 4], 0, 5) ? creep
Max = 5 .

[debug] 4 ?- accMax([-11,-2,-7,-4,-12],0,Max). 
Max = 0.

[debug] 6 ?- max([1,2,46,53,0],X).
X = 53 ;
false.

[debug] 7 ?- max([-11,-2,-7,-4,-12],X).
X = -2 .
```