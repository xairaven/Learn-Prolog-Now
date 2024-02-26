1. Define a 2-place predicate `increment` that holds only when its second
argument is an integer one larger than its first argument. For example,
`increment(4,5)` should hold, but `increment(4,6)` should not.

Code:

```prolog
increment(A, B) :- B - A =:= 1.
```

Results:

```prolog
3 ?- increment(2, 3). 
true.

4 ?- increment(2, 4). 
false.
```

---

2. Define a 3-place predicate `sum` that holds only when its third argument is
the sum of the first two arguments. For example, `sum(4,5,9)` should
hold, but `sum(4,6,12)` should not.

Code:

```prolog
sum(A, B, Sum) :- Sum is A + B.
```

Results:

```prolog
6 ?- sum(4, 6, 12).
false.

7 ?- sum(4, 5, 9).  
true.
```