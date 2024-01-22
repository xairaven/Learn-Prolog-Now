Suppose we are working with the following knowledge base:

```prolog
wizard(ron).
hasWand(harry).
quidditchPlayer(harry).
wizard(X) :- hasBroom(X),hasWand(X).
hasBroom(X) :- quidditchPlayer(X).
```

How does Prolog respond to the following queries?

1. wizard(ron).         --> **true**
2. witch(ron).          --> **Undefined Procedure**
3. wizard(hermione).    --> **false**
4. witch(hermione).     --> **Undefined Procedure**
5. wizard(harry).       --> **true**
6. wizard(Y).           --> **harry** ; **ron**
7. witch(Y).            --> **Undefined Procedure**