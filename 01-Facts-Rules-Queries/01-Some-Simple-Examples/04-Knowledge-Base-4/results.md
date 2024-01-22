```prolog
% Semicolon -- logical OR (disjunction).
?- woman(X).
X = mia ;
X = jody ;
X = yolanda.

% Comma -- logical AND (conjunction).
?- loves(marcellus, X), woman(X).
X = mia
```