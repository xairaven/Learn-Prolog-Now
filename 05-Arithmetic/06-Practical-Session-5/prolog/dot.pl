dot(List1, List2, Result) :- dotAccum(List1, List2, 0, Result).

dotAccum([], [], Accumulator, Result) :- Result is Accumulator.
dotAccum(List1, List2, Accumulator, Result) :-
    List1 = [Head1 | Tail1],
    List2 = [Head2 | Tail2],
    Temp = Accumulator + Head1 * Head2,
    dotAccum(Tail1, Tail2, Temp, Result).