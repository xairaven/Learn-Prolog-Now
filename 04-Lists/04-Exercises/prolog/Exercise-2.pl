tran(eins, one).
tran(zwei, two).
tran(drei, three).
tran(vier, four).
tran(fuenf, five).
tran(sechs, six).
tran(sieben, seven).
tran(acht, eight).
tran(neun, nine).

listtran([], []).
listtran([WordLang1 | TailA], [WordLang2 | TailB]) :- 
    tran(WordLang1, WordLang2),
    listtran(TailA, TailB). 