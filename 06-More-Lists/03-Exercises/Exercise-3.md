1) Write a predicate `second(X,List)` which checks whether X is the second
element of `List`.

Code:

```prolog
second(X, [_, X | _]).
```

Results:

```prolog
2 ?- second(X, [a, b, c]). 
X = b.
```

---

2) Write a predicate `swap12(List1, List2)` which checks whether `List1`
is identical to `List2`, except that the first two elements are exchanged.

Code:

```prolog
swap12(List1, List2) :- 
    List1 = [X, Y | Tail],
    List2 = [Y, X | Tail].
```

Results:

```prolog
4 ?- swap12([a, b, c, d, e], [b, a, c, d, e]).
true.

5 ?- swap12([a, b, c, d, e], [a, b, c, d, e]). 
false.

6 ?- swap12([a, b, c, d, e], [b, a, c, d, e, e]). 
false.
```

---

3) Write a predicate `final(X, List)` which checks whether `X` is the last
element of `List`.

Code:

```prolog
final(X, List) :-
    rev(List, [X | _]).

rev(L, R) :- accRev(L, [], R).

accRev([H|T], A, R) :- accRev(T, [H|A], R).
accRev([], A, A).
```

Results:

```prolog
2 ?- final(a, [a, b, c, d, e]). 
false.

3 ?- final(s, [a, b, c, d, e, s]). 
true.
```

---

4) Write a predicate `toptail(InList,Outlist)` which says 'no' if
inlist is a list containing fewer than 2 elements, and which deletes the
first and the last elements of `Inlist` and returns the result as `Outlist`,
when `Inlist` is a list containing at least 2 elements. For example:

```prolog
toptail([a],T).
    no

toptail([a,b],T).
    T=[]

toptail([a,b,c],T).
    T=[b] 
```

Hint: here's where `append` comes in useful.

Code:

```prolog
toptail(InList, OutList) :-
    append([_ | OutList], [_], InList).
```

Results:

```prolog
2 ?- toptail([a],T).
false.

3 ?- toptail([a,b],T).
T = [] .

4 ?- toptail([a,b,c],T).
T = [b] ;
false.
```

---

5) Write a predicate `swapfl(List1, List2)` which checks whether `List1`
is identical to `List2`, except that the first and last elements are
exchanged. Hint: here's where `append` comes in useful again.

Code:

```prolog
swapfl(List1, List2) :-
    append([First | Mid], [Last], List1),
    append([Last | Mid], [First], List2).
```

Results:

```prolog
2 ?- swapfl([a, b, c, d], [d, b, c, a]).
true .

3 ?- swapfl([a, b, c, d], [d, b, c, s]). 
false.
```