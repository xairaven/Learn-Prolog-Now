Write a predicate `addone/2` whose first argument is a list of integers, and whose
second argument is the list of integers obtained by adding 1 to each integer in
the first list. For example, the query

```prolog
addone([1, 2, 7, 2], X).
```

should give

```prolog
X = [2,3,8,3].
```

---

Code:

```prolog
addone([], []).
addone([InitialHead | InitialTail], [ResultHead | ResultTail]) :-
    ResultHead is InitialHead + 1,
    addone(InitialTail, ResultTail).
```

Results:

```prolog
9 ?- addone([1, 2, 7, 2], X).
X = [2, 3, 8, 3].
```