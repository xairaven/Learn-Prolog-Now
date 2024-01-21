```prolog
% Infering. Rule's body containing a fact from knowledge base
?- playsAirGuitar(mia).
true.

% Modus ponens.
% playsAirGuitar(yolanda) <-- listensToMusic(yolanda) <-- happy(yolanda)
% happy(yolanda) -- A fact from the knowledge base.
?- playsAirGuitar(yolanda).
true.
```