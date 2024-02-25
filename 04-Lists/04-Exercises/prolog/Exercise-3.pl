twice([], []).
twice([Element | TailA], [Element, Element | TailB]) :-
    twice(TailA, TailB).