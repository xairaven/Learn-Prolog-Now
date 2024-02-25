Suppose we are given a knowledge base with the following facts:

```prolog
tran(eins, one).
tran(zwei, two).
tran(drei, three).
tran(vier, four).
tran(fuenf, five).
tran(sechs, six).
tran(sieben, seven).
tran(acht, eight).
tran(neun, nine).
```

Write a predicate `listtran(G, E)` which translates a list of German number
words to the corresponding list of English number words. For example:

```prolog
listtran([eins,neun,zwei],X).
```

should give: 

```prolog
X = [one,nine,two].
```

Your program should also work in the other direction. For example, if you give it
the query 

```prolog
listtran(X,[one,seven,six,two]).
```

it should return: 

```prolog
X = [eins,sieben,sechs,zwei].
```

Hint: to answer this question, first ask yourself "How do I translate the empty list
of number words?". That's the base case. For non-empty lists, first translate the
head of the list, then use recursion to translate the tail.

---

Code:

```prolog
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
```

Results:

```prolog
[debug] 8 ?- listtran([eins,neun,zwei],X).
X = [one, nine, two].

[debug] 9 ?- listtran(X,[one,seven,six,two]).
X = [eins, sieben, sechs, zwei].

4 ?- listtran([sieben, neun], [seven, nine]). 
true.

5 ?- listtran([sieben, neun], X).             
X = [seven, nine].

6 ?- trace.
true.

[trace] 6 ?- listtran([sieben, neun], X).
   Call: (10) listtran([sieben, neun], _36536) ? creep
   Call: (11) tran(sieben, _37860) ? creep
   Exit: (11) tran(sieben, seven) ? creep
   Call: (11) listtran([neun], _37862) ? creep
   Call: (12) tran(neun, _40296) ? creep
   Exit: (12) tran(neun, nine) ? creep
   Call: (12) listtran([], _40298) ? creep
   Exit: (12) listtran([], []) ? creep
   Exit: (11) listtran([neun], [nine]) ? creep
   Exit: (10) listtran([sieben, neun], [seven, nine]) ? creep
X = [seven, nine].
```