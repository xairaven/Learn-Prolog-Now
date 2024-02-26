How does Prolog respond to the following queries?

```
1. X = 3*4.
2. X is 3*4.
3. 4 is X.
4. X = Y.
5. 3 is 1+2.
6. 3 is +(1,2).
7. 3 is X+2.
8. X is 1+2.
9. 1+2 is 1+2.
10. is(X,+(1,2)).
11. 3+2 = +(3,2).
12. *(7,5) = 7*5.
13. *(7,+(3,2)) = 7*(3+2).
14. *(7,(3+2)) = 7*(3+2).
15. *(7,(3+2)) = 7*(+(3,2)).
```

Results:

```prolog
1) ?- X = 3*4.
X = 3*4.

2) ?- X is 3*4.
X = 12.

3) ?- 4 is X.
ERROR: Arguments are not sufficiently instantiated
ERROR: In:
ERROR:   [10] 4 is _1104
ERROR:    [9] toplevel_call('<garbage_collected>') at c:/program files/swipl/boot/toplevel.pl:1173

4) ?- X = Y.
X = Y.

5) ?- 3 is 1+2.
true.

6) ?- 3 is +(1,2).
true.

7) ?- 3 is X+2.
ERROR: Arguments are not sufficiently instantiated
ERROR: In:
ERROR:   [10] 3 is _7528+2
ERROR:    [9] toplevel_call(user:user: ...) at c:/program files/swipl/boot/toplevel.pl:1173

8) ?- X is 1+2.
X = 3.

9) ?- 1+2 is 1+2.
false.

10) ?- is(X,+(1,2)).
X = 3.

11) ?- 3+2 = +(3,2).
true.

12) ?- *(7,5) = 7*5.
true.

13) ?- *(7,+(3,2)) = 7*(3+2).
true.

14) ?- *(7,(3+2)) = 7*(3+2).
true.

15) ?- *(7,(3+2)) = 7*(+(3,2)).
true.
```