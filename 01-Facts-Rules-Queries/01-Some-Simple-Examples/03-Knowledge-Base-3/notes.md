Also you can use semicolon for logical disjunction (OR):

```prolog
playsAirGuitar(butch):-
    happy(butch);
    listensToMusic(butch). 
```

Instead of writing several rules:

```prolog
playsAirGuitar(butch) :-
    happy(butch).
playsAirGuitar(butch) :-
    listensToMusic(butch).
```