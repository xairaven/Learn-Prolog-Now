Code:

```prolog
member(X, [X | T]).
member(X, [H | T]) :- member(X, T).
```

Results:

```prolog
6 ?- member(yolanda,[yolanda,trudy,vincent,jules]).
true ;
false.

6 ?-  member(vincent,[yolanda,trudy,vincent,jules]).
true ;
false.

7 ?- member(zed,[yolanda,trudy,vincent,jules]).
false.

9 ?- member(X,[yolanda,trudy,vincent,jules]). 
X = yolanda ;
X = trudy ;
X = vincent ;
X = jules ;
false.
```