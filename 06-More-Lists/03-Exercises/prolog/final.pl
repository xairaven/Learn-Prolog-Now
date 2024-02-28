final(X, List) :-
    rev(List, [X | _]).

rev(L, R) :- accRev(L, [], R).

accRev([H|T], A, R) :- accRev(T, [H|A], R).
accRev([], A, A).