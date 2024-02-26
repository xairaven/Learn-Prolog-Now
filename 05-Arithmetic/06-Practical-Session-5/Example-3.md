Another fundamental operation on vectors is the `dot product`. This operation combines
two vectors of the same dimension and yields a number as a result. The operation is
carried out as follows: the corresponding elements of the two vectors are multiplied,
and the results added. For example, the dot product of `[2,5,6]` and `[3,4,1]` is `6+20+6`, 
that is, `32`. Write a 3-place predicate `dot` whose first argument is a list of integers,
whose second argument is a list of integers of the same length as the first, and whose
third argument is the dot product of the first argument with the second. For example,
the query:

```prolog
dot([2,5,6],[3,4,1],Result).
```

should yield

```prolog
Result = 32
```

---

Code:

```prolog
dot(List1, List2, Result) :- dotAccum(List1, List2, 0, Result).

dotAccum([], [], Accumulator, Result) :- Result is Accumulator.
dotAccum(List1, List2, Accumulator, Result) :-
    List1 = [Head1 | Tail1],
    List2 = [Head2 | Tail2],
    Temp = Accumulator + Head1 * Head2,
    dotAccum(Tail1, Tail2, Temp, Result).
```

Results:

```prolog
8 ?- dot([2,5,6],[3,4,1],Result).
Result = 32.
```