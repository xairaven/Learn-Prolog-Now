A palindrome is a word or phrase that spells the same forwards and backwards.
For example, 'rotator', 'eve', and 'nursesrun' are all palindromes. Write a
predicate `palindrome(List)`, which checks whether List is a palindrome. For
example, to the queries:

```prolog
?- palindrome([r,o,t,a,t,o,r]).
```

and

```prolog
?- palindrome([n,u,r,s,e,s,r,u,n]).
```

Prolog should respond 'yes', but to the query 

```prolog
?- palindrome([n,o,t,h,i,s]).
```

Prolog should respond 'no'.

---

Code:

```prolog
palindrome(List) :- rev(List, List).

rev(L, R) :- accRev(L, [], R).

accRev([H|T], A, R) :- accRev(T, [H|A], R).
accRev([], A, A).
```

Results:

```prolog
2 ?- palindrome([r,o,t,a,t,o,r]).
true.

3 ?- palindrome([n,u,r,s,e,s,r,u,n]).
true.

4 ?- palindrome([n,o,t,h,i,s]).
false.
```