combine1([], [], []).
combine1([A | TailA], [B | TailB], [A, B | TailC]) :-
    combine1(TailA, TailB, TailC).