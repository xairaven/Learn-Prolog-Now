member(X, [X | _]).
member(X, [_ | T]) :- member(X, T).

mysuperset(_, []).
mysuperset(List1, [Head2 | Tail2]) :- 
    member(Head2, List1),
    mysuperset(List1, Tail2).