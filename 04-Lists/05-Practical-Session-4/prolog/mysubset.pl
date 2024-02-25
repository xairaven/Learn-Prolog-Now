member(X, [X | _]).
member(X, [_ | T]) :- member(X, T).

mysubset([], _).
mysubset([Head1 | Tail1], List2) :- 
    member(Head1, List2),
    mysubset(Tail1, List2).