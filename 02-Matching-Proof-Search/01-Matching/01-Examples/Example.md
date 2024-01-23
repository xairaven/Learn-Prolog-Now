```prolog
% The =/2 predicate tests whether its two arguments match.

?- =(mia, mia).
true.

?- =(mia, vincent).
false.

% Using infix notation (put the = functor between its arguments)
?- mia = mia.
true.

?- mia = vincent.
false.

?- someAtom = 'someAtom'.
true.

% '2' --> atom, 2 --> number.
?- 2 = '2'.
false.

% Comparing atom with a variable
?- X = mia, X == mia.
X = mia. % That's "true" ???

?- X = mia, X == vincent.
false.

?- Y = X.
Y = X.

?- X = mia, X = vincent.
false.

?- kill(shoot(gun),Y) = kill(X,stab(knife)). 
Y = stab(knife),
X = shoot(gun).

?- kill(shoot(gun), stab(knife)) = kill(X,stab(Y)). 
X = shoot(gun),
Y = knife.

?- loves(X,X) = loves(marcellus,mia).
false.
```