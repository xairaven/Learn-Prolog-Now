min(List, Min) :-
    List = [H|_],
    accMin(List, H, Min).

accMin([H|T], A, Min) :-
    H < A,
    accMin(T, H, Min).
   
accMin([H|T], A, Min) :-
    H >= A,
    accMin(T, A, Min).
   
accMin([], A, A).