We can use arithmetic operations when we define predicates.

```prolog
add_3_and_double(X,Y) :- Y is (X+3)*2.

3 ?- add_3_and_double(1, Y).
Y = 8.
```