Having done this, try the following.

1. Write a 3-place predicate `combine1` which takes three lists as arguments and combines
the elements of the first two lists into the third as follows:

```prolog
?- combine1([a,b,c],[1,2,3],X).

X = [a,1,b,2,c,3]

?- combine1([foo,bar,yip,yup],[glub,glab,glib,glob], Result).

Result = [foo,glub,bar,glab,yip,glib,yup,glob]
```

CODE:

```prolog
combine([], [], []).
combine([A | TailA], [B | TailB], [A, B | TailC]) :-
    combine(TailA, TailB, TailC).
```

Results:

```prolog
2 ?- combine1([a,b,c],[1,2,3],X). 
X = [a, 1, b, 2, c, 3].

3 ?- combine1([foo,bar,yip,yup],[glub,glab,glib,glob], Result).
Result = [foo, glub, bar, glab, yip, glib, yup, glob].
```

---

2. Now write a 3-place predicate `combine2` which takes three lists as arguments and
combines the elements of the first two lists into the third as follows:

```prolog
?- combine2([a,b,c],[1,2,3],X).

X = [[a,1],[b,2],[c,3]]

?- combine2([foo,bar,yip,yup],[glub,glab,glib,glob], Result).

Result = [[foo,glub],[bar,glab],[yip,glib],[yup,glob]]
```

CODE:

```prolog
combine2([], [], []).
combine2([A | TailA], [B | TailB], [[A, B] | TailC]) :-
    combine2(TailA, TailB, TailC).
```

Results:

```prolog
2 ?- combine2([a,b,c],[1,2,3],X).
X = [[a, 1], [b, 2], [c, 3]].

3 ?- combine2([foo,bar,yip,yup],[glub,glab,glib,glob], Result).
Result = [[foo, glub], [bar, glab], [yip, glib], [yup, glob]].
```

---

3. Finally, write a 3-place predicate `combine3` which takes three lists as arguments and
combines the elements of the first two lists into the third as follows:

```prolog
?- combine3([a, b, c], [1, 2, 3], X).

X = [join(a, 1), join(b, 2), join(c, 3)]

?- combine3([foo, bar, yip, yup], [glub, glab, glib, glob], R).

R = [join(foo, glub), join(bar, glab), join(yip, glib), join(yup, glob)]
```

CODE:

```prolog
combine3([], [], []).
combine3([A | TailA], [B | TailB], [join(A, B) | TailC]) :-
    combine3(TailA, TailB, TailC).
```

Results:

```prolog
6 ?- combine3([a, b, c], [1, 2, 3], X).
X = [join(a, 1), join(b, 2), join(c, 3)].

7 ?- combine3([foo, bar, yip, yup], [glub, glab, glib, glob], R).
R = [join(foo, glub), join(bar, glab), join(yip, glib), join(yup, glob)].
```