greater_than(succ(_), 0).

greater_than(succ(X), succ(Y)) :-
    greater_than(X, Y).