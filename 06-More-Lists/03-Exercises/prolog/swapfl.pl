swapfl(List1, List2) :-
    append([First | Mid], [Last], List1),
    append([Last | Mid], [First], List2).