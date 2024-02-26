Queries:

```prolog
[trace] 3 ?- accLen([a,b,c],0,L). 
   Call: (10) accLen([a, b, c], 0, _15108) ? creep
   Call: (11) _16454 is 0+1 ? creep
   Exit: (11) 1 is 0+1 ? creep
   Call: (11) accLen([b, c], 1, _15108) ? creep
   Call: (12) _18896 is 1+1 ? creep
   Exit: (12) 2 is 1+1 ? creep
   Call: (12) accLen([c], 2, _15108) ? creep
   Call: (13) _21338 is 2+1 ? creep
   Exit: (13) 3 is 2+1 ? creep
   Call: (13) accLen([], 3, _15108) ? creep
   Exit: (13) accLen([], 3, 3) ? creep
   Exit: (12) accLen([c], 2, 3) ? creep
   Exit: (11) accLen([b, c], 1, 3) ? creep
   Exit: (10) accLen([a, b, c], 0, 3) ? creep
L = 3.

[trace] 5 ?- leng([a,b,c,d,e,[a,b],g],X).
   Call: (10) leng([a, b, c, d, e, [a, b], g], _30082) ? creep
   Call: (11) accLen([a, b, c, d, e, [a, b], g], 0, _30082) ? creep
   Call: (12) _32324 is 0+1 ? creep
   Exit: (12) 1 is 0+1 ? creep
   Call: (12) accLen([b, c, d, e, [a, b], g], 1, _30082) ? creep
   Call: (13) _34766 is 1+1 ? creep
   Exit: (13) 2 is 1+1 ? creep
   Call: (13) accLen([c, d, e, [a, b], g], 2, _30082) ? creep
   Call: (14) _37208 is 2+1 ? creep
   Exit: (14) 3 is 2+1 ? creep
   Call: (14) accLen([d, e, [a, b], g], 3, _30082) ? creep
   Call: (15) _39650 is 3+1 ? creep
   Exit: (15) 4 is 3+1 ? creep
   Call: (15) accLen([e, [a, b], g], 4, _30082) ? creep
   Call: (16) _42092 is 4+1 ? creep
   Exit: (16) 5 is 4+1 ? creep
   Call: (16) accLen([[a, b], g], 5, _30082) ? creep
   Call: (17) _44534 is 5+1 ? creep
   Exit: (17) 6 is 5+1 ? creep
   Call: (17) accLen([g], 6, _30082) ? creep
   Call: (18) _46976 is 6+1 ? creep
   Exit: (18) 7 is 6+1 ? creep
   Call: (18) accLen([], 7, _30082) ? creep
   Exit: (18) accLen([], 7, 7) ? creep
   Exit: (17) accLen([g], 6, 7) ? creep
   Exit: (16) accLen([[a, b], g], 5, 7) ? creep
   Exit: (15) accLen([e, [a, b], g], 4, 7) ? creep
   Exit: (14) accLen([d, e, [a, b], g], 3, 7) ? creep
   Exit: (13) accLen([c, d, e, [a, b], g], 2, 7) ? creep
   Exit: (12) accLen([b, c, d, e, [a, b], g], 1, 7) ? creep
   Exit: (11) accLen([a, b, c, d, e, [a, b], g], 0, 7) ? creep
   Exit: (10) leng([a, b, c, d, e, [a, b], g], 7) ? creep
X = 7.
```