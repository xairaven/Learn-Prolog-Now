2. We are given the following knowledge base of travel information:

```prolog
byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(losAngeles,auckland).
```

Write a predicate `travel/2` which determines whether it is possible to travel from one
place to another by "chaining together" car, train, and plane journeys. For example,
your program should answer "yes" to the query `travel(valmont,raglan)`.

---

Code:
```prolog
accessible(X, Y) :- byCar(X, Y) ; byTrain(X, Y) ; byPlane(X, Y).

travel(X, Y) :- accessible(X, Y).
travel(X, Y) :- 
    accessible(X, Z),
    travel(Z, Y).
```

Answer:

```prolog
2 ?- travel(valmont, raglan).                                                                                   
true .
```