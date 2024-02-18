Now for some programming. We are now at the end of the third session, which means we
have covered about a quarter of the material we are going to. Moreover, the material we have
covered so far is the basis for everything that follows, so it is vital that you understand it
properly. And the only way to really get to grips with Prolog is to write programs (lots of
them!), run them, fix them when they don't work, and then write some more. Learning a
programming language is a lot like learning a foreign language: you have to get out there and
actually use it if you want to make genuine progress.

So here are some exercises for you to try your hand on. 

1. Imagine that the following knowledge base describes a maze. The facts determine
which points are connected, i.e., from which point you can get to which other point in
one step. Furthermore, imagine that all paths are one-way streets, so that you can only
walk them in one direction. So, you can get from point 1 to point 2, but not the other
way round. 

```prolog
connected(1,2).
connected(3,4).
connected(5,6).
connected(7,8).
connected(9,10).
connected(12,13). 
connected(13,14).
connected(15,16).
connected(17,18).
connected(19,20).
connected(4,1).
connected(6,3).
connected(4,7).
connected(6,11).
connected(14,9).
connected(11,15).
connected(16,12).
connected(14,17).
connected(16,19).
```

Write a predicate `path/2` that tells you from which point in the maze you can get to
which other point when chaining together connections given in the above knowledge
base. Can you get from point 5 to point 10? Which other point can you get to when
starting in point 1? And which points can be reached from point 13?

---

Code:
```prolog
path(X, Y) :- connected(X, Y).

path(X, Y) :-
    connected(X, Z),
    path(Z, Y).
```

Can you get from point 5 to point 10?

```
3 ?- trace.
true.
```

Which other point can you get to when starting in point 1?

```
[debug] 4 ?- path(1, X).
X = 2 ;
false.
```

Which points can be reached from point 13?

```prolog
[debug] 5 ?- path(13, X).
X = 14 ;
X = 9 ;
X = 17 ;
X = 10 ;
X = 18 ;
false.
```