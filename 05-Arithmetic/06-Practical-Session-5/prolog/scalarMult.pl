scalarMult(Int, [], []).
scalarMult(Int, List, ResultList) :-
    List = [InitHead | InitTail],
    ResultList = [ResultHead | ResultTail],
    ResultHead is InitHead * Int,
    scalarMult(Int, InitTail, ResultTail).