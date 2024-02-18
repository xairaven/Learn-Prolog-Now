In the lecture, we saw the predicate

```prolog
descend(X,Y) :- child(X,Y).
descend(X,Y) :- 
    child(X,Z),
    descend(Z,Y).
```

Could we have formulated this predicate as follows?

```prolog
descend(X,Y) :- child(X,Y).
descend(X,Y) :- 
    descend(X,Z),
    descend(Z,Y).
```

Compare the declarative and the procedural meaning of this predicate definition.
Hint: What happens when you ask the query descend(rose, martha)?

---

No, we can't formulate this predicate like following.

Declarative: True when Y is directly under X or if there exists a Z such that Y is a descendant of Z, and Z is a descendant of X.

Procedural: Check if Y is not a direct child of X, and if so, examine whether any descendants of X include Y.

Results of query:
```
2 ?- descend(rose, martha).                                                                            
ERROR: Stack limit (1.0Gb) exceeded
ERROR:   Stack sizes: local: 0.9Gb, global: 84.2Mb, trail: 0Kb
ERROR:   Stack depth: 11,030,285, last-call: 0%, Choice points: 3
ERROR:   Probable infinite recursion (cycle):
ERROR:     [11,030,285] user:descend(rose, _22071306)
ERROR:     [11,030,284] user:descend(rose, _22071326)
3 ?- trace.
true.

[trace] 3 ?- descend(rose, martha).
   Call: (10) descend(rose, martha) ? creep
   Call: (11) child(rose, martha) ? creep
   Fail: (11) child(rose, martha) ? creep
   Redo: (10) descend(rose, martha) ? creep
   Call: (11) descend(rose, _7462) ? creep
   Call: (12) child(rose, _7462) ? creep
   Fail: (12) child(rose, _7462) ? creep
   Redo: (11) descend(rose, _7462) ? creep
   Call: (12) descend(rose, _10704) ? creep
   Call: (13) child(rose, _10704) ? creep
   Fail: (13) child(rose, _10704) ? break
% Break level 1
```

That's the infinite loop.