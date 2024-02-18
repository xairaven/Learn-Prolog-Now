We have the following knowledge base:

```prolog
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(fahlquemont,stAvold).
directTrain(stAvold,forbach).
directTrain(saarbruecken,dudweiler).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).
```

That is, this knowledge base holds facts about towns it is possible to travel
between by taking a direct train. But of course, we can travel further by
`chaining together' direct train journeys. Write a recursive predicate
travelBetween/2 that tells us when we can travel by train between two
towns. For example, when given the query 

```prolog
travelBetween(nancy, saarbruecken).
```

it should reply `yes'.

It is, furthermore, plausible to assume that whenever it is possible to take a
direct train from A to B, it is also possible to take a direct train from B to A. Can
you encode this in Prolog? You program should e.g. answer `yes' to the following
query: 

```prolog
travelBetween(saarbruecken,nancy).
```

Do you see any problems you program may run into?

---

Travel in one way:

```prolog
travelBetween(X, Y) :- directTrain(X, Y).

travelBetween(X, Y) :-
    directTrain(X, Z),
    travelBetween(Z, Y).
```

Two-way:

```prolog
travelBetween(X, Y) :- directTrain(X, Y) ; directTrain(Y, X).

travelBetween(X, Y) :-
    directTrain(X, Z),
    travelBetween(Z, Y).

travelBetween(X, Y) :-
    directTrain(Y, Z),
    travelBetween(Z, X).
```

Possible problems: Infinite loop.