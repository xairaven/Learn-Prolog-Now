Queries:

```prolog
2 ?- 2 < 4.
true.

3 ?- 2 =< 4. 
true.

4 ?- 4 =< 4. 
true.

5 ?- 4=:=4. 
true.

6 ?- 4=\=5. 
true.

7 ?- 4=\=4. 
false.

8 ?- 4 >= 4. 
true.

9 ?- 4 > 2. 
true.

10 ?- 2 < 4+1. 
true.

11 ?- 2+1 < 4. 
true.

12 ?- 2+1 < 3+2. 
true.

13 ?- 4=4. 
true.

14 ?- 2+2 =4. 
false.

15 ?- 2+2 =:= 4.
true.

16 ?- X < 3.
ERROR: Arguments are not sufficiently instantiated
ERROR: In:
ERROR:   [10] _1102<3
ERROR:    [9] toplevel_call('<garbage_collected>') at c:/program files/swipl/boot/toplevel.pl:1173

17 ?- X =:= X.
ERROR: Arguments are not sufficiently instantiated
ERROR: In:
ERROR:   [10] _1802=:=_1804
ERROR:    [9] toplevel_call(user:user: ...) at c:/program files/swipl/boot/toplevel.pl:1173

18 ?- X = 3, X < 4.
X = 3.

19 ?- X = b, X < 4.
ERROR: Arithmetic: `b/0' is not a function
ERROR: In:
ERROR:   [11] b<4
ERROR:    [9] toplevel_call(user:user: ...) at c:/program files/swipl/boot/toplevel.pl:1173
ERROR:
ERROR: Note: some frames are missing due to last-call optimization.
ERROR: Re-run your program in debug mode (:- debug.) to get more detail.
```