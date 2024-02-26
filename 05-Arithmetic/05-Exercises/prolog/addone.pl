addone([], []).
addone([InitialHead | InitialTail], [ResultHead | ResultTail]) :-
    ResultHead is InitialHead + 1,
    addone(InitialTail, ResultTail).