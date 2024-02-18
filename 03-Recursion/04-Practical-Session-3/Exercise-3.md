3. So, by using `travel/2` to query the above database, you can find out that it is possible
to go from Vamont to Raglan. In case you are planning a travel, that's already very
good information, but what you would then really want to know is how exactly to get
from Valmont to Raglan. Write a predicate `travel/3` which tells you how to travel
from one place to another. The program should, e.g., answer "yes" to the query 
`travel(valmont,paris,go(valmont,metz,go(metz,paris)))` and 
`X = go(valmont,metz,go(metz,paris,go(paris,losAngeles)))` to the query
`travel(valmont,losAngeles,X)`.

---

Code:
```prolog
accessible(X, Y) :- byCar(X, Y) ; byTrain(X, Y) ; byPlane(X, Y).

travel(X, Y, go(X, Y)) :- accessible(X, Y).
travel(X, Y, go(X, Z, G)) :- 
    accessible(X, Z),
    travel(Z, Y, G).
```

Queries:

```prolog
2 ?- travel(valmont,paris,go(valmont,metz,go(metz,paris))).
true ;
false.
```

```prolog
3 ?- travel(valmont,losAngeles,X).
X = go(valmont, saarbruecken, go(saarbruecken, paris, go(paris, losAngeles))) ;
X = go(valmont, metz, go(metz, paris, go(paris, losAngeles))) ;
false.
```