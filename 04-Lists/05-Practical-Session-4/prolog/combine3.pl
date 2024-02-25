combine3([], [], []).
combine3([A | TailA], [B | TailB], [join(A, B) | TailC]) :-
    combine3(TailA, TailB, TailC).