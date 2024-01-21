% Clauses

% Facts
listensToMusic(mia).
happy(yolanda).

% Rules (predicates, procedures)
playsAirGuitar(mia) :- listensToMusic(mia).
playsAirGuitar(yolanda) :- listensToMusic(yolanda).
listensToMusic(yolanda) :- happy(yolanda).