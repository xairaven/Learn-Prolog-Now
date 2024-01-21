```prolog
?- woman(mia).
true.

?- playsAirGuitar(jody).
true.

?- playsAirGuitar(mia).
false.

?- playsAirGuitar(vincent).
false.

?- tatooed(jody).
ERROR: Unknown procedure: tatooed/1 (DWIM could not correct goal)

?- party.
true.

?- rockConcert.
ERROR: Unknown procedure: rockConcert/0 (DWIM could not correct goal)
```