combine2([], [], []).
combine2([A | TailA], [B | TailB], [[A, B] | TailC]) :-
    combine2(TailA, TailB, TailC).