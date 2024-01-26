```prolog
?- food(bread,X) = food(Y,sausage).
X = sausage,
Y = bread

?- g(X,Y) = Y.
Y = g(X, Y)

% \= succeeds when its two arguments do not unify
?- a \= b.
true.
```