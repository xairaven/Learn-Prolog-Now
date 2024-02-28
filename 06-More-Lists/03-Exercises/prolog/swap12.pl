swap12(List1, List2) :- 
    List1 = [X, Y | Tail],
    List2 = [Y, X | Tail].