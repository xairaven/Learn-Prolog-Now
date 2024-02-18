4. Extend the predicate travel/3 so that it not only tells you via which other cities you
have to go to get from one place to another, but also how, i.e. by car, train, or plane,
you get from one city to the next.

---

Code:
```prolog
travel(X, Y, go(byCar(X, Y))) :- byCar(X, Y).
travel(X, Y, go(byTrain(X, Y))) :- byTrain(X, Y).
travel(X, Y, go(byPlane(X, Y))) :- byPlane(X, Y).

travel(X, Y, go(byCar(X, Z), G)) :-
    byCar(X, Z),
    travel(Z, Y, G).

travel(X, Y, go(byTrain(X, Z), G)) :-
    byTrain(X, Z),
    travel(Z, Y, G).

travel(X, Y, go(byPlane(X, Z), G)) :-
    byPlane(X, Z),
    travel(Z, Y, G).
```

Queries:

```prolog
3 ?- travel(valmont,losAngeles,X).
X = go(byCar(valmont, saarbruecken), go(byTrain(saarbruecken, paris), go(byPlane(paris, losAngeles)))) ;
X = go(byCar(valmont, metz), go(byTrain(metz, paris), go(byPlane(paris, losAngeles)))) ;
false.
```