happy(vincent).
listensToMusic(butch).

% Logical AND (Logical Conjunction)
playsAirGuitar(vincent) :-
    listensToMusic(vincent),
    happy(vincent).

% Logical OR (Logical Disjunction)
playsAirGuitar(butch) :-
    happy(butch).
playsAirGuitar(butch) :-
    listensToMusic(butch).