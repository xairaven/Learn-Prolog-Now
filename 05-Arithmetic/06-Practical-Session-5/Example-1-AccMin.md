In the text we discussed the 3-place predicate `accMax` which returned the
maximum of a list of integers. By changing the code slightly, turn this into a 3-place
predicate `accMin` which returns the minimum of a list of integers.

Code:

```prolog
min(List, Min) :-
    List = [H|_],
    accMin(List, H, Min).

accMin([H|T], A, Min) :-
    H < A,
    accMin(T, H, Min).
   
accMin([H|T], A, Min) :-
    H >= A,
    accMin(T, A, Min).
   
accMin([], A, A).
```

Results:

```prolog
2 ?- min([1,2,46,53],X).   
X = 1.

3 ?- min([-11,-2,-7,-4,-12],X). 
X = -12 ;
false.
```