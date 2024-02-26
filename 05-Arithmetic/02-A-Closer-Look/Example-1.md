Queries:

```prolog
2 ?- X = 3+2.
X = 3+2.

3 ?- 3+2*5 = X.
X = 3+2*5.

4 ?- X is 6+2. 
X = 8.

5 ?- 6+2 is X.
ERROR: Arguments are not sufficiently instantiated
ERROR: In:
ERROR:   [10] 6+2 is _25114
ERROR:    [9] toplevel_call(user:user: ...) at c:/program files/swipl/boot/toplevel.pl:1173

7 ?- add_3_and_double(X,12).
ERROR: Arguments are not sufficiently instantiated
ERROR: In:
ERROR:   [11] 12 is (_7196+3)*2
ERROR:    [9] toplevel_call(user:user: ...) at c:/program files/swipl/boot/toplevel.pl:1173
ERROR:
ERROR: Note: some frames are missing due to last-call optimization.
ERROR: Re-run your program in debug mode (:- debug.) to get more detail.

7 ?- is(X,+(3,2)).
X = 5.
```