```prolog
2 ?- [Head | Tail] = [mia, vincent, jules, yolanda].
Head = mia,
Tail = [vincent, jules, yolanda].

2 ?- [X|Y] = []. 
false.

6 ?- [X,Y | W] = [[], dead(zed), [2, [b, chopper]], [], Z]. 
X = [],
Y = dead(zed),
W = [[2, [b, chopper]], [], Z].

7 ?- [X1,X2,X3,X4 | Tail] = [[], dead(zed), [2, [b, chopper]], [], Z].
X1 = X4, X4 = [],
X2 = dead(zed),
X3 = [2, [b, chopper]],
Tail = [Z].

8 ?- [_,X,_,Y|_] = [[], dead(zed), [2, [b, chopper]], [], Z]. 
X = dead(zed),
Y = [].

9 ?- [_,_,[_|X]|_] =[[], dead(zed), [2, [b, chopper]], [], Z, [2, [b, chopper]]].
X = [[b, chopper]].
```