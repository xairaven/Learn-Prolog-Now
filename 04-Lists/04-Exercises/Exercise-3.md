Write a predicate `twice(In,Out)` whose left argument is a list, and whose right
argument is a list consisting of every element in the left list written twice. For
example, the query

```prolog
twice([a,4,buggle],X).
```

should return

```prolog
X = [a,a,4,4,buggle,buggle].
```

And the query

```prolog
twice([1,2,1,1],X).
```

should return

```prolog
X = [1,1,2,2,1,1,1,1].
```

Hint: to answer this question, first ask yourself "What should happen when the
first argument is the empty list?". That's the base case. For non-empty lists, think
about what you should do with the head, and use recursion to handle the tail.

---

Code:

```prolog
twice([], []).
twice([Element | TailA], [Element, Element | TailB]) :-
    twice(TailA, TailB).
```

Results:

```prolog
2 ?- twice([a,4,buggle],X).
X = [a, a, 4, 4, buggle, buggle].

3 ?- twice([1,2,1,1],X).
X = [1, 1, 2, 2, 1, 1, 1, 1].
```