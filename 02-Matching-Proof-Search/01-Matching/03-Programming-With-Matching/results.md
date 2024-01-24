```prolog
?- vertical(line(point(1,1),point(1,3))).
true.

?- vertical(line(point(2,1),point(1,3))).
false.

?- horizontal(line(point(1,1),point(2,Y))).
Y = 1.

% _ --> Any X, with Y = 3
?- horizontal(line(point(2,3),P)).
P = point(_, 3)
```