leng(List,Length) :- accLen(List,0,Length).

accLen([_|T], A, L) :- Anew is A+1, accLen(T, Anew, L).
accLen([], A, A).