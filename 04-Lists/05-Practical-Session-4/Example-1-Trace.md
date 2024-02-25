First, systematically carry out a number of traces on `a2b/2` to make sure you fully understand
how it works. In particular: 

1. Trace some examples, not involving variables, that succeed. E.g., trace the 
query `a2b([a,a,a,a],[b,b,b,b])` and relate the output to the discussion in the text.

```prolog
3 ?- trace.
true.

[trace] 3 ?- a2b([a,a,a,a],[b,b,b,b]).
   Call: (10) a2b([a, a, a, a], [b, b, b, b]) ? creep
   Call: (11) a2b([a, a, a], [b, b, b]) ? creep
   Call: (12) a2b([a, a], [b, b]) ? creep
   Call: (13) a2b([a], [b]) ? creep
   Call: (14) a2b([], []) ? creep
   Exit: (14) a2b([], []) ? creep
   Exit: (13) a2b([a], [b]) ? creep
   Exit: (12) a2b([a, a], [b, b]) ? creep
   Exit: (11) a2b([a, a, a], [b, b, b]) ? creep
   Exit: (10) a2b([a, a, a, a], [b, b, b, b]) ? creep
true.
```

2. Trace some simple examples that fail. Try examples involving lists of different lengths
(such as `a2b([a,a,a,a],[b,b,b])`) and examples involving symbols other than `a`
and `b` (such as `a2b([a,c,a,a],[b,b,5,4])`).

```prolog
[trace] 3 ?- a2b([a,a,a,a],[b,b,b]).
   Call: (10) a2b([a, a, a, a], [b, b, b]) ? creep
   Call: (11) a2b([a, a, a], [b, b]) ? creep
   Call: (12) a2b([a, a], [b]) ? creep
   Call: (13) a2b([a], []) ? creep
   Fail: (13) a2b([a], []) ? creep
   Fail: (12) a2b([a, a], [b]) ? creep
   Fail: (11) a2b([a, a, a], [b, b]) ? creep
   Fail: (10) a2b([a, a, a, a], [b, b, b]) ? creep
false.

[trace] 4 ?- a2b([a,c,a,a],[b,b,5,4]).
   Call: (10) a2b([a, c, a, a], [b, b, 5, 4]) ? creep
   Call: (11) a2b([c, a, a], [b, 5, 4]) ? creep
   Fail: (11) a2b([c, a, a], [b, 5, 4]) ? creep
   Fail: (10) a2b([a, c, a, a], [b, b, 5, 4]) ? creep
false.
```

3. Trace some examples involving variables. For example, try tracing
`a2b([a,a,a,a], X).` and `a2b(X,[b,b,b,b]).`

```prolog
[trace] 5 ?- a2b([a,a,a,a], X).
   Call: (10) a2b([a, a, a, a], _7166) ? creep
   Call: (11) a2b([a, a, a], _8526) ? creep
   Call: (12) a2b([a, a], _9342) ? creep
   Call: (13) a2b([a], _10158) ? creep
   Call: (14) a2b([], _10974) ? creep
   Exit: (14) a2b([], []) ? creep
   Exit: (13) a2b([a], [b]) ? creep
   Exit: (12) a2b([a, a], [b, b]) ? creep
   Exit: (11) a2b([a, a, a], [b, b, b]) ? creep
   Exit: (10) a2b([a, a, a, a], [b, b, b, b]) ? creep
X = [b, b, b, b].

[trace] 6 ?- a2b(X,[b,b,b,b]).
   Call: (10) a2b(_238, [b, b, b, b]) ? creep
   Call: (11) a2b(_1598, [b, b, b]) ? creep
   Call: (12) a2b(_2414, [b, b]) ? creep
   Call: (13) a2b(_3230, [b]) ? creep
   Call: (14) a2b(_4046, []) ? creep
   Exit: (14) a2b([], []) ? creep
   Exit: (13) a2b([a], [b]) ? creep
   Exit: (12) a2b([a, a], [b, b]) ? creep
   Exit: (11) a2b([a, a, a], [b, b, b]) ? creep
   Exit: (10) a2b([a, a, a, a], [b, b, b, b]) ? creep
X = [a, a, a, a].
```

4. Make sure you understand what happens when both arguments in the query are
variables. For example, carry out a trace on the query `a2b(X,Y).`

```prolog
[trace] 7 ?- a2b(X,Y).
   Call: (10) a2b(_210, _212) ? creep
   Exit: (10) a2b([], []) ? creep
X = Y, Y = [] .
```

5. Carry out a series of similar traces involving member. That is, carry out traces involving
simple queries that succeed (such as `member(a,[1,2,a,b])`), simple queries that fail
(such as `member(z,[1,2,a,b])`), and queries involving variables (such as 
`member(X,[1,2,a,b])`). In all cases, make sure that you understand why the recursion halts.

```prolog
[trace] 3 ?- member(a,[1,2,a,b]).
   Call: (10) member(a, [1, 2, a, b]) ? creep
   Call: (11) member(a, [2, a, b]) ? creep
   Call: (12) member(a, [a, b]) ? creep
   Exit: (12) member(a, [a, b]) ? creep
   Exit: (11) member(a, [2, a, b]) ? creep
   Exit: (10) member(a, [1, 2, a, b]) ? creep
true ;
   Redo: (12) member(a, [a, b]) ? creep
   Call: (13) member(a, [b]) ? creep
   Call: (14) member(a, []) ? creep
   Fail: (14) member(a, []) ? creep
   Fail: (13) member(a, [b]) ? creep
   Fail: (12) member(a, [a, b]) ? creep
   Fail: (11) member(a, [2, a, b]) ? creep
   Fail: (10) member(a, [1, 2, a, b]) ? creep
false.

[trace] 3 ?- member(z,[1,2,a,b]).
   Call: (10) member(z, [1, 2, a, b]) ? creep
   Call: (11) member(z, [2, a, b]) ? creep
   Call: (12) member(z, [a, b]) ? creep
   Call: (13) member(z, [b]) ? creep
   Call: (14) member(z, []) ? creep
   Fail: (14) member(z, []) ? creep
   Fail: (13) member(z, [b]) ? creep
   Fail: (12) member(z, [a, b]) ? creep
   Fail: (11) member(z, [2, a, b]) ? creep
   Fail: (10) member(z, [1, 2, a, b]) ? creep
false.

[trace] 5 ?- member(X,[1,2,a,b]).
   Call: (10) member(_5400, [1, 2, a, b]) ? creep
   Exit: (10) member(1, [1, 2, a, b]) ? creep
X = 1 ;
   Redo: (10) member(_5400, [1, 2, a, b]) ? creep
   Call: (11) member(_5400, [2, a, b]) ? creep
   Exit: (11) member(2, [2, a, b]) ? creep
   Exit: (10) member(2, [1, 2, a, b]) ? creep
X = 2 ;
   Redo: (11) member(_5400, [2, a, b]) ? creep
   Call: (12) member(_5400, [a, b]) ? creep
   Exit: (12) member(a, [a, b]) ? creep
   Exit: (11) member(a, [2, a, b]) ? creep
   Exit: (10) member(a, [1, 2, a, b]) ? creep
X = a ;
   Redo: (12) member(_5400, [a, b]) ? creep
   Call: (13) member(_5400, [b]) ? creep
   Exit: (13) member(b, [b]) ? creep
   Exit: (12) member(b, [a, b]) ? creep
   Exit: (11) member(b, [2, a, b]) ? creep
   Exit: (10) member(b, [1, 2, a, b]) ? creep
X = b ;
   Redo: (13) member(_5400, [b]) ? creep
   Call: (14) member(_5400, []) ? creep
   Fail: (14) member(_5400, []) ? creep
   Fail: (13) member(_5400, [b]) ? creep
   Fail: (12) member(_5400, [a, b]) ? creep
   Fail: (11) member(_5400, [2, a, b]) ? creep
   Fail: (10) member(_5400, [1, 2, a, b]) ? creep
false.
```